.class Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;
.super Ljava/lang/Object;
.source "BouncingListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .parameter "view"
    .parameter "first"
    .parameter "visible_count"
    .parameter "total_count"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsRefreshing:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$100(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bhasContinue:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$200(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 78
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getLastVisiblePosition()I

    move-result v0

    .line 80
    .local v0, last:I
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z
    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$300(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z

    move-result v1

    if-nez v1, :cond_22

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_2d

    .line 82
    :cond_22
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsScrollingDown:Z
    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$302(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;Z)Z

    .line 83
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->onFlickUp()V

    .line 86
    .end local v0           #last:I
    :cond_2d
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "state"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$1;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #setter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I
    invoke-static {v0, p2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$002(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;I)I

    .line 72
    return-void
.end method
