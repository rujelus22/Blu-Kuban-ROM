.class Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$1;
.super Ljava/lang/Object;
.source "HandwritingHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;


# direct methods
.method constructor <init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient$1;->this$0:Lcom/google/research/handwriting/networkrecognizer/HandwritingHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 96
    const-wide/32 v0, 0x186a0

    return-wide v0
.end method
