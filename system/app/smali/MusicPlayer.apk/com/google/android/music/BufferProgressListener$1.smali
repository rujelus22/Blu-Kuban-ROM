.class Lcom/google/android/music/BufferProgressListener$1;
.super Lcom/google/android/music/dl/IDownloadProgressListener$Stub;
.source "BufferProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BufferProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BufferProgressListener;


# direct methods
.method constructor <init>(Lcom/google/android/music/BufferProgressListener;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/music/BufferProgressListener$1;->this$0:Lcom/google/android/music/BufferProgressListener;

    invoke-direct {p0}, Lcom/google/android/music/dl/IDownloadProgressListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    .registers 6
    .parameter "songId"
    .parameter "state"
    .parameter "progress"
    .parameter "errorType"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/music/BufferProgressListener$1;->this$0:Lcom/google/android/music/BufferProgressListener;

    #calls: Lcom/google/android/music/BufferProgressListener;->processBufferBroadcast(Lcom/google/android/music/dl/ContentIdentifier;IFI)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/music/BufferProgressListener;->access$000(Lcom/google/android/music/BufferProgressListener;Lcom/google/android/music/dl/ContentIdentifier;IFI)V

    .line 103
    return-void
.end method
