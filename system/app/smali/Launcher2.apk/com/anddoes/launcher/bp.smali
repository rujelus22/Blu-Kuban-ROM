.class final Lcom/anddoes/launcher/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DragLayer;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bp;->a:Lcom/anddoes/launcher/DragLayer;

    iput-object p2, p0, Lcom/anddoes/launcher/bp;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/anddoes/launcher/bp;->c:Ljava/lang/Runnable;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/anddoes/launcher/bp;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/anddoes/launcher/bp;->b:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 472
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 473
    new-instance v1, Lcom/anddoes/launcher/bq;

    iget-object v2, p0, Lcom/anddoes/launcher/bp;->c:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/anddoes/launcher/bq;-><init>(Lcom/anddoes/launcher/bp;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 481
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 482
    return-void

    .line 471
    nop

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
