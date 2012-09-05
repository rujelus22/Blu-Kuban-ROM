.class Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;
.super Landroid/database/DataSetObserver;
.source "AdapterCarousel.java"

# interfaces
.implements Lcom/android/ex/carousel/CarouselRS$CarouselCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarouselCallback"
.end annotation


# instance fields
.field private final bgHandler:Landroid/os/Handler;

.field private final bgThread:Landroid/os/HandlerThread;

.field private final carouselMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private isCarouselMessageScheduled:Z

.field private final recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private textureVersions:[I

.field final synthetic this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

.field private final uiHandler:Landroid/os/Handler;

.field private final version:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 464
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 435
    iput-boolean v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    .line 465
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 466
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    .line 467
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 468
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    .line 470
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CarouselCallback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    .line 471
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 473
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$1;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Looper;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    .line 503
    new-instance v0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback$2;-><init>(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)V

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    .line 603
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getTextureVersion(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->createTextureVersions(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 408
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->getConvertView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/Queue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    iput-boolean p1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    return-void
.end method

.method private declared-synchronized createTextureVersions(I)V
    .registers 3
    .parameter "count"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 462
    monitor-exit p0

    return-void

    .line 461
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getConvertView()Landroid/view/View;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private declared-synchronized getTextureVersion(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 457
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    aget v0, v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private queueCarouselMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 606
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 607
    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    if-nez v0, :cond_11

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->isCarouselMessageScheduled:Z

    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    :goto_f
    monitor-exit v1

    .line 614
    return-void

    .line 611
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_f

    .line 613
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private recycleView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->recycleBin:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 697
    return-void
.end method

.method private removeCarouselMessages(I)V
    .registers 6
    .parameter "what"

    .prologue
    .line 617
    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 618
    :try_start_3
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->carouselMessageQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 619
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 620
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 621
    .local v1, next:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, p1, :cond_9

    .line 622
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 625
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    .end local v1           #next:Landroid/os/Message;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 626
    return-void
.end method

.method private declared-synchronized setTextureVersion(II)V
    .registers 4
    .parameter "index"
    .parameter "textureVersion"

    .prologue
    .line 451
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    array-length v0, v0

    if-ge p1, v0, :cond_a

    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->textureVersions:[I

    aput p2, v0, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 454
    :cond_a
    monitor-exit p0

    return-void

    .line 451
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onAnimationFinished(F)V
    .registers 4
    .parameter "carouselRotationAngle"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    #setter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->carouselRotation:Ljava/lang/Float;
    invoke-static {v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$2502(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;Ljava/lang/Float;)Ljava/lang/Float;

    .line 689
    return-void
.end method

.method public onAnimationStarted()V
    .registers 1

    .prologue
    .line 685
    return-void
.end method

.method public onCardLongPress(I[ILandroid/graphics/Rect;)V
    .registers 9
    .parameter "n"
    .parameter "touchPosition"
    .parameter "detailCoordinates"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v2, p1, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    return-void
.end method

.method public onCardSelected(I)V
    .registers 6
    .parameter "n"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 673
    return-void
.end method

.method public onChanged()V
    .registers 5

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->version:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 638
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 639
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 630
    return-void
.end method

.method public onDetailSelected(III)V
    .registers 8
    .parameter "n"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 682
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 659
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 660
    .local v0, textureIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    .line 661
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 662
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    .line 663
    return-void
.end method

.method public onInvalidateGeometry(I)V
    .registers 2
    .parameter "n"

    .prologue
    .line 669
    return-void
.end method

.method public onInvalidateTexture(I)V
    .registers 4
    .parameter "n"

    .prologue
    .line 646
    mul-int/lit8 v0, p1, 0x2

    .line 647
    .local v0, textureIndex:I
    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->removeCarouselMessages(I)V

    .line 648
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->bgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->setTextureVersion(II)V

    .line 650
    return-void
.end method

.method public onRequestDetailTexture(I)V
    .registers 6
    .parameter "n"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->this$0:Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;

    #getter for: Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->splitDetailViews:Z
    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->access$900(Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 654
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 656
    :cond_17
    return-void
.end method

.method public onRequestGeometry(I)V
    .registers 2
    .parameter "n"

    .prologue
    .line 666
    return-void
.end method

.method public onRequestTexture(I)V
    .registers 6
    .parameter "n"

    .prologue
    .line 642
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->uiHandler:Landroid/os/Handler;

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel$CarouselCallback;->queueCarouselMessage(Landroid/os/Message;)V

    .line 643
    return-void
.end method
