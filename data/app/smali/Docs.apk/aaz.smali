.class public Laaz;
.super Ljava/lang/Object;
.source "DraggableDocListEntryView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Laaz;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Laaz;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->a(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;I)I

    .line 88
    iget-object v0, p0, Laaz;->a:Lcom/google/android/apps/docs/view/DraggableDocListEntryView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/view/DraggableDocListEntryView;->b(Lcom/google/android/apps/docs/view/DraggableDocListEntryView;I)I

    .line 89
    const/4 v0, 0x0

    return v0
.end method
