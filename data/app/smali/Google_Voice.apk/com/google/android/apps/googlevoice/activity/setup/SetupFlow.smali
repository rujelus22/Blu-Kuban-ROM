.class public interface abstract Lcom/google/android/apps/googlevoice/activity/setup/SetupFlow;
.super Ljava/lang/Object;
.source "SetupFlow.java"


# virtual methods
.method public abstract configureVoicemailActivityDidRestart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;)V
.end method

.method public abstract dialDiversionCode()V
.end method

.method public abstract getAccountsAdapter()Lcom/google/android/apps/googlevoice/AccountsAdapter;
.end method

.method public abstract getAccountsClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getAddAccountClickListener(Landroid/app/Activity;)Landroid/view/View$OnClickListener;
.end method

.method public abstract getCallingModesAdapter()Lcom/google/android/apps/googlevoice/CallingModesAdapter;
.end method

.method public abstract getCallingModesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getCarrierProvisionAdapter()Lcom/google/android/apps/googlevoice/CarrierProvisionAdapter;
.end method

.method public abstract getCarrierProvisionClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getHtmlForMessage()Ljava/lang/String;
.end method

.method public abstract getPhonesAdapter()Lcom/google/android/apps/googlevoice/PhonesAdapter;
.end method

.method public abstract getPhonesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end method

.method public abstract getPin()Ljava/lang/String;
.end method

.method public abstract getPinWatcher()Landroid/text/TextWatcher;
.end method

.method public abstract getProgressTitle(I)Ljava/lang/String;
.end method

.method public abstract getResultCode()I
.end method

.method public abstract getResultExtra()Landroid/content/Intent;
.end method

.method public abstract getSkipCarrierProvisioningListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getSkipConfigureVoicemailListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUseDifferentAccountClickListener()Landroid/view/View$OnClickListener;
.end method

.method public abstract getWebViewClient()Landroid/webkit/WebViewClient;
.end method

.method public abstract goBack()V
.end method

.method public abstract isDeviceSetup()Z
.end method

.method public abstract isFinished()Z
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onCreateDialog(I)Landroid/app/Dialog;
.end method

.method public abstract onNextClicked()V
.end method

.method public abstract onPageActivityStart(Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;Lcom/google/android/apps/googlevoice/DialogManager;)V
.end method

.method public abstract onPrepareDialog(ILandroid/app/Dialog;)V
.end method

.method public abstract reloadCurrentPage()V
.end method

.method public abstract resetButtons()V
.end method

.method public abstract saveStateToBundle(Landroid/os/Bundle;)V
.end method

.method public abstract setDeviceSetup(Z)V
.end method

.method public abstract setPin(Ljava/lang/String;)V
.end method

.method public abstract setSignInPassword(Ljava/lang/String;)V
.end method

.method public abstract setSignInUsername(Ljava/lang/String;)V
.end method

.method public abstract startFlow(Landroid/content/Intent;)V
.end method
