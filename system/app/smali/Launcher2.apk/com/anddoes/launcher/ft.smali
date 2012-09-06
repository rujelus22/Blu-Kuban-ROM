.class final Lcom/anddoes/launcher/ft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ft;->a:Lcom/anddoes/launcher/Launcher;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1350
    :try_start_0
    iget-object v0, p0, Lcom/anddoes/launcher/ft;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->i(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gk;

    move-result-object v0

    if-nez v0, :cond_14

    .line 1351
    iget-object v0, p0, Lcom/anddoes/launcher/ft;->a:Lcom/anddoes/launcher/Launcher;

    new-instance v1, Lcom/anddoes/launcher/gk;

    iget-object v2, p0, Lcom/anddoes/launcher/ft;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {v1, v2}, Lcom/anddoes/launcher/gk;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/gk;)V

    .line 1353
    :cond_14
    iget-object v0, p0, Lcom/anddoes/launcher/ft;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->i(Lcom/anddoes/launcher/Launcher;)Lcom/anddoes/launcher/gk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/gk;->startListening()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 1356
    :goto_1d
    return-void

    :catch_1e
    move-exception v0

    goto :goto_1d
.end method
