.class Lcom/sprint/dsa/dss/DsaHttpClient$1;
.super Ljava/util/TimerTask;
.source "DsaHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaHttpClient;->warmLoadURL(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaHttpClient;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaHttpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    .line 245
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient$1;->this$0:Lcom/sprint/dsa/dss/DsaHttpClient;

    #calls: Lcom/sprint/dsa/dss/DsaHttpClient;->pingServer()V
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaHttpClient;->access$0(Lcom/sprint/dsa/dss/DsaHttpClient;)V

    .line 248
    return-void
.end method
