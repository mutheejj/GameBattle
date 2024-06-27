.class public Lcom/sglib/easymobile/androidnative/AppUtil;
.super Ljava/lang/Object;
.source "AppUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;
    }
.end annotation


# static fields
.field public static appLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsAppFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/sglib/easymobile/androidnative/AppUtil;->sIsAppFocus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddAppLifecycleListener(Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;)V
    .locals 1

    .line 114
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static GetApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 132
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v1, :cond_0

    .line 133
    iget-object p0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static GetRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const-string v0, "_data"

    .line 139
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 140
    new-instance v8, Landroidx/loader/content/CursorLoader;

    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v8}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p0

    .line 142
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static IsAppInForeground()Z
    .locals 1

    .line 98
    sget-boolean v0, Lcom/sglib/easymobile/androidnative/AppUtil;->sIsAppFocus:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sglib/easymobile/androidnative/AppUtil;->IsAppRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static IsAppRunning()Z
    .locals 1

    .line 106
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OnApplicationFocus(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Lcom/sglib/easymobile/androidnative/AppUtil;->sIsAppFocus:Z

    .line 42
    :cond_0
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;

    .line 45
    :try_start_0
    invoke-interface {v1, p0}, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;->OnApplicationFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception invoking callback."

    .line 48
    invoke-static {v2, v1}, Lcom/sglib/easymobile/androidnative/Helper;->LogError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static OnApplicationPause(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/sglib/easymobile/androidnative/AppUtil;->sIsAppFocus:Z

    .line 62
    :cond_0
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;

    .line 64
    :try_start_0
    invoke-interface {v1, p0}, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;->OnApplicationPause(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception invoking callback."

    .line 66
    invoke-static {v2, v1}, Lcom/sglib/easymobile/androidnative/Helper;->LogError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static OnApplicationQuit()V
    .locals 3

    const/4 v0, 0x0

    .line 76
    sput-boolean v0, Lcom/sglib/easymobile/androidnative/AppUtil;->sIsAppFocus:Z

    .line 78
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;

    .line 81
    :try_start_0
    invoke-interface {v1}, Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;->OnApplicationQuit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Exception invoking callback."

    .line 84
    invoke-static {v2, v1}, Lcom/sglib/easymobile/androidnative/Helper;->LogError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static RemoveAppLifecycleListener(Lcom/sglib/easymobile/androidnative/AppUtil$AppLifecycleCallbacks;)V
    .locals 1

    .line 125
    sget-object v0, Lcom/sglib/easymobile/androidnative/AppUtil;->appLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
