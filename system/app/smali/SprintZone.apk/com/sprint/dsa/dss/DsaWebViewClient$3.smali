.class Lcom/sprint/dsa/dss/DsaWebViewClient$3;
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

.field private final synthetic val$finalTitle:Ljava/lang/String;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaWebViewClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    iput-object p2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->val$msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->val$finalTitle:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->this$0:Lcom/sprint/dsa/dss/DsaWebViewClient;

    #getter for: Lcom/sprint/dsa/dss/DsaWebViewClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaWebViewClient;->access$0(Lcom/sprint/dsa/dss/DsaWebViewClient;)Lcom/sprint/dsa/dss/DsaClient;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->val$msg:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/dsa/dss/DsaWebViewClient$3;->val$finalTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/dss/DsaDialogs;->popupDialog(Lcom/sprint/dsa/dss/DsaClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method
