.class public Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;
.super Ljava/lang/Object;
.source "BouncingListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialhubGestureListener"
.end annotation


# instance fields
.field private bCanRefresh:Z

.field final synthetic this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)V
    .registers 3
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    return-void
.end method


# virtual methods
.method public getCanRefresh()Z
    .registers 2

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 166
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "before"
    .parameter "after"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getFirstVisiblePosition()I

    move-result v0

    .line 172
    .local v0, index:I
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #setter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentPos:I
    invoke-static {v2, v0}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$402(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;I)I

    .line 174
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_16

    .line 208
    :cond_15
    :goto_15
    return v4

    .line 178
    :cond_16
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$500(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    move-result-object v2

    iput v0, v2, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mPos:I

    .line 179
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$500(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    iput v3, v2, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mTop:I

    .line 181
    if-nez v0, :cond_15

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->bIsDown:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$600(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Z

    move-result v2

    if-ne v2, v5, :cond_15

    .line 183
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mCurrentState:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$000(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)I

    move-result v2

    packed-switch v2, :pswitch_data_62

    .line 204
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    goto :goto_15

    .line 186
    :pswitch_40
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$500(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mPos:I

    if-nez v2, :cond_5f

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->this$0:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;

    #getter for: Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->mListViewPos:Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;
    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;->access$500(Lcom/sec/android/widgetapp/socialhub/view/BouncingListView;)Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$ListViewPos;->mTop:I

    if-nez v2, :cond_5f

    .line 188
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gez v2, :cond_5c

    .line 190
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    goto :goto_15

    .line 194
    :cond_5c
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    goto :goto_15

    .line 199
    :cond_5f
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    goto :goto_15

    .line 183
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 212
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public setCanRefresh(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/socialhub/view/BouncingListView$SocialhubGestureListener;->bCanRefresh:Z

    .line 226
    return-void
.end method
