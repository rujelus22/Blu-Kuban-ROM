.class Lcom/cooliris/media/GridLayer$20;
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
    .line 2801
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 2804
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2806
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2808
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/cooliris/media/MotionDetector;->setMotionUse(Z)V

    .line 2810
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2811
    .local v0, settingIngent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2812
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/GridLayer;->access$900(Lcom/cooliris/media/GridLayer;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1, v0}, Lcom/cooliris/media/Gallery;->sendBroadcast(Landroid/content/Intent;)V

    .line 2814
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    #setter for: Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z
    invoke-static {v1, v3}, Lcom/cooliris/media/GridLayer;->access$402(Lcom/cooliris/media/GridLayer;Z)Z

    .line 2815
    iget-object v1, p0, Lcom/cooliris/media/GridLayer$20;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/cooliris/media/GridLayer;->access$700(Lcom/cooliris/media/GridLayer;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2816
    return-void
.end method
