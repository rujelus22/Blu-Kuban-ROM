.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$7;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 673
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$7;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$7;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const-string v1, "list"

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setViewMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Ljava/lang/String;)V

    .line 676
    return-void
.end method
