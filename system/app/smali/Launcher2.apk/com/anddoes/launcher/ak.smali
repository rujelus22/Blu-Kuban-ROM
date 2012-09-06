.class final Lcom/anddoes/launcher/ak;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/ai;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/ai;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ak;->a:Lcom/anddoes/launcher/ai;

    .line 403
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/anddoes/launcher/ak;->a:Lcom/anddoes/launcher/ai;

    invoke-static {v0}, Lcom/anddoes/launcher/ai;->a(Lcom/anddoes/launcher/ai;)Lcom/anddoes/launcher/AppsCustomizeTabHost;

    move-result-object v0

    invoke-static {v0}, Lcom/anddoes/launcher/AppsCustomizeTabHost;->e(Lcom/anddoes/launcher/AppsCustomizeTabHost;)V

    .line 407
    return-void
.end method
