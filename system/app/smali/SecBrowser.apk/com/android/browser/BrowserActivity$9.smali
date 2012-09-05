.class Lcom/android/browser/BrowserActivity$9;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->motionDialogInitialOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

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

    .line 572
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_engine"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_zooming"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v3}, Lcom/android/browser/BrowserActivity;->setMotionUse(Z)V

    .line 577
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, settingIntent:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1, v0}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 591
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$9;->this$0:Lcom/android/browser/BrowserActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/BrowserActivity;->mMotionTiltDialog:Landroid/app/AlertDialog;

    .line 592
    return-void
.end method
