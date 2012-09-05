.class Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageTurnMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .registers 2
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->onUiThread(I)V

    return-void
.end method

.method private onUiThread(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 687
    sparse-switch p1, :sswitch_data_34

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Renderscript message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :sswitch_1e
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->onUpdatePosition()V

    .line 702
    :cond_21
    :goto_21
    :sswitch_21
    return-void

    .line 695
    :sswitch_22
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 696
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mReaderDelegate:Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onFadeInComplete()V

    goto :goto_21

    .line 687
    :sswitch_data_34
    .sparse-switch
        0x64 -> :sswitch_21
        0xc8 -> :sswitch_1e
        0x12c -> :sswitch_22
    .end sparse-switch
.end method

.method private onUpdatePosition()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    const-wide/high16 v8, 0x3fe0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 706
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mWaitingForFinishAnimation:Z
    invoke-static {v6, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$402(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z

    .line 710
    const-string v6, "PageTurnView"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 711
    const-string v6, "PageTurnView"

    const-string v7, "PageTurnMessage.run(): Animation complete"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1a
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v6

    if-nez v6, :cond_23

    .line 757
    :cond_22
    :goto_22
    return-void

    .line 720
    :cond_23
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    if-ne v6, v4, :cond_d8

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v6

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-lez v6, :cond_d8

    move v0, v4

    .line 721
    .local v0, advanceSuccess:Z
    :goto_37
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    if-ne v6, v10, :cond_db

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v6

    float-to-double v6, v6

    cmpl-double v6, v6, v8

    if-lez v6, :cond_db

    move v3, v4

    .line 722
    .local v3, rewindSuccess:Z
    :goto_4b
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    if-ne v6, v10, :cond_de

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v6

    float-to-double v6, v6

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_de

    move v2, v4

    .line 725
    .local v2, rewindAborted:Z
    :goto_5f
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v6, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$602(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 731
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v7, 0x0

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v6, v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$702(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 733
    if-nez v0, :cond_6e

    if-eqz v2, :cond_73

    .line 735
    :cond_6e
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->advancePage()V
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$800(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 739
    :cond_73
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPosition:Lcom/google/android/apps/books/render/RenderPosition;
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$900(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v6

    if-eqz v6, :cond_22

    .line 741
    if-eqz v0, :cond_e0

    .line 742
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v7

    sget-object v8, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->NEXT_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    invoke-static {v6, v7, v4, v8}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1100(Lcom/google/android/apps/books/widget/PageTurnView;IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    .line 747
    :cond_8a
    :goto_8a
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mRenderScript:Lcom/google/android/apps/books/widget/PageTurnRS;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mFraction:F
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mTurnDirection:I
    invoke-static {v8}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v8

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 749
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mCustomSlots:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1200(Lcom/google/android/apps/books/widget/PageTurnView;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;

    .line 750
    .local v1, customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    if-eqz v1, :cond_d1

    invoke-interface {v1}, Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;->isLastPage()Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mShouldReadLastPage:Z
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1300(Lcom/google/android/apps/books/widget/PageTurnView;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 751
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->maybeReadSpecialView(Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V
    invoke-static {v4, v1}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1400(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;)V

    .line 752
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #setter for: Lcom/google/android/apps/books/widget/PageTurnView;->mShouldReadLastPage:Z
    invoke-static {v4, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1302(Lcom/google/android/apps/books/widget/PageTurnView;Z)Z

    .line 756
    :cond_d1
    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->serviceQueue()V
    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1500(Lcom/google/android/apps/books/widget/PageTurnView;)V

    goto/16 :goto_22

    .end local v0           #advanceSuccess:Z
    .end local v1           #customView:Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;
    .end local v2           #rewindAborted:Z
    .end local v3           #rewindSuccess:Z
    :cond_d8
    move v0, v5

    .line 720
    goto/16 :goto_37

    .restart local v0       #advanceSuccess:Z
    :cond_db
    move v3, v5

    .line 721
    goto/16 :goto_4b

    .restart local v3       #rewindSuccess:Z
    :cond_de
    move v2, v5

    .line 722
    goto :goto_5f

    .line 743
    .restart local v2       #rewindAborted:Z
    :cond_e0
    if-eqz v3, :cond_8a

    .line 744
    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v7, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    #getter for: Lcom/google/android/apps/books/widget/PageTurnView;->mAnchorPositionSlot:I
    invoke-static {v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1000(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v7

    sget-object v8, Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;->PREV_PAGE:Lcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;

    #calls: Lcom/google/android/apps/books/widget/PageTurnView;->startPositionUpdate(IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V
    invoke-static {v6, v7, v4, v8}, Lcom/google/android/apps/books/widget/PageTurnView;->access$1100(Lcom/google/android/apps/books/widget/PageTurnView;IZLcom/google/android/apps/books/provider/BooksContract$VolumeStates$Action;)V

    goto :goto_8a
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 678
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->mID:I

    .line 679
    .local v0, messageId:I
    iget-object v1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    new-instance v2, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;-><init>(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->post(Ljava/lang/Runnable;)Z

    .line 684
    return-void
.end method
