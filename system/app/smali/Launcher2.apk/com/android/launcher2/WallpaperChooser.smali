.class public Lcom/android/launcher2/WallpaperChooser;
.super Landroid/app/Activity;
.source "WallpaperChooser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.WallpaperChooser"


# instance fields
.field fragmentView:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "icicle"

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WallpaperChooser;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f060036

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/WallpaperChooser;->fragmentView:Landroid/app/Fragment;

    .line 36
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooser;->fragmentView:Landroid/app/Fragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 40
    iget-object v1, p0, Lcom/android/launcher2/WallpaperChooser;->fragmentView:Landroid/app/Fragment;

    if-nez v1, :cond_2d

    .line 44
    invoke-static {}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->newInstance()Lcom/android/launcher2/WallpaperChooserDialogFragment;

    move-result-object v0

    .line 45
    .local v0, fragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooser;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 47
    .end local v0           #fragment:Landroid/app/DialogFragment;
    :cond_2d
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooser;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooser;->fragmentView:Landroid/app/Fragment;

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooser;->fragmentView:Landroid/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 55
    :cond_13
    return-void
.end method
