.class Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;
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
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iput-object p2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->val$this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .parameter "msg"

    .prologue
    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    .line 508
    .local v18, currentVersion:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    .line 509
    .local v23, textureIndex:I
    div-int/lit8 v3, v23, 0x2

    .line 510
    .local v3, cardIndex:I
    and-int/lit8 v2, v23, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_44

    const/16 v20, 0x1

    .line 512
    .local v20, isDetailView:Z
    :goto_1b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_282

    .line 593
    :cond_22
    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$2300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;

    move-result-object v4

    monitor-enter v4

    .line 594
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$2300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Message;

    .line 595
    .local v21, next:Landroid/os/Message;
    if-eqz v21, :cond_275

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->sendMessage(Landroid/os/Message;)Z

    .line 600
    :goto_42
    monitor-exit v4
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_27f

    .line 601
    return-void

    .line 510
    .end local v20           #isDetailView:Z
    .end local v21           #next:Landroid/os/Message;
    :cond_44
    const/16 v20, 0x0

    goto :goto_1b

    .line 515
    .restart local v20       #isDetailView:Z
    :pswitch_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    const/4 v4, -0x1

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V
    invoke-static {v2, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getCardCount()I

    move-result v16

    .line 518
    .local v16, currentCardCount:I
    mul-int/lit8 v17, v16, 0x2

    .line 519
    .local v17, currentTextureCount:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5d
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_ad

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    move/from16 v0, v19

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getTextureVersion(I)I
    invoke-static {v2, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)I

    move-result v2

    move/from16 v0, v18

    if-eq v2, v0, :cond_96

    .line 521
    div-int/lit8 v3, v19, 0x2

    .line 522
    and-int/lit8 v2, v19, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_99

    const/16 v20, 0x1

    .line 526
    :goto_7a
    if-eqz v20, :cond_9e

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v2

    if-nez v2, :cond_9c

    const/4 v2, 0x1

    :goto_93
    invoke-virtual {v4, v3, v2}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V

    .line 519
    :cond_96
    :goto_96
    add-int/lit8 v19, v19, 0x1

    goto :goto_5d

    .line 522
    :cond_99
    const/16 v20, 0x0

    goto :goto_7a

    .line 527
    :cond_9c
    const/4 v2, 0x0

    goto :goto_93

    .line 529
    :cond_9e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/carousel/CarouselController;->invalidateTexture(IZ)V

    goto :goto_96

    .line 534
    :cond_ad
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v15

    .line 535
    .local v15, count:I
    move/from16 v0, v16

    if-eq v15, v0, :cond_22

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v4, v4, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardWidth:I
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v5, v5, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->cardHeight:I
    invoke-static {v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setCardSize(II)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2, v15}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->createCards(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    mul-int/lit8 v4, v15, 0x2

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->createTextureVersions(I)V
    invoke-static {v2, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1600(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)V

    goto/16 :goto_22

    .line 545
    .end local v15           #count:I
    .end local v16           #currentCardCount:I
    .end local v17           #currentTextureCount:I
    .end local v19           #i:I
    :pswitch_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getCardCount()I

    move-result v2

    if-ge v3, v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    move/from16 v0, v23

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getTextureVersion(I)I
    invoke-static {v2, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)I

    move-result v2

    move/from16 v0, v18

    if-eq v2, v0, :cond_22

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    move/from16 v0, v23

    move/from16 v1, v18

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V
    invoke-static {v2, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;II)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getConvertView()Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 549
    .local v11, view:Landroid/view/View;
    if-eqz v20, :cond_157

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->detailViewTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_157

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V
    invoke-static {v2, v11}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_22

    .line 553
    :cond_157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v4, v0, v5, v1, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_22

    .line 560
    .end local v11           #view:Landroid/view/View;
    :pswitch_175
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v18

    if-ne v2, v0, :cond_1b1

    .line 561
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Bitmap;

    .line 562
    .local v8, texture:Landroid/graphics/Bitmap;
    if-eqz v20, :cond_1a6

    .line 564
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->getHeight()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v22, v2, v4

    .line 565
    .local v22, offsetY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    const/4 v4, 0x0

    move/from16 v0, v22

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    goto/16 :goto_22

    .line 567
    .end local v22           #offsetY:I
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-virtual {v2, v3, v8}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_22

    .line 571
    .end local v8           #texture:Landroid/graphics/Bitmap;
    :cond_1b1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    move/from16 v0, v23

    invoke-static {v4, v0, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V
    invoke-static {v2, v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V

    goto/16 :goto_22

    .line 576
    :pswitch_1ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_22

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getConvertView()Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 578
    .restart local v11       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2000(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    move v12, v3

    invoke-interface/range {v9 .. v14}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V
    invoke-static {v2, v11}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_22

    .line 584
    .end local v11           #view:Landroid/view/View;
    :pswitch_217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v3, v2, :cond_22

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->adapter:Landroid/widget/Adapter;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$1500(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/Adapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getConvertView()Landroid/view/View;
    invoke-static {v4}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 586
    .restart local v11       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v4, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    #setter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->lastTouchPosition:[I
    invoke-static {v4, v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2202(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;[I)[I

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    iget-object v2, v2, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2100(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    move v12, v3

    invoke-interface/range {v9 .. v14}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    #calls: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V
    invoke-static {v2, v11}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$1200(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V

    goto/16 :goto_22

    .line 598
    .end local v11           #view:Landroid/view/View;
    .restart local v21       #next:Landroid/os/Message;
    :cond_275
    :try_start_275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;->this$1:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z
    invoke-static {v2, v5}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->access$2402(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Z)Z

    goto/16 :goto_42

    .line 600
    .end local v21           #next:Landroid/os/Message;
    :catchall_27f
    move-exception v2

    monitor-exit v4
    :try_end_281
    .catchall {:try_start_275 .. :try_end_281} :catchall_27f

    throw v2

    .line 512
    :pswitch_data_282
    .packed-switch 0x1
        :pswitch_47
        :pswitch_f0
        :pswitch_175
        :pswitch_1ca
        :pswitch_217
    .end packed-switch
.end method
