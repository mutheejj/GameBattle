.class public Lcom/yasirkula/unity/DebugConsoleLogcatLogger;
.super Ljava/lang/Object;
.source "DebugConsoleLogcatLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;
    }
.end annotation


# instance fields
.field private worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Start(Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->Stop()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "logcat"

    if-eqz p2, :cond_1

    .line 75
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_1
    new-instance p2, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    invoke-direct {p2, p1, v0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;-><init>(Lcom/yasirkula/unity/DebugConsoleLogcatLogReceiver;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    .line 81
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Stop()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;->terminate()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/yasirkula/unity/DebugConsoleLogcatLogger;->worker:Lcom/yasirkula/unity/DebugConsoleLogcatLogger$LogcatWorker;

    :cond_0
    return-void
.end method
