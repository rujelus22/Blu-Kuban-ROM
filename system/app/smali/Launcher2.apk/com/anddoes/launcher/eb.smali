.class final Lcom/anddoes/launcher/eb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ea;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ea;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/eb;->a:Lcom/anddoes/launcher/ea;

    .line 53
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/eb;->a:Lcom/anddoes/launcher/ea;

    invoke-static {v0}, Lcom/anddoes/launcher/ea;->a(Lcom/anddoes/launcher/ea;)V

    .line 57
    return-void
.end method
