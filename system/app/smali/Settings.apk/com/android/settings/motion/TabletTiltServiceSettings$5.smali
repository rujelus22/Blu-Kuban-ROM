.class Lcom/android/settings/motion/TabletTiltServiceSettings$5;
.super Ljava/lang/Object;
.source "TabletTiltServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletTiltServiceSettings;->showUseMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TabletTiltServiceSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$5;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 207
    const-string v1, "TiltServiceSettings"

    const-string v2, "use motion dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$5;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #getter for: Lcom/android/settings/motion/TabletTiltServiceSettings;->mMotions:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$700(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$5;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$600(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 209
    return-void
.end method
