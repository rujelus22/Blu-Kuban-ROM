.class public Laav;
.super LcI;
.source "DragKnobView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DragKnobView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DragKnobView;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Laav;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Laav;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DragKnobView;->a(Lcom/google/android/apps/docs/view/DragKnobView;)Laax;

    move-result-object v0

    iget-object v1, p0, Laav;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DragKnobView;->a(Lcom/google/android/apps/docs/view/DragKnobView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Laax;->b(Landroid/view/MotionEvent;)V

    .line 103
    iget-object v0, p0, Laav;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/view/DragKnobView;->a(Lcom/google/android/apps/docs/view/DragKnobView;Z)Z

    .line 104
    return-void
.end method
