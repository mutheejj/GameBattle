.class public final Lcom/google/android/play/core/splitinstall/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/splitinstall/m;


# instance fields
.field private a:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/av;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/t;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/p;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/ax;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/testing/FakeSplitInstallManager;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/i;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/google/android/play/core/internal/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/co<",
            "Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/splitinstall/y;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/splitinstall/z;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/z;-><init>(Lcom/google/android/play/core/splitinstall/y;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->a:Lcom/google/android/play/core/internal/co;

    new-instance v1, Lcom/google/android/play/core/splitinstall/aw;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/aw;-><init>(Lcom/google/android/play/core/internal/co;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->b:Lcom/google/android/play/core/internal/co;

    new-instance v0, Lcom/google/android/play/core/splitinstall/ab;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/ab;-><init>(Lcom/google/android/play/core/splitinstall/y;)V

    invoke-static {v0}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->c:Lcom/google/android/play/core/internal/co;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->a:Lcom/google/android/play/core/internal/co;

    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/q;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/splitinstall/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->d:Lcom/google/android/play/core/internal/co;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->a:Lcom/google/android/play/core/internal/co;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ay;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/ay;-><init>(Lcom/google/android/play/core/internal/co;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->e:Lcom/google/android/play/core/internal/co;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/c;->b:Lcom/google/android/play/core/internal/co;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/c;->c:Lcom/google/android/play/core/internal/co;

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/c;->d:Lcom/google/android/play/core/internal/co;

    new-instance v4, Lcom/google/android/play/core/splitinstall/x;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/android/play/core/splitinstall/x;-><init>(Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;)V

    invoke-static {v4}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->f:Lcom/google/android/play/core/internal/co;

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->a:Lcom/google/android/play/core/internal/co;

    new-instance v1, Lcom/google/android/play/core/splitinstall/aa;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitinstall/aa;-><init>(Lcom/google/android/play/core/internal/co;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->g:Lcom/google/android/play/core/internal/co;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/c;->a:Lcom/google/android/play/core/internal/co;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/c;->d:Lcom/google/android/play/core/internal/co;

    new-instance v3, Lcom/google/android/play/core/splitinstall/testing/k;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/play/core/splitinstall/testing/k;-><init>(Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;)V

    invoke-static {v3}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->h:Lcom/google/android/play/core/internal/co;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/c;->f:Lcom/google/android/play/core/internal/co;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/c;->g:Lcom/google/android/play/core/internal/co;

    new-instance v3, Lcom/google/android/play/core/splitinstall/j;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/play/core/splitinstall/j;-><init>(Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;Lcom/google/android/play/core/internal/co;)V

    invoke-static {v3}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->i:Lcom/google/android/play/core/internal/co;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ac;

    invoke-direct {v1, p1, v0}, Lcom/google/android/play/core/splitinstall/ac;-><init>(Lcom/google/android/play/core/splitinstall/y;Lcom/google/android/play/core/internal/co;)V

    invoke-static {v1}, Lcom/google/android/play/core/internal/cm;->b(Lcom/google/android/play/core/internal/co;)Lcom/google/android/play/core/internal/co;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/c;->j:Lcom/google/android/play/core/internal/co;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/splitinstall/SplitInstallManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->j:Lcom/google/android/play/core/internal/co;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/co;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    return-object v0
.end method

.method public final b()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/c;->g:Lcom/google/android/play/core/internal/co;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/co;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method
