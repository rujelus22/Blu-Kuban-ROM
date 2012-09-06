.class Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->prepareQueue(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

.field final synthetic val$itemsToAdd:I

.field final synthetic val$maxQueueSize:I


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iput p2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->val$itemsToAdd:I

    iput p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->val$maxQueueSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->this$1:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->access$3400(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)I

    move-result v1

    iget v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->val$itemsToAdd:I

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;->val$maxQueueSize:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->showSongsToAddToQueue(Landroid/content/Context;III)V

    .line 691
    return-void
.end method
