.class final Lcom/anddoes/launcher/fn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Lcom/anddoes/launcher/ec;

.field private final synthetic c:Lcom/anddoes/launcher/ui/f;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/ec;Lcom/anddoes/launcher/ui/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fn;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/fn;->b:Lcom/anddoes/launcher/ec;

    iput-object p3, p0, Lcom/anddoes/launcher/fn;->c:Lcom/anddoes/launcher/ui/f;

    .line 5553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 5555
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5556
    iget-object v0, p0, Lcom/anddoes/launcher/fn;->a:Lcom/anddoes/launcher/Launcher;

    const-class v2, Lcom/anddoes/launcher/SwipeActionsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5557
    iget-object v0, p0, Lcom/anddoes/launcher/fn;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0}, Lcom/anddoes/launcher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 5558
    iget-object v2, p0, Lcom/anddoes/launcher/fn;->b:Lcom/anddoes/launcher/ec;

    iput-object v2, v0, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 5559
    iget-object v0, p0, Lcom/anddoes/launcher/fn;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 5560
    iget-object v0, p0, Lcom/anddoes/launcher/fn;->c:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 5561
    return-void
.end method
