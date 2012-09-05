.class Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "SnsAccountFbAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 789
    iput-object p1, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 23
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
    .line 794
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 795
    .local v6, ReqID:Ljava/lang/Integer;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 796
    .local v3, BSuccess:Ljava/lang/Boolean;
    if-eqz p4, :cond_a9

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 797
    .local v9, sUri:Ljava/lang/String;
    :goto_e
    move/from16 v5, p5

    .line 798
    .local v5, HttpStatusCode:I
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 799
    .local v4, ErrCode:Ljava/lang/Integer;
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 801
    .local v7, SubErrCode:Ljava/lang/Integer;
    const-string v10, "SnsAccountFb"

    const-string v11, "###################### CALLBACK RECEIVE <START> #####################"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const-string v10, "SnsAccountFb"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RECEIVED DATA : ReqID = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], bSuccess = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], URI = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], HttpStatusCode = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], ErrCode = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], SubErrCode = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], reason = ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p9

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    if-eqz p2, :cond_ac

    .line 811
    iget-object v10, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1600(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 812
    .local v8, msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1600(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    :goto_a1
    const-string v10, "SnsAccountFb"

    const-string v11, "###################### CALLBACK RECEIVE <END> #####################"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 796
    .end local v4           #ErrCode:Ljava/lang/Integer;
    .end local v5           #HttpStatusCode:I
    .end local v7           #SubErrCode:Ljava/lang/Integer;
    .end local v8           #msg:Landroid/os/Message;
    .end local v9           #sUri:Ljava/lang/String;
    :cond_a9
    const/4 v9, 0x0

    goto/16 :goto_e

    .line 817
    .restart local v4       #ErrCode:Ljava/lang/Integer;
    .restart local v5       #HttpStatusCode:I
    .restart local v7       #SubErrCode:Ljava/lang/Integer;
    .restart local v9       #sUri:Ljava/lang/String;
    :cond_ac
    iget-object v10, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1600(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    move/from16 v0, p6

    move/from16 v1, p7

    move-object/from16 v2, p9

    invoke-virtual {v10, v11, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 818
    .restart local v8       #msg:Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity$SnsCallback;->this$0:Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;

    #getter for: Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;->access$1600(Lcom/sec/android/app/snsaccountfb/activity/SnsAccountFbAuthenticatorActivity;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a1
.end method
