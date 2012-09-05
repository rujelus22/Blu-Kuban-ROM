.class Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Switcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->requestFocus()Z

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$000(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 130
    move v9, p3

    .line 131
    .local v9, velocity:F
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_52

    .line 132
    const/high16 v9, -0x3c6a

    .line 136
    :goto_12
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$700(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v1

    neg-float v3, v9

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$200(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$300(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v5

    mul-int v6, v4, v5

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$800(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$800(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$800(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v2, v10

    .line 142
    .end local v9           #velocity:F
    :cond_51
    return v2

    .line 134
    .restart local v9       #velocity:F
    :cond_52
    const/high16 v9, 0x4396

    goto :goto_12
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 117
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdapter:Landroid/widget/SpinnerAdapter;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$000(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 118
    float-to-int v0, p3

    .line 119
    .local v0, distance:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v3

    add-int v2, v3, v0

    .line 120
    .local v2, pos:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    if-gez v2, :cond_3f

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$200(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$300(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v5

    mul-int/2addr v3, v5

    add-int/2addr v3, v2

    :goto_23
    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v4, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$102(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I

    .line 121
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->position:I
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v4

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->getPackedViews(I)I
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$400(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)I

    move-result v1

    .line 122
    .local v1, index:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->manageViews(I)V
    invoke-static {v3, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$500(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    neg-int v4, v0

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->scroll(I)V
    invoke-static {v3, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$600(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;I)V

    .line 125
    .end local v0           #distance:I
    .end local v1           #index:I
    .end local v2           #pos:I
    :cond_3d
    const/4 v3, 0x0

    return v3

    .line 120
    .restart local v0       #distance:I
    .restart local v2       #pos:I
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->mAdpCount:I
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$200(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->size:I
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;->access$300(Lcom/sec/android/app/clockpackage/worldclock/common/Switcher;)I

    move-result v5

    mul-int/2addr v3, v5

    rem-int v3, v2, v3

    goto :goto_23
.end method
