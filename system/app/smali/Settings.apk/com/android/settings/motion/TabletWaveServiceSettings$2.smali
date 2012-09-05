.class Lcom/android/settings/motion/TabletWaveServiceSettings$2;
.super Ljava/lang/Object;
.source "TabletWaveServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletWaveServiceSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletWaveServiceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$200(Lcom/android/settings/motion/TabletWaveServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->startHomeTryActually(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$300(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V

    .line 96
    :goto_14
    return-void

    .line 94
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/TabletWaveServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletWaveServiceSettings;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/motion/TabletWaveServiceSettings;->showUseMotionDialog(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/TabletWaveServiceSettings;->access$400(Lcom/android/settings/motion/TabletWaveServiceSettings;Z)V

    goto :goto_14
.end method
