.class Lcom/android/calendar/AgendaExpandableListView$3;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "AgendaExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaExpandableListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaExpandableListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaExpandableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/calendar/AgendaExpandableListView$3;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 4
    .parameter "detector"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 159
    const/4 v0, 0x1

    .line 160
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 166
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView$3;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListView;->collapseList()V

    .line 171
    :goto_f
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 172
    return-void

    .line 169
    :cond_13
    iget-object v0, p0, Lcom/android/calendar/AgendaExpandableListView$3;->this$0:Lcom/android/calendar/AgendaExpandableListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaExpandableListView;->expandList()V

    goto :goto_f
.end method
