.class final Lcom/google/android/play/core/splitinstall/ah;
.super Lcom/google/android/play/core/internal/ah;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/google/android/play/core/tasks/i;

.field final synthetic c:Lcom/google/android/play/core/splitinstall/av;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/tasks/i;Ljava/util/List;Lcom/google/android/play/core/tasks/i;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/av;

    iput-object p3, p0, Lcom/google/android/play/core/splitinstall/ah;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/play/core/splitinstall/ah;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/internal/ah;-><init>(Lcom/google/android/play/core/tasks/i;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/av;

    iget-object v0, v0, Lcom/google/android/play/core/splitinstall/av;->a:Lcom/google/android/play/core/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/play/core/internal/aq;->c()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/bv;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/av;

    invoke-static {v1}, Lcom/google/android/play/core/splitinstall/av;->k(Lcom/google/android/play/core/splitinstall/av;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/ah;->a:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/av;->j(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->l()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/splitinstall/ao;

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/av;

    iget-object v6, p0, Lcom/google/android/play/core/splitinstall/ah;->b:Lcom/google/android/play/core/tasks/i;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/splitinstall/ao;-><init>(Lcom/google/android/play/core/splitinstall/av;Lcom/google/android/play/core/tasks/i;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/internal/bv;->i(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/play/core/internal/bx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/android/play/core/splitinstall/av;->m()Lcom/google/android/play/core/internal/ag;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/ah;->a:Ljava/util/List;

    aput-object v4, v2, v3

    const-string v3, "deferredLanguageInstall(%s)"

    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/core/internal/ag;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ah;->b:Lcom/google/android/play/core/tasks/i;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/i;->d(Ljava/lang/Exception;)V

    return-void
.end method
