.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPolicyDialogHelper"
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final downloadWhenOnWifi:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)V
    .registers 8
    .parameter
    .parameter "mobileDownloadsEnabled"

    .prologue
    const/4 v4, 0x0

    .line 677
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b00c5

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 680
    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    if-eqz p2, :cond_40

    .line 682
    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 683
    .local v1, content:Landroid/view/View;
    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    .line 684
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 689
    .end local v1           #content:Landroid/view/View;
    :goto_39
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;

    .line 690
    return-void

    .line 686
    :cond_40
    iput-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    .line 687
    const v2, 0x7f0b0107

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_39
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 693
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_d
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    .local v0, downloadPolicy:Ljava/lang/String;
    :goto_1a
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_policy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_policy_dialog_shown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #setter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z
    invoke-static {v1, v3}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1202(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)Z

    .line 701
    return-void

    .line 693
    .end local v0           #downloadPolicy:Ljava/lang/String;
    :cond_39
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    #getter for: Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$1000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b00c7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method
