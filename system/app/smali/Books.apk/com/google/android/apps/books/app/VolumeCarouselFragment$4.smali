.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 369
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 370
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getOfflineViewOpaqueHeight()I
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)I

    move-result v0

    .line 371
    .local v0, height:I
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselViewShifter:Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;

    move-result-object v1

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VerticalViewShifter;->setShift(I)V

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksListHomeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setPaddingForBottomOfList(I)V

    .line 373
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksListHomeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksListHomeView;->refreshManageOfflineUi()V

    .line 377
    .end local v0           #height:I
    :goto_2a
    return-void

    .line 375
    :cond_2b
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mListHomeView:Lcom/google/android/apps/books/widget/BooksListHomeView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksListHomeView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/BooksListHomeView;->setPaddingForBottomOfList(I)V

    goto :goto_2a
.end method
