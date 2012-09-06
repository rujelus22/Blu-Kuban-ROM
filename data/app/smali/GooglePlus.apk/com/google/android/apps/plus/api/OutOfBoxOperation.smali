.class public Lcom/google/android/apps/plus/api/OutOfBoxOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "OutOfBoxOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/OutOfBoxOperation$1;
    }
.end annotation


# instance fields
.field private mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 45
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    return-object v0
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 13
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 74
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 75
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v6, "HttpTransaction"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 76
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "---- Response type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3b
    sget-object v6, Lcom/google/android/apps/plus/api/OutOfBoxOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1c8

    .line 119
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unhandled response type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_6a
    :goto_6a
    return-void

    .line 82
    :pswitch_6b
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    .line 83
    const-string v6, "HttpTransaction"

    invoke-static {v6, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 84
    iget-object v6, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasSignupComplete()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 85
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signup complete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getSignupComplete()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_9f
    iget-object v6, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasView()Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 89
    iget-object v6, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v5

    .line 90
    .local v5, oobView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    View title: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    View header: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e6
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getActionCount()I

    move-result v6

    if-ge v3, v6, :cond_121

    .line 94
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    View action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v3}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getAction(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 98
    :cond_121
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getFieldList()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, fields:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_129
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_168

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;

    .line 100
    .local v1, field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    View field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_129

    .line 104
    .end local v1           #field:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;
    :cond_168
    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->hasDialog()Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 105
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    View dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getHeader()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;->getDialog()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxDialog;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v2           #fields:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxField;>;"
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #oobView:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;
    :cond_1a0
    iget-object v6, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v6}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->hasFailureView()Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 111
    const-string v6, "HttpTransaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure View: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->mOutOfBoxResponse:Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;->getFailureView()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxView;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 80
    :pswitch_data_1c8
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method public oob(Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;)V
    .registers 7
    .parameter "oobRequest"

    .prologue
    .line 55
    const-string v2, "HttpTransaction"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 56
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOB request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getAction()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxAction;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3c
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getInputCount()I

    move-result v2

    if-ge v0, v2, :cond_85

    .line 59
    invoke-virtual {p1, v0}, Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxRequest;->getInput(I)Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;

    move-result-object v1

    .line 60
    .local v1, oobif:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    const-string v2, "HttpTransaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OOB request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getType()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;->getValue()Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxFieldValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 65
    .end local v0           #i:I
    .end local v1           #oobif:Lcom/google/wireless/tacotruck/proto/Data$OutOfBoxInputField;
    :cond_85
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->OUT_OF_BOX:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/plus/api/OutOfBoxOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 66
    return-void
.end method
