.class Lcom/android/browser/SecPowerControl$11;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 286
    iput-object p1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    invoke-static {}, Lcom/android/browser/SecPowerControl;->access$500()Z

    move-result v1

    if-nez v1, :cond_31

    .line 290
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getAutoBrightness()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 291
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 292
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 294
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/browser/SecPowerControl;->access$300(Lcom/android/browser/SecPowerControl;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 300
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_31
    :goto_31
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-virtual {v1}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    .line 301
    sget-object v1, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    sput-object v1, Lcom/android/browser/SecPowerControl;->strTempPowerSavingMode:Ljava/lang/String;

    .line 303
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    const-string v2, "ColorizeButton"

    sget-object v3, Lcom/android/browser/SecPowerControl;->strPowerSavingMode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/browser/SecPowerControl;->setColorizeButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 296
    :cond_44
    iget-object v1, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    iget-object v2, p0, Lcom/android/browser/SecPowerControl$11;->this$0:Lcom/android/browser/SecPowerControl;

    #getter for: Lcom/android/browser/SecPowerControl;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v2}, Lcom/android/browser/SecPowerControl;->access$100(Lcom/android/browser/SecPowerControl;)Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    goto :goto_31
.end method
