.class Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "SnsAccountMsAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 24
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrSpList"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 310
    .local v4, ReqID:Ljava/lang/Integer;
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 311
    .local v1, BSuccess:Ljava/lang/Boolean;
    if-eqz p4, :cond_b7

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, sUri:Ljava/lang/String;
    :goto_e
    move/from16 v3, p5

    .line 313
    .local v3, HttpStatusCode:I
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 314
    .local v2, ErrCode:Ljava/lang/Integer;
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 316
    .local v5, SubErrCode:Ljava/lang/Integer;
    const-string v8, "SnsAccountMs"

    const-string v9, "###################### CALLBACK RECEIVE <START> #####################"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v8, "SnsAccountMs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RECEIVED DATA : ReqID = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], bSuccess = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], URI = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], HttpStatusCode = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], ErrCode = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], SubErrCode = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], reason = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v8, "SnsAccountMs"

    const-string v9, "###################### CALLBACK RECEIVE <END> #####################"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 328
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "time"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    iget-object v8, p0, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;

    invoke-virtual {v8}, Lcom/sec/android/app/snsaccountms/myspace/SnsAccountMsAuthenticatorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    const-string v10, "synctype = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "contacts"

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 333
    return-void

    .line 311
    .end local v2           #ErrCode:Ljava/lang/Integer;
    .end local v3           #HttpStatusCode:I
    .end local v5           #SubErrCode:Ljava/lang/Integer;
    .end local v6           #sUri:Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_b7
    const/4 v6, 0x0

    goto/16 :goto_e
.end method
