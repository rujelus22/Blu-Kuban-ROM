.class Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->processResult(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

.field final synthetic val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iput-object p3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->val$msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iget v2, v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->statusCode:I

    iget-object v3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iget-object v3, v3, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iget-object v4, v4, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
