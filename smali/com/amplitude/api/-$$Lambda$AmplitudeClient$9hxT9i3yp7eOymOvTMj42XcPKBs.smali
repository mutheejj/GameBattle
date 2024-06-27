.class public final synthetic Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/amplitude/api/AmplitudeClient;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lcom/amplitude/api/AmplitudeClient;


# direct methods
.method public synthetic constructor <init>(Lcom/amplitude/api/AmplitudeClient;Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/api/AmplitudeClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$0:Lcom/amplitude/api/AmplitudeClient;

    iput-object p2, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$3:Lcom/amplitude/api/AmplitudeClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$0:Lcom/amplitude/api/AmplitudeClient;

    iget-object v1, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/amplitude/api/-$$Lambda$AmplitudeClient$9hxT9i3yp7eOymOvTMj42XcPKBs;->f$3:Lcom/amplitude/api/AmplitudeClient;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amplitude/api/AmplitudeClient;->lambda$initialize$0$AmplitudeClient(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/api/AmplitudeClient;)V

    return-void
.end method
