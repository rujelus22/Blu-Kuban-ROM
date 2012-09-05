.class Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$12;
.super Ljava/lang/Object;
.source "MusicSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$12;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 556
    sget-object v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->sDRMInterface:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMCleanupROStorage()I

    move-result v0

    if-nez v0, :cond_15

    .line 557
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity$12;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    const v1, 0x7f09016b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 560
    :cond_15
    return-void
.end method
