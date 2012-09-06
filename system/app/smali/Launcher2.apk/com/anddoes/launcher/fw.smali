.class final Lcom/anddoes/launcher/fw;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 3
    .parameter

    .prologue
    .line 4952
    iput-object p1, p0, Lcom/anddoes/launcher/fw;->a:Lcom/anddoes/launcher/Launcher;

    .line 4953
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4954
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 3
    .parameter

    .prologue
    .line 4958
    iget-object v0, p0, Lcom/anddoes/launcher/fw;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 4959
    iget-object v0, p0, Lcom/anddoes/launcher/fw;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {v0}, Lcom/anddoes/launcher/Launcher;->k(Lcom/anddoes/launcher/Launcher;)V

    .line 4960
    iget-object v0, p0, Lcom/anddoes/launcher/fw;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 4961
    return-void
.end method
