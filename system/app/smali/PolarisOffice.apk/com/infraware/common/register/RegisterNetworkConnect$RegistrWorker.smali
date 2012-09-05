.class Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;
.super Ljava/lang/Thread;
.source "RegisterNetworkConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/register/RegisterNetworkConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegistrWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/register/RegisterNetworkConnect;


# direct methods
.method public constructor <init>(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    .line 172
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    #setter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$2(Lcom/infraware/common/register/RegisterNetworkConnect;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 180
    const/4 v4, 0x0

    .line 183
    .local v4, in:Ljava/io/BufferedReader;
    :try_start_1
    const-string v11, "DocMaster"

    const-string v12, "[RegisterNetworkConnect] Start"

    invoke-static {v11, v12}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, info:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mBrand:Ljava/lang/String;
    invoke-static {v12}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$3(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/brand;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mDevice:Ljava/lang/String;
    invoke-static {v12}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$4(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/device;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mModel:Ljava/lang/String;
    invoke-static {v12}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$5(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/model;Android/os;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mOSVer:Ljava/lang/String;
    invoke-static {v12}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$6(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/os_version"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 196
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 198
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.protocol.expect-continue"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 199
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.connection.timeout"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x1388

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 200
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    const-string v12, "http.socket.timeout"

    new-instance v13, Ljava/lang/Integer;

    const/16 v14, 0x1388

    invoke-direct {v13, v14}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v11, v12, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 201
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$7(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 203
    .local v3, httppost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v7, postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "username"

    iget-object v13, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mUserName:Ljava/lang/String;
    invoke-static {v13}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$8(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "email"

    iget-object v13, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mEmail:Ljava/lang/String;
    invoke-static {v13}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$9(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "locale"

    iget-object v13, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mLocale:Ljava/lang/String;
    invoke-static {v13}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$10(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "timezone"

    iget-object v13, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mTimezone:Ljava/lang/String;
    invoke-static {v13}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$11(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "kfield"

    iget-object v13, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mIMEI:Ljava/lang/String;
    invoke-static {v13}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$12(Lcom/infraware/common/register/RegisterNetworkConnect;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "info"

    invoke-direct {v11, v12, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v2, v7, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 214
    .local v2, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 215
    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 217
    .local v8, response:Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10f} :catch_225

    .line 219
    .end local v4           #in:Ljava/io/BufferedReader;
    .local v5, in:Ljava/io/BufferedReader;
    :try_start_10f
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 223
    const-string v11, "DocMaster"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[RegisterNetworkConnect] Result = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v11, "OK"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_14b

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x1

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_137} :catch_246

    move-object v4, v5

    .line 250
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #in:Ljava/io/BufferedReader;
    .end local v6           #info:Ljava/lang/String;
    .end local v7           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #result:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/BufferedReader;
    :goto_138
    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;
    invoke-static {v11}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$1(Lcom/infraware/common/register/RegisterNetworkConnect;)Lcom/infraware/common/register/SyncNetworkingStep;

    move-result-object v11

    if-eqz v11, :cond_14a

    .line 251
    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    #getter for: Lcom/infraware/common/register/RegisterNetworkConnect;->mNs:Lcom/infraware/common/register/SyncNetworkingStep;
    invoke-static {v11}, Lcom/infraware/common/register/RegisterNetworkConnect;->access$1(Lcom/infraware/common/register/RegisterNetworkConnect;)Lcom/infraware/common/register/SyncNetworkingStep;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/infraware/common/register/SyncNetworkingStep;->yourTurn(Z)V

    .line 252
    :cond_14a
    return-void

    .line 226
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #info:Ljava/lang/String;
    .restart local v7       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #result:Ljava/lang/String;
    :cond_14b
    :try_start_14b
    const-string v11, "ERROR=100"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_15a

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x3

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 227
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_15a
    const-string v11, "ERROR=101"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_169

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x4

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 228
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_169
    const-string v11, "ERROR=110"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_178

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x5

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 229
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_178
    const-string v11, "ERROR=111"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_187

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x6

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 230
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_187
    const-string v11, "ERROR=112"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_196

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/4 v12, 0x7

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 231
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_196
    const-string v11, "ERROR=200"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1a6

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0x8

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 232
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1a6
    const-string v11, "ERROR=201"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1b6

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0x9

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_138

    .line 233
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1b6
    const-string v11, "ERROR=210"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1c7

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xa

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 234
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1c7
    const-string v11, "ERROR=211"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1d8

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xb

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 235
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1d8
    const-string v11, "ERROR=220"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1e9

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xc

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 236
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1e9
    const-string v11, "ERROR=221"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1fa

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xd

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 237
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_1fa
    const-string v11, "ERROR=300"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_20b

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xe

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 238
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_20b
    const-string v11, "ERROR=500"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_21c

    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0xf

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 239
    .end local v4           #in:Ljava/io/BufferedReader;
    .restart local v5       #in:Ljava/io/BufferedReader;
    :cond_21c
    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0x10

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I
    :try_end_222
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_222} :catch_246

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto/16 :goto_138

    .line 241
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v2           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #httppost:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #info:Ljava/lang/String;
    .end local v7           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #result:Ljava/lang/String;
    :catch_225
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/Exception;
    :goto_226
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, strErr:Ljava/lang/String;
    const-string v11, "DocMaster"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[RegisterNetworkConnect] Errer : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/infraware/common/util/CMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v11, p0, Lcom/infraware/common/register/RegisterNetworkConnect$RegistrWorker;->this$0:Lcom/infraware/common/register/RegisterNetworkConnect;

    const/16 v12, 0x11

    iput v12, v11, Lcom/infraware/common/register/RegisterNetworkConnect;->mResult:I

    goto/16 :goto_138

    .line 241
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #in:Ljava/io/BufferedReader;
    .end local v10           #strErr:Ljava/lang/String;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v2       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v3       #httppost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #in:Ljava/io/BufferedReader;
    .restart local v6       #info:Ljava/lang/String;
    .restart local v7       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :catch_246
    move-exception v1

    move-object v4, v5

    .end local v5           #in:Ljava/io/BufferedReader;
    .restart local v4       #in:Ljava/io/BufferedReader;
    goto :goto_226
.end method
