.class Lcom/android/browser/SecPowerControl$13;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecPowerControl;->onDrawPowerCtrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private autobrightness:Z

.field private brightness:I

.field final synthetic this$0:Lcom/android/browser/SecPowerControl;

.field final synthetic val$tempAutoBright:Z

.field final synthetic val$tempbright:I


# direct methods
.method constructor <init>(Lcom/android/browser/SecPowerControl;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    iput p2, p0, Lcom/android/browser/SecPowerControl$13;->val$tempbright:I

    iput-boolean p3, p0, Lcom/android/browser/SecPowerControl$13;->val$tempAutoBright:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iget v0, p0, Lcom/android/browser/SecPowerControl$13;->val$tempbright:I

    iput v0, p0, Lcom/android/browser/SecPowerControl$13;->brightness:I

    .line 340
    iget-boolean v0, p0, Lcom/android/browser/SecPowerControl$13;->val$tempAutoBright:Z

    iput-boolean v0, p0, Lcom/android/browser/SecPowerControl$13;->autobrightness:Z

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    .line 344
    invoke-static {}, Lcom/android/browser/SecPowerControl;->access$500()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 345
    iget-boolean v1, p0, Lcom/android/browser/SecPowerControl$13;->autobrightness:Z

    if-eqz v1, :cond_68

    .line 346
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 347
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 349
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 350
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/SecPowerControl$13;->brightness:I

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 355
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_34
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    iget-boolean v2, p0, Lcom/android/browser/SecPowerControl$13;->autobrightness:Z

    #setter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v1, v2}, Lcom/android/browser/SecPowerControl;->access$002(Lcom/android/browser/SecPowerControl;Z)Z

    .line 358
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$000(Lcom/android/browser/SecPowerControl;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 359
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    :goto_53
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/SecPowerControl$13;->autobrightness:Z

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setAutoBrightness(Z)V

    .line 367
    :cond_5e
    sget-object v1, Lcom/android/browser/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    sput-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    .line 368
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v1}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    .line 370
    return-void

    .line 352
    :cond_68
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    iget v2, p0, Lcom/android/browser/SecPowerControl$13;->brightness:I

    invoke-virtual {v1, v2}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_34

    .line 361
    :cond_70
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$13;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_53
.end method
