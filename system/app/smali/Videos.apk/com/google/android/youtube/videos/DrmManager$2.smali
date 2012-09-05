.class Lcom/google/android/youtube/videos/DrmManager$2;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DrmManager;->notifyPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DrmManager;

.field final synthetic val$assetPathKey:Ljava/lang/String;

.field final synthetic val$reason:Lcom/google/android/youtube/videos/DrmManager$StopReason;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DrmManager;Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$2;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DrmManager$2;->val$assetPathKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/videos/DrmManager$2;->val$reason:Lcom/google/android/youtube/videos/DrmManager$StopReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$2;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    #getter for: Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager;->access$000(Lcom/google/android/youtube/videos/DrmManager;)Lcom/google/android/youtube/videos/DrmManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$2;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    #getter for: Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager;->access$000(Lcom/google/android/youtube/videos/DrmManager;)Lcom/google/android/youtube/videos/DrmManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$2;->val$assetPathKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/videos/DrmManager$2;->val$reason:Lcom/google/android/youtube/videos/DrmManager$StopReason;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmManager$Listener;->onPlaybackStopped(Ljava/lang/String;Lcom/google/android/youtube/videos/DrmManager$StopReason;)V

    .line 124
    :cond_15
    return-void
.end method
