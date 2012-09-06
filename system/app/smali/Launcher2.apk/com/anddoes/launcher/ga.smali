.class final Lcom/anddoes/launcher/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/fy;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/fy;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ga;->a:Lcom/anddoes/launcher/fy;

    .line 4888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 4890
    iget-object v0, p0, Lcom/anddoes/launcher/ga;->a:Lcom/anddoes/launcher/fy;

    invoke-static {v0}, Lcom/anddoes/launcher/fy;->a(Lcom/anddoes/launcher/fy;)Lcom/anddoes/launcher/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anddoes/launcher/Launcher;->a(Lcom/anddoes/launcher/Launcher;Landroid/app/Dialog;)V

    .line 4891
    return-void
.end method
