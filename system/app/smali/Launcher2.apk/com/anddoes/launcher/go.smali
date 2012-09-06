.class final Lcom/anddoes/launcher/go;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/LauncherApplication;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/LauncherApplication;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/go;->a:Lcom/anddoes/launcher/LauncherApplication;

    .line 204
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 5
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/anddoes/launcher/go;->a:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v0, v0, Lcom/anddoes/launcher/LauncherApplication;->a:Lcom/anddoes/launcher/LauncherModel;

    iget-object v1, p0, Lcom/anddoes/launcher/go;->a:Lcom/anddoes/launcher/LauncherApplication;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/LauncherModel;->a(Landroid/content/Context;Z)V

    .line 208
    return-void
.end method
