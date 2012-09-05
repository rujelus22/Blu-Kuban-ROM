.class Lcom/sprint/dsa/dss/DsaWebViewClient$2;
.super Ljava/lang/Object;
.source "DsaWebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaWebViewClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$2;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$2;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    const-string v1, "This function available only on devices"

    .line 160
    const-string v2, "Emulator"

    .line 159
    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/dss/DsaDialogs;->popupDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method
