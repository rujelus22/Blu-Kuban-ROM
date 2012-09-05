.class Lcom/android/calendar/PinchView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PinchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/PinchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/PinchView;


# direct methods
.method constructor <init>(Lcom/android/calendar/PinchView;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 81
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #setter for: Lcom/android/calendar/PinchView;->mScaleBegan:Z
    invoke-static {v0, v2}, Lcom/android/calendar/PinchView;->access$002(Lcom/android/calendar/PinchView;Z)Z

    .line 82
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mMode:I
    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$100(Lcom/android/calendar/PinchView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    if-nez v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v2}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    .line 90
    :cond_18
    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 6
    .parameter "detector"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 100
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #setter for: Lcom/android/calendar/PinchView;->mScaleBegan:Z
    invoke-static {v0, v3}, Lcom/android/calendar/PinchView;->access$002(Lcom/android/calendar/PinchView;Z)Z

    .line 102
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mMode:I
    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$100(Lcom/android/calendar/PinchView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    if-nez v0, :cond_3c

    .line 104
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_26

    .line 106
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->switchMode()V

    .line 122
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mMode:I
    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$100(Lcom/android/calendar/PinchView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    if-nez v0, :cond_38

    .line 124
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    invoke-virtual {v0, v3}, Lcom/android/calendar/PinchView;->setMonthPinch(Z)V

    .line 128
    :cond_38
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 130
    return-void

    .line 112
    :cond_3c
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_26

    .line 114
    iget-object v0, p0, Lcom/android/calendar/PinchView$1;->this$0:Lcom/android/calendar/PinchView;

    #getter for: Lcom/android/calendar/PinchView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/PinchView;->access$200(Lcom/android/calendar/PinchView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->switchMode()V

    goto :goto_26
.end method
