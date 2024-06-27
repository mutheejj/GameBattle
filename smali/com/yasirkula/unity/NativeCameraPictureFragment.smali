.class public Lcom/yasirkula/unity/NativeCameraPictureFragment;
.super Landroid/app/Fragment;
.source "NativeCameraPictureFragment.java"


# static fields
.field public static final AUTHORITY_ID:Ljava/lang/String; = "UNCP_AUTHORITY"

.field private static final CAMERA_PICTURE_CODE:I = 0x87718

.field public static final DEFAULT_CAMERA_ID:Ljava/lang/String; = "UNCP_DEF_CAMERA"

.field private static final IMAGE_NAME:Ljava/lang/String; = "IMG_camera.jpg"


# instance fields
.field private fileTargetPath:Ljava/lang/String;

.field private lastImageId:I

.field private final mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const v0, 0x7fffffff

    .line 29
    iput v0, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/NativeCameraMediaReceiver;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const v0, 0x7fffffff

    .line 29
    iput v0, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I

    .line 38
    iput-object p1, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "_id"

    const-string v2, "_size"

    const-string v3, "_data"

    const-string v4, "Exception:"

    const-string v5, "Unity"

    const v6, 0x87718

    move/from16 v7, p1

    if-eq v7, v6, :cond_0

    return-void

    :cond_0
    const/4 v6, -0x1

    const-string v7, ""

    const/4 v8, 0x0

    move/from16 v9, p2

    if-ne v9, v6, :cond_5

    .line 126
    new-instance v6, Ljava/io/File;

    iget-object v9, v1, Lcom/yasirkula/unity/NativeCameraPictureFragment;->fileTargetPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    iget v9, v1, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I

    int-to-long v9, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_4

    .line 135
    :try_start_0
    filled-new-array {v3, v2, v0}, [Ljava/lang/String;

    move-result-object v16

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    sget-object v15, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v17, "_id>?"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-string v19, "_id DESC"

    move-object/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_2

    .line 138
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 140
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 145
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 146
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 147
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v13, v15

    if-lez v0, :cond_1

    .line 154
    :try_start_2
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v11}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    :try_start_3
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v6, v8}, Lcom/yasirkula/unity/NativeCameraUtils;->CopyFile(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    .line 168
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/2addr v0, v9

    goto :goto_1

    :catch_1
    move-exception v0

    .line 173
    :try_start_5
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 177
    sget-boolean v0, Lcom/yasirkula/unity/NativeCamera;->KeepGalleryReferences:Z

    if-nez v0, :cond_2

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to delete duplicate gallery item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    new-array v8, v9, [Ljava/lang/String;

    aput-object v11, v8, v12

    invoke-virtual {v0, v2, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v8, v10

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v10

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v10, :cond_4

    .line 194
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_3
    move-exception v0

    .line 189
    :goto_3
    :try_start_6
    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v8, :cond_4

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    :goto_5
    move-object v8, v6

    .line 199
    :cond_5
    iget-object v0, v1, Lcom/yasirkula/unity/NativeCameraPictureFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    if-eqz v0, :cond_7

    if-eqz v8, :cond_6

    .line 200
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    :cond_6
    invoke-interface {v0, v7}, Lcom/yasirkula/unity/NativeCameraMediaReceiver;->OnMediaReceived(Ljava/lang/String;)V

    .line 202
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "_id"

    const-string v1, "Exception:"

    const-string v2, "Unity"

    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    iget-object p1, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->mediaReceiver:Lcom/yasirkula/unity/NativeCameraMediaReceiver;

    if-nez p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_4

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "UNCP_DEF_CAMERA"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 50
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UNCP_AUTHORITY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "IMG_camera.jpg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    invoke-static {v4}, Lcom/yasirkula/unity/NativeCameraUtils;->ClearFileContents(Ljava/io/File;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->fileTargetPath:Ljava/lang/String;

    const/4 v5, 0x0

    .line 75
    :try_start_1
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 79
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I

    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    const/high16 v0, -0x80000000

    .line 85
    iput v0, p0, Lcom/yasirkula/unity/NativeCameraPictureFragment;->lastImageId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 91
    :try_start_2
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    .line 96
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 99
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v3, v4}, Lcom/yasirkula/unity/NativeCameraUtils;->SetOutputUri(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/io/File;)V

    const/4 v1, 0x1

    if-nez p1, :cond_5

    .line 103
    invoke-static {v0, v1}, Lcom/yasirkula/unity/NativeCameraUtils;->SetDefaultCamera(Landroid/content/Intent;Z)V

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_6

    const/4 p1, 0x0

    .line 105
    invoke-static {v0, p1}, Lcom/yasirkula/unity/NativeCameraUtils;->SetDefaultCamera(Landroid/content/Intent;Z)V

    .line 107
    :cond_6
    :goto_3
    sget-boolean p1, Lcom/yasirkula/unity/NativeCamera;->QuickCapture:Z

    if-eqz p1, :cond_7

    const-string p1, "android.intent.extra.quickCapture"

    .line 108
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    :cond_7
    sget-boolean p1, Lcom/yasirkula/unity/NativeCamera;->UseDefaultCameraApp:Z

    const v1, 0x87718

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v2, 0x10000

    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_8
    const-string p1, ""

    .line 113
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4
    return-void

    :goto_5
    if-eqz v5, :cond_9

    .line 96
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1

    :catch_1
    move-exception p1

    .line 62
    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    invoke-virtual {p0}, Lcom/yasirkula/unity/NativeCameraPictureFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
