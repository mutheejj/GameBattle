.class Lcom/google/unity/ads/UnityRewardedAd$2$1$2;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd$2$1;->onRewardedAdFailedToLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/UnityRewardedAd$2$1;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$2$1;I)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$2$1$2;->this$2:Lcom/google/unity/ads/UnityRewardedAd$2$1;

    iput p2, p0, Lcom/google/unity/ads/UnityRewardedAd$2$1$2;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$2$1$2;->this$2:Lcom/google/unity/ads/UnityRewardedAd$2$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$2$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$2;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$2;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$2$1$2;->this$2:Lcom/google/unity/ads/UnityRewardedAd$2$1;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$2$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$2;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$2;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    iget v1, p0, Lcom/google/unity/ads/UnityRewardedAd$2$1$2;->val$errorCode:I

    .line 110
    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->getErrorReason(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Lcom/google/unity/ads/UnityRewardedAdCallback;->onRewardedAdFailedToLoad(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
