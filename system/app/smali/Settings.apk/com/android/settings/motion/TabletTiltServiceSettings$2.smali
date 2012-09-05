.class Lcom/android/settings/motion/TabletTiltServiceSettings$2;
.super Ljava/lang/Object;
.source "TabletTiltServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TabletTiltServiceSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 80
    iput-object p1, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$100(Lcom/android/settings/motion/TabletTiltServiceSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->startTryActually(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$200(Lcom/android/settings/motion/TabletTiltServiceSettings;Z)V

    .line 87
    :goto_14
    return-void

    .line 85
    :cond_15
    iget-object v0, p0, Lcom/android/settings/motion/TabletTiltServiceSettings$2;->this$0:Lcom/android/settings/motion/TabletTiltServiceSettings;

    #calls: Lcom/android/settings/motion/TabletTiltServiceSettings;->showUseMotionDialog()V
    invoke-static {v0}, Lcom/android/settings/motion/TabletTiltServiceSettings;->access$300(Lcom/android/settings/motion/TabletTiltServiceSettings;)V

    goto :goto_14
.end method
