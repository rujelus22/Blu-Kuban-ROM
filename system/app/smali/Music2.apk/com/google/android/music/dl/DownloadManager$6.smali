.class Lcom/google/android/music/dl/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/DownloadManager;->downloadRingtoneAsync(Lcom/google/android/music/dl/ContentIdentifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/DownloadManager;

.field final synthetic val$songId:Lcom/google/android/music/dl/ContentIdentifier;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/google/android/music/dl/DownloadManager$6;->this$0:Lcom/google/android/music/dl/DownloadManager;

    iput-object p2, p0, Lcom/google/android/music/dl/DownloadManager$6;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/google/android/music/dl/DownloadManager$6;->this$0:Lcom/google/android/music/dl/DownloadManager;

    iget-object v1, p0, Lcom/google/android/music/dl/DownloadManager$6;->val$songId:Lcom/google/android/music/dl/ContentIdentifier;

    #calls: Lcom/google/android/music/dl/DownloadManager;->downloadRingtone(Lcom/google/android/music/dl/ContentIdentifier;)V
    invoke-static {v0, v1}, Lcom/google/android/music/dl/DownloadManager;->access$800(Lcom/google/android/music/dl/DownloadManager;Lcom/google/android/music/dl/ContentIdentifier;)V

    .line 1023
    return-void
.end method
