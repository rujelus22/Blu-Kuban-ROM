.class final Lcom/anddoes/launcher/cs;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Folder;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Folder;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    iput-boolean p2, p0, Lcom/anddoes/launcher/cs;->b:Z

    .line 561
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    iget-boolean v1, p0, Lcom/anddoes/launcher/cs;->b:Z

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;Z)V

    .line 565
    iget-object v0, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;I)V

    .line 566
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 5
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    .line 571
    iget-object v1, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    invoke-static {v1}, Lcom/anddoes/launcher/Folder;->c(Lcom/anddoes/launcher/Folder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060297

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-static {v0, v1}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/anddoes/launcher/cs;->a:Lcom/anddoes/launcher/Folder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Folder;->a(Lcom/anddoes/launcher/Folder;I)V

    .line 574
    return-void
.end method
