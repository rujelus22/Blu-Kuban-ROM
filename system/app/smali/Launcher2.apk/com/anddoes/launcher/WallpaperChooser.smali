.class public Lcom/anddoes/launcher/WallpaperChooser;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/WallpaperChooser;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/anddoes/launcher/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 35
    if-nez v0, :cond_23

    .line 39
    invoke-static {}, Lcom/anddoes/launcher/WallpaperChooserDialogFragment;->a()Lcom/anddoes/launcher/WallpaperChooserDialogFragment;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/anddoes/launcher/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    :cond_23
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 47
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/WallpaperChooser"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 48
    return-void
.end method
