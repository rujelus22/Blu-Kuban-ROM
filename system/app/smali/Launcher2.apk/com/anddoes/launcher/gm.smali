.class final Lcom/anddoes/launcher/gm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/gl;

.field private b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/gl;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-static {v0}, Lcom/anddoes/launcher/gl;->b(Lcom/anddoes/launcher/gl;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/gm;->b:I

    .line 89
    return-void
.end method

.method public final run()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-static {v0}, Lcom/anddoes/launcher/gl;->a(Lcom/anddoes/launcher/gl;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-virtual {v0}, Lcom/anddoes/launcher/gl;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 79
    iget v0, p0, Lcom/anddoes/launcher/gm;->b:I

    iget-object v1, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-static {v1}, Lcom/anddoes/launcher/gl;->b(Lcom/anddoes/launcher/gl;)I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 80
    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-static {v0}, Lcom/anddoes/launcher/gl;->c(Lcom/anddoes/launcher/gl;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 81
    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-virtual {v0}, Lcom/anddoes/launcher/gl;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 82
    iget-object v0, p0, Lcom/anddoes/launcher/gm;->a:Lcom/anddoes/launcher/gl;

    invoke-static {v0}, Lcom/anddoes/launcher/gl;->d(Lcom/anddoes/launcher/gl;)V

    .line 85
    :cond_2f
    return-void
.end method
