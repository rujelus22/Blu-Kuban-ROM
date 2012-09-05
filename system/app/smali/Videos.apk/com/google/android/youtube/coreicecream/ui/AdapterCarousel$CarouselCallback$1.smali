.class Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;
.super Landroid/os/Handler;
.source "AdapterCarousel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

.field final synthetic val$this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Looper;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iput-object p3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->val$this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 476
    iget v4, p1, Landroid/os/Message;->what:I

    .line 477
    .local v4, textureIndex:I
    and-int/lit8 v8, v4, 0x1

    if-ne v8, v6, :cond_59

    move v2, v6

    .line 478
    .local v2, isDetailView:Z
    :goto_a
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    .line 479
    .local v5, view:Landroid/view/View;
    iget-object v8, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 481
    .local v1, detailView:Landroid/view/View;
    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v9, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v9}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-ne v8, v9, :cond_96

    .line 482
    if-eqz v2, :cond_5b

    .line 483
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v6, v6, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v8, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailWidth:I
    invoke-static {v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v9, v9, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailHeight:I
    invoke-static {v9}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$600(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v9

    invoke-virtual {v6, v1, v8, v9, v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    .local v0, detailTexture:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v7, v4, v10, v8, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    .line 499
    .end local v0           #detailTexture:Landroid/graphics/Bitmap;
    :goto_53
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V
    invoke-static {v6, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    .line 500
    return-void

    .end local v1           #detailView:Landroid/view/View;
    .end local v2           #isDetailView:Z
    .end local v5           #view:Landroid/view/View;
    :cond_59
    move v2, v7

    .line 477
    goto :goto_a

    .line 487
    .restart local v1       #detailView:Landroid/view/View;
    .restart local v2       #isDetailView:Z
    .restart local v5       #view:Landroid/view/View;
    :cond_5b
    if-eqz v1, :cond_6c

    .line 488
    iget-object v8, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z
    invoke-static {v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v8

    if-eqz v8, :cond_69

    const/16 v7, 0x8

    :cond_69
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 490
    :cond_6c
    iget-object v7, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, v7, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    iget-object v8, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, v8, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I
    invoke-static {v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v9, v9, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I
    invoke-static {v9}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v9

    invoke-virtual {v7, v5, v8, v9, v6}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->createTexture(Landroid/view/View;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 491
    .local v3, mainTexture:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v7, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-static {v7, v4, v10, v8, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto :goto_53

    .line 496
    .end local v3           #mainTexture:Landroid/graphics/Bitmap;
    :cond_96
    iget-object v6, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v8, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v4, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V
    invoke-static {v6, v7}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto :goto_53
.end method
