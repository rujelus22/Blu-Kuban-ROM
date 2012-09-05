.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->togglePinned(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mVolumesDataLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 967
    :try_start_7
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->val$volumeId:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$8;->val$volumeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->isPinned(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_16
    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setPinned(Ljava/lang/String;Z)V
    invoke-static {v2, v3, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;Z)V

    .line 968
    monitor-exit v1

    .line 969
    return-void

    .line 967
    :cond_1b
    const/4 v0, 0x0

    goto :goto_16

    .line 968
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method
