.class public Lcom/yasirkula/unity/RuntimePermissionsFragment;
.super Landroid/app/Fragment;
.source "RuntimePermissionsFragment.java"


# static fields
.field public static final PERMISSIONS:Ljava/lang/String; = "RTP_Permissions"

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x1df1f


# instance fields
.field private m_permissions:[Ljava/lang/String;

.field private final permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/yasirkula/unity/RuntimePermissionsReceiver;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RTP_Permissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    if-eqz p1, :cond_1

    const v0, 0x1df1f

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11

    const v0, 0x1df1f

    if-eq p1, v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;

    const-string v0, "Unity"

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 67
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v2, v3, :cond_2

    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 74
    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_8

    array-length v5, p3

    if-ge v2, v5, :cond_8

    .line 76
    aget-object v5, p2, v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 78
    :goto_2
    iget-object v9, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    array-length v10, v9

    if-ge v7, v10, :cond_4

    if-ne v8, v6, :cond_4

    .line 80
    aget-object v9, v9, v7

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v7

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-ne v8, v6, :cond_5

    .line 86
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Didn\'t request permission for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 94
    :try_start_0
    aget v6, p3, v2

    if-nez v6, :cond_6

    const/4 v5, 0x1

    .line 95
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 96
    :cond_6
    invoke-virtual {p0, v5}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 99
    :cond_7
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    const-string v6, "Exception:"

    .line 103
    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v8, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 108
    :cond_8
    iget-object p2, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->m_permissions:[Ljava/lang/String;

    array-length p2, p2

    if-eq v3, p2, :cond_9

    const-string p2, "Missed some permissions!"

    .line 109
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string p2, ""

    const/4 p3, 0x0

    .line 112
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_a

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    .line 115
    :cond_a
    iget-object p1, p0, Lcom/yasirkula/unity/RuntimePermissionsFragment;->permissionReceiver:Lcom/yasirkula/unity/RuntimePermissionsReceiver;

    invoke-interface {p1, p2}, Lcom/yasirkula/unity/RuntimePermissionsReceiver;->OnPermissionResult(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 123
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x20000

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    const-string p2, "Exception (resume):"

    .line 129
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void

    :cond_b
    :goto_6
    const-string p1, "Fragment data got reset while asking permissions!"

    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/yasirkula/unity/RuntimePermissionsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
