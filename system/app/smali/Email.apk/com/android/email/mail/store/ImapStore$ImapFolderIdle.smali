.class Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;
.super Lcom/android/email/mail/store/ImapStore$ImapFolder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapFolderIdle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "store"
    .parameter "name"

    .prologue
    .line 1953
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 1954
    invoke-direct {p0, p2, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 1955
    return-void
.end method


# virtual methods
.method public startIdling(Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;)V
    .registers 12
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1959
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startIdling | Cap : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mCapabilityResponse:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    const-string v8, "IDLE"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore;->isCapabilitySupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1a6

    .line 1963
    :try_start_26
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v7, :cond_32

    .line 1966
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 1969
    :cond_32
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    if-eqz v7, :cond_46

    .line 1970
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    const v8, 0xdbba0

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 1975
    :cond_46
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "IDLE"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1978
    const/4 v2, 0x0

    .line 1980
    .local v2, expungeReceived:Z
    :cond_4f
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1981
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .line 1986
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_60
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-nez v7, :cond_181

    .line 1987
    const/4 v7, 0x1

    const-string v8, "EXPUNGE"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 1990
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXPUNGE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v2, 0x1

    .line 2026
    :cond_77
    :goto_77
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-nez v7, :cond_4f

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_80
    .catchall {:try_start_26 .. :try_end_80} :catchall_da
    .catch Ljava/net/SocketTimeoutException; {:try_start_26 .. :try_end_80} :catch_b1
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_80} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_80} :catch_127

    move-result v7

    if-eqz v7, :cond_4f

    .line 2043
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    .line 2046
    const-string v7, "Email:ImapStore"

    const-string v8, "Got response for IDLE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :goto_8d
    return-void

    .line 1983
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_8e
    :try_start_8e
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v4

    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_60

    .line 1992
    :cond_99
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 1993
    if-eqz v2, :cond_df

    .line 1994
    const/4 v2, 0x0

    .line 1995
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXISTS after EXPUNGE "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageDeleted(I)V
    :try_end_b0
    .catchall {:try_start_8e .. :try_end_b0} :catchall_da
    .catch Ljava/net/SocketTimeoutException; {:try_start_8e .. :try_end_b0} :catch_b1
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_b0} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_b0} :catch_127

    goto :goto_77

    .line 2028
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_b1
    move-exception v5

    .line 2029
    .local v5, ste:Ljava/net/SocketTimeoutException;
    :try_start_b2
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 2031
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/16 v8, 0x55

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_da
    .catchall {:try_start_b2 .. :try_end_da} :catchall_da

    .line 2043
    .end local v5           #ste:Ljava/net/SocketTimeoutException;
    :catchall_da
    move-exception v7

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    throw v7

    .line 1998
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_df
    :try_start_df
    const-string v7, "Email:ImapStore"

    const-string v8, "Got EXISTS"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    invoke-interface {p1}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageReceived()V
    :try_end_e9
    .catchall {:try_start_df .. :try_end_e9} :catchall_da
    .catch Ljava/net/SocketTimeoutException; {:try_start_df .. :try_end_e9} :catch_b1
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e9} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e9} :catch_127

    goto :goto_77

    .line 2033
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_ea
    move-exception v3

    .line 2034
    .local v3, ioe:Ljava/io/IOException;
    :try_start_eb
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 2036
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_111
    .catchall {:try_start_eb .. :try_end_111} :catchall_da

    .line 2001
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_111
    const/4 v7, 0x1

    :try_start_112
    const-string v8, "FETCH"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_150

    .line 2002
    const-string v7, "Email:ImapStore"

    const-string v8, "Got FETCH"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;->messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    :try_end_125
    .catchall {:try_start_112 .. :try_end_125} :catchall_da
    .catch Ljava/net/SocketTimeoutException; {:try_start_112 .. :try_end_125} :catch_b1
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_125} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_125} :catch_127

    goto/16 :goto_77

    .line 2037
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_127
    move-exception v1

    .line 2038
    .local v1, e:Ljava/lang/Exception;
    :try_start_128
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception occured - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2040
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const/16 v8, 0x26

    invoke-virtual {p0, v7, v8, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_150
    .catchall {:try_start_128 .. :try_end_150} :catchall_da

    .line 2004
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #expungeReceived:Z
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_150
    :try_start_150
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v7

    if-eqz v7, :cond_15f

    .line 2005
    const-string v7, "Email:ImapStore"

    const-string v8, "Got continuation request"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 2007
    :cond_15f
    const-string v7, "Email:ImapStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO - Unexpected response - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77

    .line 2013
    :cond_181
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 2014
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-nez v7, :cond_1a1

    .line 2015
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2016
    .local v6, toString:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V
    :try_end_19c
    .catchall {:try_start_150 .. :try_end_19c} :catchall_da
    .catch Ljava/net/SocketTimeoutException; {:try_start_150 .. :try_end_19c} :catch_b1
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_19c} :catch_ea
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_19c} :catch_127

    .line 2043
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_8d

    .end local v0           #alert:Ljava/lang/String;
    .end local v6           #toString:Ljava/lang/String;
    :cond_1a1
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->destroyResponses()V

    goto/16 :goto_8d

    .line 2048
    .end local v2           #expungeReceived:Z
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_1a6
    const-string v7, "Email:ImapStore"

    const-string v8, "IDLE not supported but required"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v8, 0x18

    const-string v9, "IDLE not supported but required"

    invoke-direct {v7, v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public stopIdling()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2064
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v2, :cond_c

    .line 2065
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v3, "DONE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendContinuationCommand(Ljava/lang/String;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_34

    .line 2076
    :cond_c
    :goto_c
    return-void

    .line 2068
    :catch_d
    move-exception v1

    .line 2069
    .local v1, ioe:Ljava/io/IOException;
    const-string v2, "Email:ImapStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2071
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v2, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolderIdle;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v2

    throw v2

    .line 2072
    .end local v1           #ioe:Ljava/io/IOException;
    :catch_34
    move-exception v0

    .line 2073
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Email:ImapStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
