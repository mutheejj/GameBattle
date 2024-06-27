.class public Lcom/sglib/easymobile/androidnative/media/DeviceGallery;
.super Ljava/lang/Object;
.source "DeviceGallery.java"


# static fields
.field public static final EXTRA_ALLOW_MULTI_SELECT_KEY:Ljava/lang/String; = "EXTRA_ALLOW_MULTI_SELECT"

.field public static final EXTRA_RESPONSE_KEY:Ljava/lang/String; = "EXTRA_RESPONSE"

.field public static PickImgFromGalleryListeners:Ljava/util/Dictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Dictionary<",
            "Ljava/lang/String;",
            "Lcom/sglib/easymobile/androidnative/media/listeners/IPickFromGalleryListener;",
            ">;"
        }
    .end annotation
.end field

.field private static responseKey:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 215
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->PickImgFromGalleryListeners:Ljava/util/Dictionary;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ContentResolverImageSaving(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 91
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p5, :cond_0

    const-string p5, "internal"

    .line 94
    invoke-static {p5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p5, "external_primary"

    .line 96
    invoke-static {p5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    .line 98
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "title"

    .line 99
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 100
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object p2, Lcom/sglib/easymobile/androidnative/media/DeviceGallery$1;->$SwitchMap$com$sglib$easymobile$androidnative$media$ImageFormat:[I

    invoke-virtual {p3}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->ordinal()I

    move-result v2

    aget p2, p2, v2

    const/4 v2, 0x1

    const-string v3, "mime_type"

    if-eq p2, v2, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "image/png"

    .line 106
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "image/jpeg"

    .line 103
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 111
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v4, "date_added"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v2, "date_modified"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p6, "relative_path"

    invoke-virtual {v1, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 117
    :try_start_0
    invoke-virtual {v0, p5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p5

    .line 118
    invoke-virtual {v0, p5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p6

    .line 119
    invoke-direct {p0, p1, p3, p6}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->WriteImageToOutputStream(Landroid/graphics/Bitmap;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Ljava/io/OutputStream;)V

    .line 120
    invoke-virtual {p6}, Ljava/io/OutputStream;->close()V

    .line 121
    invoke-static {p5}, Lcom/sglib/easymobile/androidnative/AppUtil;->GetRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p2}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p2}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This method only works from android 29"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static DeleteTemporaryImage(Ljava/lang/String;)V
    .locals 2

    .line 330
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, ".tmp"

    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 335
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private LegacyImageSaving(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 132
    sget-object p5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p5}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p5

    goto :goto_0

    .line 135
    :cond_0
    new-instance p5, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 136
    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p5, v1, p6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p6

    if-nez p6, :cond_1

    .line 140
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    move-result p6

    if-nez p6, :cond_1

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can not create directory:: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 148
    :cond_1
    :goto_0
    :try_start_0
    new-instance p6, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p6, p5, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    invoke-direct {p0, p1, p3, p2}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->WriteImageToOutputStream(Landroid/graphics/Bitmap;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Ljava/io/OutputStream;)V

    .line 151
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 152
    invoke-static {p6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->galleryAddPic(Landroid/net/Uri;)V

    .line 153
    invoke-virtual {p6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, v0, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static LoadFullSizeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 314
    invoke-static {p0}, Lcom/sglib/easymobile/androidnative/Helper;->IsNullOrEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-static {p0}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadFullSizeImageFromContentUri(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/Helper;->IsNullOrEmptyString(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 317
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadFullSizeImageFromAbsolutePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static LoadFullSizeImageFromAbsolutePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 348
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Orientation"

    .line 349
    invoke-virtual {v2, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .line 352
    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v2, :cond_0

    .line 355
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 357
    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static LoadFullSizeImageFromContentUri(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 369
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x18

    if-lt v1, v4, :cond_0

    .line 375
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p0, "Orientation"

    const/4 v2, 0x1

    .line 376
    invoke-virtual {v1, p0, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v2, v1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 378
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 381
    invoke-static {v0, v3}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static LoadThumbnailImage(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 297
    invoke-static {p0, p1}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadFullSizeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    int-to-float p1, p2

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 302
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 301
    invoke-static {p0, p2, p1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private WriteImageToOutputStream(Landroid/graphics/Bitmap;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Ljava/io/OutputStream;)V
    .locals 2

    .line 164
    sget-object v0, Lcom/sglib/easymobile/androidnative/media/DeviceGallery$1;->$SwitchMap$com$sglib$easymobile$androidnative$media$ImageFormat:[I

    invoke-virtual {p2}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 166
    :cond_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    return-void
.end method

.method private galleryAddPic(Landroid/net/Uri;)V
    .locals 2

    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 388
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    return-object p0

    .line 414
    :pswitch_0
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 410
    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 411
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 407
    :pswitch_2
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 403
    :pswitch_3
    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 404
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 399
    :pswitch_4
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 400
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 396
    :pswitch_5
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 393
    :pswitch_6
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 420
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 421
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 425
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public CheckExternalWritePermission()Z
    .locals 2

    .line 42
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public RequestExternalStorageWritePermission()V
    .locals 3

    .line 47
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x192

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public isExternalStorageReadable()Z
    .locals 2

    .line 194
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isExternalStorageWritable()Z
    .locals 2

    .line 185
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadImageFromAbsoluteUri(Ljava/lang/String;ILcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadThumbnailImage(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 281
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/Utilities;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 282
    invoke-interface {p3, v0, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public loadImageFromAbsoluteUri(Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 266
    :try_start_0
    invoke-static {v0, p1}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadFullSizeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/Utilities;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 268
    invoke-interface {p2, v0, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public loadImageFromContentUri(Ljava/lang/String;ILcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 252
    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadThumbnailImage(Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/Utilities;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 254
    invoke-interface {p3, v0, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public loadImageFromContentUri(Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    :try_start_0
    invoke-static {p1, v0}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LoadFullSizeImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 239
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/Utilities;->bitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p1

    .line 240
    invoke-interface {p2, v0, p1}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lcom/sglib/easymobile/androidnative/media/listeners/ILoadImageListener;->OnNativeImageLoaded(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public pick(ZLcom/sglib/easymobile/androidnative/media/listeners/IPickFromGalleryListener;)V
    .locals 3

    .line 217
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/sglib/easymobile/androidnative/media/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_ALLOW_MULTI_SELECT"

    .line 218
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    sget p1, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->responseKey:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->responseKey:I

    .line 220
    sget-object v1, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->PickImgFromGalleryListeners:Ljava/util/Dictionary;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget p1, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->responseKey:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "EXTRA_RESPONSE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 180
    invoke-virtual/range {v0 .. v6}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V

    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V
    .locals 7

    if-nez p5, :cond_2

    .line 57
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 59
    sget-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x192

    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-string p1, "Permission hasn\'t been granted yet."

    .line 62
    invoke-interface {p4, p1, v2}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->isExternalStorageReadable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "External storage isn\'t readable."

    .line 67
    invoke-interface {p4, p1, v2}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->isExternalStorageWritable()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "External storage isn\'t writable."

    .line 72
    invoke-interface {p4, p1, v2}, Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;->OnNativeImageSaved(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz p6, :cond_3

    .line 76
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    :cond_3
    sget-object p6, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p6}, Lcom/sglib/easymobile/androidnative/AppUtil;->GetApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p6

    :cond_4
    move-object v6, p6

    .line 80
    sget p6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p6, v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 81
    invoke-direct/range {v0 .. v6}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->ContentResolverImageSaving(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->LegacyImageSaving(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public saveImage(Ljava/lang/String;Ljava/lang/String;ILcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V
    .locals 7

    .line 229
    invoke-static {p1}, Lcom/sglib/easymobile/androidnative/media/Utilities;->decodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p3}, Lcom/sglib/easymobile/androidnative/media/ImageFormat;->fromInt(I)Lcom/sglib/easymobile/androidnative/media/ImageFormat;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sglib/easymobile/androidnative/media/DeviceGallery;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/sglib/easymobile/androidnative/media/ImageFormat;Lcom/sglib/easymobile/androidnative/media/listeners/ISaveImageListener;ZLjava/lang/String;)V

    return-void
.end method
