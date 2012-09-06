.class final Lcom/anddoes/launcher/ir;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/PagedView;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/PagedView;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ir;->a:Lcom/anddoes/launcher/PagedView;

    iput-object p2, p0, Lcom/anddoes/launcher/ir;->b:Ljava/lang/Runnable;

    .line 1407
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/anddoes/launcher/ir;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1410
    return-void
.end method
