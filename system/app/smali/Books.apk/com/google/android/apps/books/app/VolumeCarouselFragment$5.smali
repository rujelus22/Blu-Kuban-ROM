.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$5;
.super Landroid/database/ContentObserver;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$5;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$5;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 390
    return-void
.end method
