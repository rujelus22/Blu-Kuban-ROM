.class Lcom/android/email/mail/store/ImapStore$ImapConnection;
.super Ljava/lang/Object;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapConnection"
.end annotation


# instance fields
.field private final mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

.field private mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

.field private mTransport:Lcom/android/email/mail/Transport;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;)V
    .registers 4
    .parameter

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2092
    new-instance v0, Lcom/android/email/mail/transport/DiscourseLogger;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/DiscourseLogger;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/store/imap/ImapResponseParser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2082
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    return-object v0
.end method

.method private createParser()V
    .registers 4

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 2189
    new-instance v0, Lcom/android/email/mail/store/imap/ImapResponseParser;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v1}, Lcom/android/email/mail/Transport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponseParser;-><init>(Ljava/io/InputStream;Lcom/android/email/mail/transport/DiscourseLogger;)V

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    .line 2190
    return-void
.end method

.method private doGetNamespace(Z)V
    .registers 13
    .parameter "hasNamespaceCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2344
    if-eqz p1, :cond_6b

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v7, v7, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 2345
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 2348
    .local v6, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_12
    const-string v7, "NAMESPACE"

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_17
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_12 .. :try_end_17} :catch_5c
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_6c

    move-result-object v6

    .line 2359
    :cond_18
    :goto_18
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2360
    .local v5, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v7, "NAMESPACE"

    invoke-virtual {v5, v9, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2361
    invoke-virtual {v5, v10}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 2362
    .local v3, namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3, v9}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v2

    .line 2363
    .local v2, namespace:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v2, v9}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2364
    .local v4, namespaceString:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 2365
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 2366
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v2, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    goto :goto_1c

    .line 2349
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #namespace:Lcom/android/email/mail/store/imap/ImapList;
    .end local v3           #namespaceList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v4           #namespaceString:Ljava/lang/String;
    .end local v5           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_5c
    move-exception v1

    .line 2351
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_18

    .line 2352
    const-string v7, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 2371
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v6           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_6b
    return-void

    .line 2354
    .restart local v6       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_6c
    move-exception v7

    goto :goto_18
.end method

