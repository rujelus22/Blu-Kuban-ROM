.class Lcom/samsung/SMT/DisplayLicense$3;
.super Landroid/webkit/WebViewClient;
.source "DisplayLicense.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/SMT/DisplayLicense;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/SMT/DisplayLicense;


# direct methods
.method constructor <init>(Lcom/samsung/SMT/DisplayLicense;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/SMT/DisplayLicense$3;->this$0:Lcom/samsung/SMT/DisplayLicense;

    .line 209
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/SMT/DisplayLicense$3;->this$0:Lcom/samsung/SMT/DisplayLicense;

    #getter for: Lcom/samsung/SMT/DisplayLicense;->m_oTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/SMT/DisplayLicense;->access$2(Lcom/samsung/SMT/DisplayLicense;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 215
    return-void
.end method
