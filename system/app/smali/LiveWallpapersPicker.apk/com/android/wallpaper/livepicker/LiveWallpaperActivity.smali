.class public Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;
.super Landroid/app/Activity;
.source "LiveWallpaperActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;
    }
.end annotation


# static fields
.field public static mWallpaperInfo:Landroid/app/WallpaperInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 63
    const/16 v1, 0x64

    if-ne p1, v1, :cond_26

    .line 64
    const/4 v1, -0x1

    if-ne p2, v1, :cond_26

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.wallpaper.livepicker.SET_LIVE_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_23

    .line 67
    const-string v1, "WALLPAPER_PACKAGE"

    sget-object v2, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->mWallpaperInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    :cond_23
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->finish()V

    .line 73
    .end local v0           #intent:Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/high16 v2, 0x7f03

    invoke-virtual {p0, v2}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 50
    .local v1, fragmentView:Landroid/app/Fragment;
    if-nez v1, :cond_21

    .line 54
    invoke-static {}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;->newInstance()Lcom/android/wallpaper/livepicker/LiveWallpaperActivity$WallpaperDialog;

    move-result-object v0

    .line 55
    .local v0, fragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/wallpaper/livepicker/LiveWallpaperActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 57
    .end local v0           #fragment:Landroid/app/DialogFragment;
    :cond_21
    return-void
.end method
