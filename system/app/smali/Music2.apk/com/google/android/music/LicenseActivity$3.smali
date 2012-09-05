.class Lcom/google/android/music/LicenseActivity$3;
.super Landroid/webkit/WebViewClient;
.source "LicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/LicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/LicenseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/LicenseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/android/music/LicenseActivity$3;->this$0:Lcom/google/android/music/LicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity$3;->this$0:Lcom/google/android/music/LicenseActivity;

    #getter for: Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/google/android/music/LicenseActivity;->access$200(Lcom/google/android/music/LicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 159
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity$3;->this$0:Lcom/google/android/music/LicenseActivity;

    #setter for: Lcom/google/android/music/LicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/google/android/music/LicenseActivity;->access$202(Lcom/google/android/music/LicenseActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 160
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity$3;->this$0:Lcom/google/android/music/LicenseActivity;

    #getter for: Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/google/android/music/LicenseActivity;->access$300(Lcom/google/android/music/LicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    iget-object v0, p0, Lcom/google/android/music/LicenseActivity$3;->this$0:Lcom/google/android/music/LicenseActivity;

    #setter for: Lcom/google/android/music/LicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/google/android/music/LicenseActivity;->access$302(Lcom/google/android/music/LicenseActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 162
    return-void
.end method
