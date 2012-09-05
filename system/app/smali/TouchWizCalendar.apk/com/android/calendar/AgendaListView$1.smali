.class Lcom/android/calendar/AgendaListView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AgendaListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaListView;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v0, 0x1

    .line 102
    iget-object v1, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    #setter for: Lcom/android/calendar/AgendaListView;->mScaleBegan:Z
    invoke-static {v1, v0}, Lcom/android/calendar/AgendaListView;->access$002(Lcom/android/calendar/AgendaListView;Z)Z

    .line 103
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_10

    .line 105
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/calendar/AgendaListView$1;->this$0:Lcom/android/calendar/AgendaListView;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/AgendaListView;->mScaleBegan:Z
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaListView;->access$002(Lcom/android/calendar/AgendaListView;Z)Z

    .line 112
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 113
    return-void
.end method
