.class final Lcom/anddoes/launcher/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/a/g;

.field private final synthetic b:Z

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/a/g;ZLandroid/app/Activity;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/a/h;->a:Lcom/anddoes/launcher/a/g;

    iput-boolean p2, p0, Lcom/anddoes/launcher/a/h;->b:Z

    iput-object p3, p0, Lcom/anddoes/launcher/a/h;->c:Landroid/app/Activity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-boolean v0, p0, Lcom/anddoes/launcher/a/h;->b:Z

    if-eqz v0, :cond_17

    .line 217
    iget-object v0, p0, Lcom/anddoes/launcher/a/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/LauncherApplication;

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/anddoes/launcher/LauncherApplication;->f:Z

    .line 219
    iget-object v0, p0, Lcom/anddoes/launcher/a/h;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 221
    :cond_17
    return-void
.end method
