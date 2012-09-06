.class Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;
.super Ljava/lang/Object;
.source "GPlusShareActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

.field final synthetic val$shareUrl:Lcom/google/android/music/SharePreviewResponse;


# direct methods
.method constructor <init>(Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;Lcom/google/android/music/SharePreviewResponse;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->this$1:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    iput-object p2, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->val$shareUrl:Lcom/google/android/music/SharePreviewResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->val$shareUrl:Lcom/google/android/music/SharePreviewResponse;

    if-nez v0, :cond_c

    .line 162
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->this$1:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    iget-object v0, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    #calls: Lcom/google/android/music/GPlusShareActivity;->transitionToError()V
    invoke-static {v0}, Lcom/google/android/music/GPlusShareActivity;->access$000(Lcom/google/android/music/GPlusShareActivity;)V

    .line 166
    :goto_b
    return-void

    .line 164
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->this$1:Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;

    iget-object v0, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    iget-object v1, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;->val$shareUrl:Lcom/google/android/music/SharePreviewResponse;

    #calls: Lcom/google/android/music/GPlusShareActivity;->launchShare(Lcom/google/android/music/SharePreviewResponse;)V
    invoke-static {v0, v1}, Lcom/google/android/music/GPlusShareActivity;->access$100(Lcom/google/android/music/GPlusShareActivity;Lcom/google/android/music/SharePreviewResponse;)V

    goto :goto_b
.end method
