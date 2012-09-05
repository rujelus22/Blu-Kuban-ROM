.class Lcom/google/android/youtube/core/transfer/UploadTask$1;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/transfer/UploadTask;->abortCurrentRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/UploadTask;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/transfer/UploadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/UploadTask$1;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/UploadTask$1;->this$0:Lcom/google/android/youtube/core/transfer/UploadTask;

    #calls: Lcom/google/android/youtube/core/transfer/UploadTask;->maybeAbortCurrentRequest()V
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/UploadTask;->access$000(Lcom/google/android/youtube/core/transfer/UploadTask;)V

    .line 182
    return-void
.end method
