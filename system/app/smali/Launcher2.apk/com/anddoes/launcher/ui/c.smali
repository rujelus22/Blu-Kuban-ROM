.class final Lcom/anddoes/launcher/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ui/b;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ui/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ui/c;->a:Lcom/anddoes/launcher/ui/b;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 44
    iget-object v0, p0, Lcom/anddoes/launcher/ui/c;->a:Lcom/anddoes/launcher/ui/b;

    iget-object v0, v0, Lcom/anddoes/launcher/ui/b;->b:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
