.class Lcom/android/browser/ComboViewActivity$1;
.super Landroid/os/Handler;
.source "ComboViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ComboViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/ComboViewActivity;


# direct methods
.method constructor <init>(Lcom/android/browser/ComboViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/browser/ComboViewActivity$1;->this$0:Lcom/android/browser/ComboViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 112
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1c

    .line 120
    :goto_5
    return-void

    .line 114
    :pswitch_6
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    .line 115
    .local v1, mSettings:Lcom/android/browser/BrowserSettings;
    new-instance v0, Lcom/android/browser/SecPowerControl;

    iget-object v2, p0, Lcom/android/browser/ComboViewActivity$1;->this$0:Lcom/android/browser/ComboViewActivity;

    #getter for: Lcom/android/browser/ComboViewActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/browser/ComboViewActivity;->access$000(Lcom/android/browser/ComboViewActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/browser/SecPowerControl;-><init>(Landroid/app/Activity;Lcom/android/browser/BrowserSettings;)V

    .line 116
    .local v0, mPowerController:Lcom/android/browser/SecPowerControl;
    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->resetForBrightnessSetting()V

    .line 117
    invoke-virtual {v0}, Lcom/android/browser/SecPowerControl;->updatePowerSavingMode()V

    goto :goto_5

    .line 112
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
