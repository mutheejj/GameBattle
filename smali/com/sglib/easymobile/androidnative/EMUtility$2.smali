.class final Lcom/sglib/easymobile/androidnative/EMUtility$2;
.super Ljava/lang/Object;
.source "EMUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sglib/easymobile/androidnative/EMUtility;->RequestStoreReview(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackGameObject:Ljava/lang/String;

.field final synthetic val$callbackMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sglib/easymobile/androidnative/EMUtility$2;->val$callbackGameObject:Ljava/lang/String;

    iput-object p2, p0, Lcom/sglib/easymobile/androidnative/EMUtility$2;->val$callbackMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/sglib/easymobile/androidnative/EMUtility$2;->val$callbackGameObject:Ljava/lang/String;

    iget-object v1, p0, Lcom/sglib/easymobile/androidnative/EMUtility$2;->val$callbackMethod:Ljava/lang/String;

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
