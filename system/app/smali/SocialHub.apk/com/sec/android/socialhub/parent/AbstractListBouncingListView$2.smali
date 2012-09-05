.class Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;
.super Ljava/lang/Object;
.source "AbstractListBouncingListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)V
    .registers 2
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 9
    .parameter "view"
    .parameter "first"
    .parameter "visible_count"
    .parameter "total_count"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 423
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickUp:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$400(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 425
    add-int/lit8 v1, p4, -0x20

    if-ge v1, p2, :cond_4c

    .line 427
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I

    move-result v1

    if-ge v1, p2, :cond_4d

    .line 429
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z
    invoke-static {v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;Z)Z

    .line 440
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I
    invoke-static {v1, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$502(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I

    .line 442
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsLoading:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$700(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bEnableFlickUp:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$800(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v1

    if-ne v1, v2, :cond_4c

    .line 444
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->getLastVisiblePosition()I

    move-result v0

    .line 446
    .local v0, last:I
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$600(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v1

    if-eq v1, v2, :cond_42

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_4c

    .line 448
    :cond_42
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z
    invoke-static {v1, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;Z)Z

    .line 449
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUp()V

    .line 454
    .end local v0           #last:I
    :cond_4c
    return-void

    .line 431
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mLastPos:I
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I

    move-result v1

    if-eq v1, p2, :cond_1b

    .line 437
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->bIsScrollingDown:Z
    invoke-static {v1, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;Z)Z

    goto :goto_1b
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "state"

    .prologue
    .line 409
    const-string v0, "AbstractListBouncingListView"

    const-string v1, "onScrollStateChanged()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentState:I
    invoke-static {v0, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$002(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;I)I

    .line 412
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCurrentPos:I
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$100(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mUseFlickDown:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 414
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 416
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(Z)V

    .line 419
    :cond_42
    return-void
.end method
