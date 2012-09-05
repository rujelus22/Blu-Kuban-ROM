.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->openBookInReader(Ljava/lang/String;)V
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
    .line 1036
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1038
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1039
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_a

    .line 1048
    :goto_9
    return-void

    .line 1043
    :cond_a
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$10;->val$volumeId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v5, v5, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    .line 1045
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1047
    .local v1, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_9
.end method
