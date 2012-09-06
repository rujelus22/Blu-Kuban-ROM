.class final Lcom/anddoes/launcher/cw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/FolderIcon;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/FolderIcon;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cw;->a:Lcom/anddoes/launcher/FolderIcon;

    .line 799
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/anddoes/launcher/cw;->a:Lcom/anddoes/launcher/FolderIcon;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    .line 808
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 802
    iget-object v0, p0, Lcom/anddoes/launcher/cw;->a:Lcom/anddoes/launcher/FolderIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/FolderIcon;->e:Z

    .line 803
    return-void
.end method
