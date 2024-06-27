.class Lcom/google/unity/ads/UnityRewardedAd$4$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;
.source "UnityRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/unity/ads/UnityRewardedAd$4;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$4;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$4$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$4;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedAdClosed()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$4$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$4;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$4;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$4$1$2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$4$1$2;-><init>(Lcom/google/unity/ads/UnityRewardedAd$4$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onRewardedAdFailedToShow(I)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$4$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$4;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$4;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$4$1$4;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$4$1$4;-><init>(Lcom/google/unity/ads/UnityRewardedAd$4$1;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onRewardedAdOpened()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$4$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$4;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$4;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$4$1$1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$4$1$1;-><init>(Lcom/google/unity/ads/UnityRewardedAd$4$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$4$1;->this$1:Lcom/google/unity/ads/UnityRewardedAd$4;

    iget-object v0, v0, Lcom/google/unity/ads/UnityRewardedAd$4;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->access$200(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$4$1$3;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$4$1$3;-><init>(Lcom/google/unity/ads/UnityRewardedAd$4$1;Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
