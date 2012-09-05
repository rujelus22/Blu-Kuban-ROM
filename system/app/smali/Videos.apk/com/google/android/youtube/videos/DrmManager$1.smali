.class Lcom/google/android/youtube/videos/DrmManager$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/DrmManager;->notifyHeartbeatError(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/DrmManager;

.field final synthetic val$assetPathKey:Ljava/lang/String;

.field final synthetic val$cgiError:I


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/DrmManager;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/videos/DrmManager$1;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    iput-object p2, p0, Lcom/google/android/youtube/videos/DrmManager$1;->val$assetPathKey:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/youtube/videos/DrmManager$1;->val$cgiError:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$1;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    #getter for: Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager;->access$000(Lcom/google/android/youtube/videos/DrmManager;)Lcom/google/android/youtube/videos/DrmManager$Listener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/videos/DrmManager$1;->this$0:Lcom/google/android/youtube/videos/DrmManager;

    #getter for: Lcom/google/android/youtube/videos/DrmManager;->listener:Lcom/google/android/youtube/videos/DrmManager$Listener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/DrmManager;->access$000(Lcom/google/android/youtube/videos/DrmManager;)Lcom/google/android/youtube/videos/DrmManager$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmManager$1;->val$assetPathKey:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/youtube/videos/DrmManager$1;->val$cgiError:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/videos/DrmManager$Listener;->onHeartbeatError(Ljava/lang/String;I)V

    .line 114
    :cond_15
    return-void
.end method
