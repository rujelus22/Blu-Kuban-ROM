.class Lcom/android/settings/motion/TabletWaveServiceSettings$6;
.super Ljava/lang/Object;
.source "TabletWaveServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletWaveServiceSettings;->showUseMotionDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

.field final synthetic val$isHome:Z


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    iput-boolean p2, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->val$isHome:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 298
    const-string v0, "WaveServiceSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$900(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iget-boolean v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->val$isHome:Z

    if-eqz v0, :cond_1e

    .line 301
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->startHomeTryActually(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$300(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V

    .line 305
    :goto_1d
    return-void

    .line 303
    :cond_1e
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$6;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->startGalleryTryActually(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$700(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V

    goto :goto_1d
.end method