.method private doGetPathSeparator()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2401
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v4, v4, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_54

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v4, v4, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 2402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2405
    .local v3, responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_18
    const-string v4, "LIST \"\" \"\""

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1d
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_18 .. :try_end_1d} :catch_45
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_55

    move-result-object v3

    .line 2416
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2417
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v4, 0x0

    const-string v5, "LIST"

    invoke-virtual {v2, v4, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2418
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/mail/store/ImapStore;->mPathSeparator:Ljava/lang/String;

    goto :goto_22

    .line 2406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :catch_45
    move-exception v1

    .line 2408
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_1e

    .line 2409
    const-string v4, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 2422
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    .end local v3           #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_54
    return-void

    .line 2411
    .restart local v3       #responseList:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_55
    move-exception v4

    goto :goto_1e
.end method

.method private doLogin()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;
        }
    .end annotation

    .prologue
    .line 2381
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/email/mail/store/ImapStore;->access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    :try_end_a
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_a} :catch_23

    .line 2391
    return-void

    .line 2382
    :catch_b
    move-exception v0

    .line 2383
    .local v0, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_19

    .line 2384
    const-string v2, "Email"

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_19
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapException;->getAlertText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2388
    .end local v0           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_23
    move-exception v1

    .line 2389
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doSendId(ZLjava/lang/String;)V
    .registers 9
    .parameter "hasIdCapability"
    .parameter "capabilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2297
    if-nez p1, :cond_3

    .line 2333
    :cond_2
    :goto_2
    return-void

    .line 2301
    :cond_3
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$300(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2302
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".secureserver.net"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2306
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$500(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/email/mail/store/ImapStore;->access$600(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, p2}, Lcom/android/email/mail/store/ImapStore;->getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2308
    .local v2, mUserAgent:Ljava/lang/String;
    if-eqz v2, :cond_49

    .line 2309
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ID ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/email/mail/store/ImapStore;->access$702(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    .line 2316
    :cond_49
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2318
    :try_start_51
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_5a
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_51 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5a} :catch_6a

    goto :goto_2

    .line 2319
    :catch_5b
    move-exception v1

    .line 2321
    .local v1, ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 2322
    const-string v3, "Email"

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2324
    .end local v1           #ie:Lcom/android/email/mail/store/ImapStore$ImapException;
    :catch_6a
    move-exception v3

    goto :goto_2
.end method

.method private doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 4
    .parameter "hasStartTlsCapability"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2432
    if-eqz p1, :cond_24

    .line 2434
    const-string v0, "STARTTLS"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 2436
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 2437
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v1, 0xea60

    invoke-interface {v0, v1}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 2438
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 2440
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2448
    :goto_23
    return-object v0

    .line 2442
    :cond_24
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 2443
    const-string v0, "Email"

    const-string v1, "TLS not supported but required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2445
    :cond_2f
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v0

    .line 2448
    :cond_36
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2275
    const/4 v0, 0x0

    .line 2276
    .local v0, capabilityResponse:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v3, "CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2277
    .local v2, r:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v3, 0x0

    const-string v4, "CAPABILITY"

    invoke-virtual {v2, v3, v4}, Lcom/android/email/mail/store/imap/ImapResponse;->is(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2278
    move-object v0, v2

    .line 2282
    .end local v2           #r:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_21
    if-nez v0, :cond_2b

    .line 2283
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const-string v4, "Invalid CAPABILITY response received"

    invoke-direct {v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2285
    :cond_2b
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_24

    .line 2175
    const-string v0, "Email:ImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT@CONN closed the connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 2177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 2179
    :cond_24
    return-void
.end method

.method public destroyResponses()V
    .registers 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    if-eqz v0, :cond_9

    .line 2194
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->destroyResponses()V

    .line 2196
    :cond_9
    return-void
.end method

.method executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2245
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeSimpleCommand(Ljava/lang/String;Z)Ljava/util/List;
    .registers 10
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2250
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 2251
    .local v3, tag:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2254
    .local v2, responses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_9
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2255
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .line 2260
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :goto_16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2261
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2262
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v5

    if-nez v5, :cond_41

    .line 2263
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2264
    .local v4, toString:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getAlertTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 2265
    .local v0, alert:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 2266
    new-instance v5, Lcom/android/email/mail/store/ImapStore$ImapException;

    invoke-direct {v5, v4, v0}, Lcom/android/email/mail/store/ImapStore$ImapException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 2257
    .end local v0           #alert:Ljava/lang/String;
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v4           #toString:Ljava/lang/String;
    :cond_3a
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v1

    .restart local v1       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    goto :goto_16

    .line 2268
    :cond_41
    return-object v2
.end method

.method isTransportOpenForTest()Z
    .registers 2

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public logLastDiscourse()V
    .registers 4

    .prologue
    .line 2453
    const-string v0, "Email:ImapStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Most Recent commands of this connection - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    invoke-virtual {v0}, Lcom/android/email/mail/transport/DiscourseLogger;->logLastDiscourse()V

    .line 2455
    return-void
.end method

.method public open()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2096
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2171
    :goto_c
    return-void

    .line 2102
    :cond_d
    :try_start_d
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-nez v8, :cond_1d

    .line 2103
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;
    invoke-static {v8}, Lcom/android/email/mail/store/ImapStore;->access$300(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->newInstanceWithConfiguration()Lcom/android/email/mail/Transport;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    .line 2106
    :cond_1d
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->open()V

    .line 2107
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    const v9, 0xea60

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 2109
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->createParser()V

    .line 2112
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 2113
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    .line 2119
    :goto_39
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->queryCapabilities()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2121
    .local v0, capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    const-string v8, "STARTTLS"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v5

    .line 2124
    .local v5, hasStartTlsCapability:Z
    invoke-direct {p0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doStartTls(Z)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v7

    .line 2125
    .local v7, newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    if-eqz v7, :cond_4a

    .line 2126
    move-object v0, v7

    .line 2135
    :cond_4a
    const-string v8, "ID"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v3

    .line 2136
    .local v3, hasIdCapability:Z
    const-string v8, "NAMESPACE"

    invoke-virtual {v0, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->contains(Ljava/lang/String;)Z

    move-result v4

    .line 2137
    .local v4, hasNamespaceCapability:Z
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->flatten()Ljava/lang/String;

    move-result-object v1

    .line 2140
    .local v1, capabilityString:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doSendId(ZLjava/lang/String;)V

    .line 2143
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doLogin()V

    .line 2146
    invoke-direct {p0, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doGetNamespace(Z)V

    .line 2149
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->doGetPathSeparator()V

    .line 2151
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v8}, Lcom/android/email/mail/store/ImapStore;->ensurePrefixIsValid()V
    :try_end_6b
    .catchall {:try_start_d .. :try_end_6b} :catchall_8d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_6b} :catch_75
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6b} :catch_92

    .line 2169
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    goto :goto_c

    .line 2115
    .end local v0           #capabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v1           #capabilityString:Ljava/lang/String;
    .end local v3           #hasIdCapability:Z
    .end local v4           #hasNamespaceCapability:Z
    .end local v5           #hasStartTlsCapability:Z
    .end local v7           #newCapabilities:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_6f
    :try_start_6f
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_8d
    .catch Ljavax/net/ssl/SSLException; {:try_start_6f .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_92

    goto :goto_39

    .line 2152
    :catch_75
    move-exception v2

    .line 2153
    .local v2, e:Ljavax/net/ssl/SSLException;
    :try_start_76
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_83

    .line 2154
    const-string v8, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_83
    new-instance v8, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
    :try_end_8d
    .catchall {:try_start_76 .. :try_end_8d} :catchall_8d

    .line 2169
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    :catchall_8d
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    throw v8

    .line 2157
    :catch_92
    move-exception v6

    .line 2164
    .local v6, ioe:Ljava/io/IOException;
    :try_start_93
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_a0

    .line 2165
    const-string v8, "Email"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    :cond_a0
    throw v6
    :try_end_a1
    .catchall {:try_start_93 .. :try_end_a1} :catchall_8d
.end method

.method public readResponse()Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2208
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2209
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 2211
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    goto :goto_d
.end method

.method public readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mParser:Lcom/android/email/mail/store/imap/ImapResponseParser;

    invoke-virtual {v0, p1}, Lcom/android/email/mail/store/imap/ImapResponseParser;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2226
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 2227
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->this$0:Lcom/android/email/mail/store/ImapStore;

    #getter for: Lcom/android/email/mail/store/ImapStore;->mNextCommandTag:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 2228
    .local v1, tag:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, commandToSend:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_3b

    const-string v2, "[IMAP command redacted]"

    :goto_2e
    invoke-interface {v3, v0, v2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_37

    const-string v0, "[IMAP command redacted]"

    .end local v0           #commandToSend:Ljava/lang/String;
    :cond_37
    invoke-virtual {v2, v0}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 2231
    return-object v1

    .line 2229
    .restart local v0       #commandToSend:Ljava/lang/String;
    :cond_3b
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method public sendContinuationCommand(Ljava/lang/String;Z)V
    .registers 5
    .parameter "command"
    .parameter "sensitive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2237
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 2238
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;

    if-eqz p2, :cond_16

    const-string v0, "[IMAP command redacted]"

    :goto_9
    invoke-interface {v1, p1, v0}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapConnection;->mDiscourse:Lcom/android/email/mail/transport/DiscourseLogger;

    if-eqz p2, :cond_12

    const-string p1, "[IMAP command redacted]"

    .end local p1
    :cond_12
    invoke-virtual {v0, p1}, Lcom/android/email/mail/transport/DiscourseLogger;->addSentCommand(Ljava/lang/String;)V

    .line 2240
    return-void

    .line 2238
    .restart local p1
    :cond_16
    const/4 v0, 0x0

    goto :goto_9
.end method
