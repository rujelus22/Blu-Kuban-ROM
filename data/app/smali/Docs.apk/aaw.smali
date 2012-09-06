.class public Laaw;
.super LcI;
.source "DragKnobView.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DragKnobView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DragKnobView;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Laaw;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Laaw;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-static {v0}, Lcom/google/android/apps/docs/view/DragKnobView;->a(Lcom/google/android/apps/docs/view/DragKnobView;)Laax;

    move-result-object v0

    iget-object v1, p0, Laaw;->a:Lcom/google/android/apps/docs/view/DragKnobView;

    invoke-static {v1}, Lcom/google/android/apps/docs/view/DragKnobView;->b(Lcom/google/android/apps/docs/view/DragKnobView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Laax;->c(Landroid/view/MotionEvent;)V

    .line 121
    return-void
.end method
