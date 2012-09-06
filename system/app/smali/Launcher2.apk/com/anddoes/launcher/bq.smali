.class final Lcom/anddoes/launcher/bq;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/bp;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/bp;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bq;->a:Lcom/anddoes/launcher/bp;

    iput-object p2, p0, Lcom/anddoes/launcher/bq;->b:Ljava/lang/Runnable;

    .line 473
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 476
    iget-object v0, p0, Lcom/anddoes/launcher/bq;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Lcom/anddoes/launcher/bq;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 479
    :cond_9
    return-void
.end method
