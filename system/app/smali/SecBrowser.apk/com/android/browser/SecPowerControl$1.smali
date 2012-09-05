.class Lcom/android/browser/SecPowerControl$1;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/SecPowerControl;->onDrawPowerCtrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/android/browser/SecPowerControl;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$000(Lcom/android/browser/SecPowerControl;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 156
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    iget-object v2, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v2}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    .line 157
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$200(Lcom/android/browser/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #setter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v1, v3}, Lcom/android/browser/SecPowerControl;->access$002(Lcom/android/browser/SecPowerControl;Z)Z

    .line 159
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :goto_36
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v2}, Lcom/android/browser/SecPowerControl;->access$000(Lcom/android/browser/SecPowerControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserSettings;->setAutoBrightness(Z)V

    .line 171
    return-void

    .line 161
    :cond_46
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 164
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 165
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mbrightProgressBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$200(Lcom/android/browser/SecPowerControl;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #setter for: Lcom/android/browser/SecPowerControl;->mAutoBright:Z
    invoke-static {v1, v4}, Lcom/android/browser/SecPowerControl;->access$002(Lcom/android/browser/SecPowerControl;Z)Z

    .line 167
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$1;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_36
.end method
