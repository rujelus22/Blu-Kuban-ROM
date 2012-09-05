.class Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;
.super Ljava/lang/Object;
.source "AbstractListBouncingExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

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

    .line 366
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickUp:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$400(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 368
    add-int/lit8 v1, p4, -0x20

    if-ge v1, p2, :cond_4c

    .line 370
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I

    move-result v1

    if-ge v1, p2, :cond_4d

    .line 372
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z
    invoke-static {v1, v2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;Z)Z

    .line 383
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I
    invoke-static {v1, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$502(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I

    .line 385
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsLoading:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$700(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v1

    if-nez v1, :cond_4c

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bEnableFlickUp:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$800(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v1

    if-ne v1, v2, :cond_4c

    .line 387
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->getLastVisiblePosition()I

    move-result v0

    .line 389
    .local v0, last:I
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$600(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v1

    if-eq v1, v2, :cond_42

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_4c

    .line 391
    :cond_42
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z
    invoke-static {v1, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;Z)Z

    .line 392
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->onFlickUp()V

    .line 397
    .end local v0           #last:I
    :cond_4c
    return-void

    .line 374
    :cond_4d
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mLastPos:I
    invoke-static {v1}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$500(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I

    move-result v1

    if-eq v1, p2, :cond_1b

    .line 380
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->bIsScrollingDown:Z
    invoke-static {v1, v3}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$602(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;Z)Z

    goto :goto_1b
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 7
    .parameter "view"
    .parameter "state"

    .prologue
    .line 352
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

    .line 353
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #setter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentState:I
    invoke-static {v0, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$002(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;I)I

    .line 355
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCurrentPos:I
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$100(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)I

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mUseFlickDown:Z
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$200(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 357
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 359
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView$2;->this$0:Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;

    #getter for: Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->mCallback:Lcom/sec/android/socialhub/parent/IListBouncingCabllack;
    invoke-static {v0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;->access$300(Lcom/sec/android/socialhub/parent/AbstractListBouncingExpandableListView;)Lcom/sec/android/socialhub/parent/IListBouncingCabllack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/parent/IListBouncingCabllack;->displayOverGlow(Z)V

    .line 362
    :cond_42
    return-void
.end method
