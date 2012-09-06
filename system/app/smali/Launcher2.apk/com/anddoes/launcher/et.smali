.class final Lcom/anddoes/launcher/et;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/et;->b:Lcom/anddoes/launcher/Launcher;

    .line 4081
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/et;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3
    .parameter

    .prologue
    .line 4099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anddoes/launcher/et;->a:Z

    .line 4100
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 4090
    iget-boolean v0, p0, Lcom/anddoes/launcher/et;->a:Z

    if-nez v0, :cond_14

    .line 4091
    iget-object v0, p0, Lcom/anddoes/launcher/et;->b:Lcom/anddoes/launcher/Launcher;

    iget-object v0, v0, Lcom/anddoes/launcher/Launcher;->f:Lcom/anddoes/launcher/preference/f;

    iget v0, v0, Lcom/anddoes/launcher/preference/f;->z:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_14

    .line 4092
    iget-object v0, p0, Lcom/anddoes/launcher/et;->b:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Z)V

    .line 4095
    :cond_14
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter

    .prologue
    .line 4086
    return-void
.end method
