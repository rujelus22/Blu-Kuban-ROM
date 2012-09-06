.class final Lcom/anddoes/launcher/en;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Lcom/anddoes/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/CellLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/en;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/en;->b:Lcom/anddoes/launcher/CellLayout;

    .line 3661
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 3664
    iget-object v0, p0, Lcom/anddoes/launcher/en;->b:Lcom/anddoes/launcher/CellLayout;

    if-eqz v0, :cond_9

    .line 3665
    iget-object v0, p0, Lcom/anddoes/launcher/en;->b:Lcom/anddoes/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/anddoes/launcher/CellLayout;->g()V

    .line 3667
    :cond_9
    return-void
.end method
