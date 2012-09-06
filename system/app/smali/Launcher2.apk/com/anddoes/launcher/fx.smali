.class final Lcom/anddoes/launcher/fx;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 4938
    iput-object p1, p0, Lcom/anddoes/launcher/fx;->a:Lcom/anddoes/launcher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/anddoes/launcher/Launcher;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4938
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/fx;-><init>(Lcom/anddoes/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4941
    iget-object v0, p0, Lcom/anddoes/launcher/fx;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 4942
    iget-object v0, p0, Lcom/anddoes/launcher/fx;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->x()V

    .line 4943
    iget-object v0, p0, Lcom/anddoes/launcher/fx;->a:Lcom/anddoes/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->b(Lcom/anddoes/launcher/Launcher;Z)V

    .line 4944
    iget-object v0, p0, Lcom/anddoes/launcher/fx;->a:Lcom/anddoes/launcher/Launcher;

    invoke-static {}, Lcom/anddoes/launcher/Launcher;->a()V

    .line 4945
    return-void
.end method
