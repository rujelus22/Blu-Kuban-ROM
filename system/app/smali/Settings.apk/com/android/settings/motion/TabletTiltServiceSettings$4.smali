.class Lcom/android/settings/motion/TabletTiltServiceSettings$4;
.super Ljava/lang/Object;
.source "TabletTiltServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 196
    iput-object p1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$4;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 198
    const-string v0, "TiltServiceSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$4;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$500(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$4;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->startTryActually(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$200(Lcom/android/settings/motion/TabletTiltServiceSettings;Z)V

    .line 201
    return-void
.end method
