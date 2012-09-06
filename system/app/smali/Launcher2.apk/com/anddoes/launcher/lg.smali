.class final Lcom/anddoes/launcher/lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Workspace;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Workspace;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/lg;->a:Lcom/anddoes/launcher/Workspace;

    iput-object p2, p0, Lcom/anddoes/launcher/lg;->b:Ljava/lang/Runnable;

    .line 3243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 3245
    iget-object v0, p0, Lcom/anddoes/launcher/lg;->a:Lcom/anddoes/launcher/Workspace;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Workspace;->A()Z

    move-result v0

    if-nez v0, :cond_e

    .line 3246
    iget-object v0, p0, Lcom/anddoes/launcher/lg;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3250
    :goto_d
    return-void

    .line 3248
    :cond_e
    iget-object v0, p0, Lcom/anddoes/launcher/lg;->a:Lcom/anddoes/launcher/Workspace;

    iget-object v1, p0, Lcom/anddoes/launcher/lg;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;Ljava/lang/Runnable;)V

    goto :goto_d
.end method
