.class Lcom/sec/android/widgetapp/service/AccuRemoteService$2;
.super Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;
.source "AccuRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/service/AccuRemoteService;->performNetworkAccess(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

.field final synthetic val$method:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/service/AccuRemoteService;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iput-object p2, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$method:I

    invoke-direct {p0}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "position"
    .parameter "responseCode"
    .parameter "responseStatus"
    .parameter "responseBody"

    .prologue
    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/widgetapp/weatherclock/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "@@@"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http thread received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 132
    const-string v2, "NAME"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "RESPONSE_BODY"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget v2, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$method:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v3, v3, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_LIST:I

    if-ne v2, v3, :cond_56

    .line 136
    const-string v2, "method"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v3, v3, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_LIST:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    :goto_46
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 150
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget-object v2, v2, Lcom/sec/android/widgetapp/service/AccuRemoteService;->httpHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    iget-object v2, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    #calls: Lcom/sec/android/widgetapp/service/AccuRemoteService;->deleteMe(I)V
    invoke-static {v2, p1}, Lcom/sec/android/widgetapp/service/AccuRemoteService;->access$100(Lcom/sec/android/widgetapp/service/AccuRemoteService;I)V

    .line 152
    return-void

    .line 137
    :cond_56
    iget v2, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$method:I

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v3, v3, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_INFO:I

    if-ne v2, v3, :cond_6f

    .line 139
    const-string v2, "method"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v3, v3, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_INFO:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    const-string v2, "location"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 144
    :cond_6f
    const-string v2, "method"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->this$0:Lcom/sec/android/widgetapp/service/AccuRemoteService;

    iget v3, v3, Lcom/sec/android/widgetapp/service/AccuRemoteService;->METHOD_DETAIL:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v2, "location"

    iget-object v3, p0, Lcom/sec/android/widgetapp/service/AccuRemoteService$2;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method
