.class Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;
.super Landroid/webkit/WebViewClient;
.source "OpenSourceLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    invoke-virtual {v0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    #getter for: Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->access$000(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    :cond_11
    iget-object v0, p0, Lcom/samsung/swift/applet/OpenSourceLicensesActivity$2;->this$0:Lcom/samsung/swift/applet/OpenSourceLicensesActivity;

    const/4 v1, 0x0

    #setter for: Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->alertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/samsung/swift/applet/OpenSourceLicensesActivity;->access$002(Lcom/samsung/swift/applet/OpenSourceLicensesActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 59
    return-void
.end method
