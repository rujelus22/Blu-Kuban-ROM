.class Lcom/infraware/common/register/UserRegister$MyWebClient;
.super Landroid/webkit/WebViewClient;
.source "UserRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/register/UserRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/UserRegister;


# direct methods
.method constructor <init>(Lcom/infraware/common/register/UserRegister;)V
    .registers 2
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/infraware/common/register/UserRegister$MyWebClient;->this$0:Lcom/infraware/common/register/UserRegister;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method
