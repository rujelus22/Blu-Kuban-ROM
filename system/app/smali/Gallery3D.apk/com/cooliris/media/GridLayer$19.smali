.class Lcom/cooliris/media/GridLayer$19;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->motionDialogInitialOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2770
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v4, 0x1

    .line 2774
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2776
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2778
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/cooliris/media/MotionDetector;->setMotionUse(Z)V

    .line 2780
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v1, settingIngent:Landroid/content/Intent;
    const-string v2, "isEnable"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2783
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2, v1}, Lcom/cooliris/media/Gallery;->sendBroadcast(Landroid/content/Intent;)V

    .line 2785
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #setter for: Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z
    invoke-static {v2, v4}, Lcom/cooliris/media/GridLayer;->access$402(Lcom/cooliris/media/GridLayer;Z)Z

    .line 2786
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$700(Lcom/cooliris/media/GridLayer;)Landroid/content/DialogInterface;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 2787
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$700(Lcom/cooliris/media/GridLayer;)Landroid/content/DialogInterface;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2788
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v3, 0x0

    #setter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v2, v3}, Lcom/cooliris/media/GridLayer;->access$702(Lcom/cooliris/media/GridLayer;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 2790
    :cond_5f
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v3, 0x0

    #setter for: Lcom/cooliris/media/GridLayer;->mMotionDialog:Z
    invoke-static {v2, v3}, Lcom/cooliris/media/GridLayer;->access$1002(Lcom/cooliris/media/GridLayer;Z)Z

    .line 2792
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2793
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.GSensorSettings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2795
    iget-object v2, p0, Lcom/cooliris/media/GridLayer$19;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/Gallery;

    invoke-virtual {v2, v0}, Lcom/cooliris/media/Gallery;->startActivity(Landroid/content/Intent;)V

    .line 2796
    return-void
.end method
