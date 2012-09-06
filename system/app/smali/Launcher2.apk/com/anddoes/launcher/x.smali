.class final Lcom/anddoes/launcher/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/v;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/v;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/x;->a:Lcom/anddoes/launcher/v;

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/anddoes/launcher/x;->a:Lcom/anddoes/launcher/v;

    invoke-virtual {v0}, Lcom/anddoes/launcher/v;->requestLayout()V

    .line 382
    return-void
.end method
