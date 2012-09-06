.class final Lcom/anddoes/launcher/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/DeleteDropTarget;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/DeleteDropTarget;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v0}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Lcom/anddoes/launcher/DeleteDropTarget;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v0}, Lcom/anddoes/launcher/DeleteDropTarget;->b(Lcom/anddoes/launcher/DeleteDropTarget;)V

    .line 56
    iget-object v0, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iget-object v1, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v1}, Lcom/anddoes/launcher/DeleteDropTarget;->c(Lcom/anddoes/launcher/DeleteDropTarget;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/anddoes/launcher/DeleteDropTarget;->a(Lcom/anddoes/launcher/DeleteDropTarget;Z)V

    .line 57
    iget-object v0, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v0}, Lcom/anddoes/launcher/DeleteDropTarget;->d(Lcom/anddoes/launcher/DeleteDropTarget;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    iget v1, v1, Lcom/anddoes/launcher/DeleteDropTarget;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 58
    iget-object v0, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v0}, Lcom/anddoes/launcher/DeleteDropTarget;->e(Lcom/anddoes/launcher/DeleteDropTarget;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/bj;->a:Lcom/anddoes/launcher/DeleteDropTarget;

    invoke-static {v1}, Lcom/anddoes/launcher/DeleteDropTarget;->e(Lcom/anddoes/launcher/DeleteDropTarget;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :cond_40
    return-void
.end method
