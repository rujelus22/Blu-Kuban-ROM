.class Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;
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
    .line 133
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    iput-object p2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iput-object p3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$msg:Landroid/os/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, -0x1

    .line 136
    iget-object v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    #getter for: Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J
    invoke-static {v0}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->access$000(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_1b

    .line 137
    iget-object v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const-string v3, "HTTP parse error"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_1a
    return-void

    .line 139
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->val$msg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const-string v3, "HTTP parse error"

    const-string v4, ""

    iget-object v5, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;->this$0:Lcom/sec/android/daemonapp/http/AdvancedHttpClient;

    #getter for: Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J
    invoke-static {v5}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->access$000(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;)J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_1a
.end method
