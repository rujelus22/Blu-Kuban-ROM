.class final Lcom/anddoes/launcher/fo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;

.field private final synthetic b:Lcom/anddoes/launcher/ui/f;

.field private final synthetic c:Lcom/anddoes/launcher/ec;

.field private final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;Lcom/anddoes/launcher/ui/f;Lcom/anddoes/launcher/ec;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    iput-object p2, p0, Lcom/anddoes/launcher/fo;->b:Lcom/anddoes/launcher/ui/f;

    iput-object p3, p0, Lcom/anddoes/launcher/fo;->c:Lcom/anddoes/launcher/ec;

    iput-object p4, p0, Lcom/anddoes/launcher/fo;->d:Landroid/view/View;

    .line 5568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 5570
    iget-object v0, p0, Lcom/anddoes/launcher/fo;->b:Lcom/anddoes/launcher/ui/f;

    invoke-virtual {v0}, Lcom/anddoes/launcher/ui/f;->b()V

    .line 5571
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    const-class v2, Lcom/anddoes/launcher/MultiPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5572
    sget-object v1, Lcom/anddoes/launcher/MultiPickerActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    const v3, 0x7f060020

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5573
    sget-object v1, Lcom/anddoes/launcher/MultiPickerActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/fo;->c:Lcom/anddoes/launcher/ec;

    iget-wide v2, v2, Lcom/anddoes/launcher/ec;->h:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5574
    iget-object v1, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v2, p0, Lcom/anddoes/launcher/fo;->c:Lcom/anddoes/launcher/ec;

    iput-object v2, v1, Lcom/anddoes/launcher/LauncherApplication;->g:Lcom/anddoes/launcher/ec;

    .line 5575
    iget-object v1, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    iget-object v1, v1, Lcom/anddoes/launcher/Launcher;->e:Lcom/anddoes/launcher/LauncherApplication;

    iget-object v2, p0, Lcom/anddoes/launcher/fo;->d:Landroid/view/View;

    iput-object v2, v1, Lcom/anddoes/launcher/LauncherApplication;->h:Landroid/view/View;

    .line 5576
    iget-object v1, p0, Lcom/anddoes/launcher/fo;->a:Lcom/anddoes/launcher/Launcher;

    const/16 v2, 0xe

    invoke-virtual {v1, v0, v2}, Lcom/anddoes/launcher/Launcher;->a(Landroid/content/Intent;I)V

    .line 5577
    return-void
.end method
