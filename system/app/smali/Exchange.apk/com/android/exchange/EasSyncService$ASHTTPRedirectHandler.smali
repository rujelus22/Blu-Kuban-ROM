.class Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;
.super Ljava/lang/Object;
.source "EasSyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/EasSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASHTTPRedirectHandler"
.end annotation


# instance fields
.field private mIsRedirected:Z

.field final synthetic this$0:Lcom/android/exchange/EasSyncService;


# direct methods
.method private constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter

    .prologue
    .line 10684
    iput-object p1, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->mIsRedirected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/exchange/EasSyncService;Lcom/android/exchange/EasSyncService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 10684
    invoke-direct {p0, p1}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;-><init>(Lcom/android/exchange/EasSyncService;)V

    return-void
.end method

.method private checkUpdateRedirectUri(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)Z
    .registers 15
    .parameter "response"
    .parameter "method"

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 10737
    const/4 v2, 0x0

    .line 10738
    .local v2, continueRedirection:Z
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 10739
    .local v0, code:I
    const/4 v1, 0x0

    .line 10740
    .local v1, commands:Lorg/apache/http/Header;
    const/16 v7, 0x1c3

    if-ne v0, v7, :cond_19

    .line 10741
    const-string v7, "X-MS-Location"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 10742
    iput-boolean v8, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->mIsRedirected:Z

    .line 10743
    const/4 v2, 0x1

    .line 10745
    :cond_19
    if-eqz v1, :cond_7e

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7e

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 10746
    iget-object v7, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Http status 451 recieved, Server redirected request to new URI : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v8}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10747
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 10748
    .local v5, redirectedUri:Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 10749
    .local v6, updateUri:Ljava/lang/String;
    const-string v7, "\\?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 10750
    .local v4, old_uri_parts:[Ljava/lang/String;
    const-string v7, "\\?"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10751
    .local v3, new_uri_parts:[Ljava/lang/String;
    aget-object v7, v4, v11

    aget-object v8, v3, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 10752
    iget-object v7, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    #getter for: Lcom/android/exchange/EasSyncService;->mTrustSsl:Z
    invoke-static {v7}, Lcom/android/exchange/EasSyncService;->access$800(Lcom/android/exchange/EasSyncService;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 10753
    const-string v7, "https"

    const-string v8, "httpts"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 10755
    :cond_77
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 10757
    .end local v3           #new_uri_parts:[Ljava/lang/String;
    .end local v4           #old_uri_parts:[Ljava/lang/String;
    .end local v5           #redirectedUri:Ljava/lang/String;
    .end local v6           #updateUri:Ljava/lang/String;
    :cond_7e
    return v2
.end method

.method private executeHttpOption(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpOptions;)Lorg/apache/http/HttpResponse;
    .registers 9
    .parameter "client"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10970
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_17

    .line 10971
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->setAliasInMap(Ljava/lang/String;)V

    .line 10972
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 10973
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->removeAliasFromMap()V

    .line 10984
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :goto_16
    return-object v1

    .line 10975
    :cond_17
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 10976
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->setAliasInMap(Ljava/lang/String;)V

    .line 10977
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 10978
    .restart local v1       #response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->removeAliasFromMap()V

    goto :goto_16

    .line 10984
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :cond_2c
    :try_start_2c
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2f
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_2f} :catch_31

    move-result-object v1

    goto :goto_16

    .line 10985
    :catch_31
    move-exception v0

    .line 10986
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sendHttpClientOptions(): IllegalStateException from HTTP Client handled"

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10987
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 10988
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
.end method

.method private extractRedirectURI(Ljava/lang/String;)V
    .registers 9
    .parameter "urlString"

    .prologue
    .line 10761
    const/4 v0, 0x0

    .line 10762
    .local v0, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    const/4 v1, 0x0

    .line 10763
    .local v1, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v2, :cond_20

    .line 10764
    sget-object v2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 10765
    sget-object v2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeySend:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v1

    .line 10767
    :cond_20
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    .line 10768
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    #getter for: Lcom/android/exchange/EasSyncService;->mTrustSsl:Z
    invoke-static {v2}, Lcom/android/exchange/EasSyncService;->access$800(Lcom/android/exchange/EasSyncService;)Z

    move-result v2

    invoke-direct {p0, v0, p1, v2}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->setFlags(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;Z)V

    .line 10769
    invoke-direct {p0, v0, p1}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->setRedirectedURI(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 10770
    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 10771
    sget-object v2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 10772
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved redirected URI due to status 451 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10774
    :cond_67
    if-eqz v1, :cond_78

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 10776
    sget-object v2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 10779
    :cond_78
    return-void
.end method

.method private isRedirected()Z
    .registers 2

    .prologue
    .line 10691
    iget-boolean v0, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->mIsRedirected:Z

    return v0
.end method

.method private setFlags(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;Z)V
    .registers 9
    .parameter "recvAuth"
    .parameter "urlString"
    .parameter "isTrustAll"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10801
    if-eqz p2, :cond_3b

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 10802
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 10803
    .local v1, protocolIndex:I
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 10804
    .local v0, protocol:Ljava/lang/String;
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "httpts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 10806
    :cond_24
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    #setter for: Lcom/android/exchange/EasSyncService;->mSsl:Z
    invoke-static {v2, v4}, Lcom/android/exchange/EasSyncService;->access$902(Lcom/android/exchange/EasSyncService;Z)Z

    .line 10807
    if-eqz p1, :cond_31

    .line 10808
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 10823
    :cond_31
    :goto_31
    if-eqz p1, :cond_3b

    .line 10824
    if-eqz p3, :cond_66

    .line 10825
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 10831
    .end local v0           #protocol:Ljava/lang/String;
    .end local v1           #protocolIndex:I
    :cond_3b
    :goto_3b
    return-void

    .line 10810
    .restart local v0       #protocol:Ljava/lang/String;
    .restart local v1       #protocolIndex:I
    :cond_3c
    const-string v2, "tls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 10811
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    #setter for: Lcom/android/exchange/EasSyncService;->mSsl:Z
    invoke-static {v2, v4}, Lcom/android/exchange/EasSyncService;->access$902(Lcom/android/exchange/EasSyncService;Z)Z

    .line 10812
    if-eqz p1, :cond_31

    .line 10814
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 10815
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    goto :goto_31

    .line 10818
    :cond_58
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    #setter for: Lcom/android/exchange/EasSyncService;->mSsl:Z
    invoke-static {v2, v3}, Lcom/android/exchange/EasSyncService;->access$902(Lcom/android/exchange/EasSyncService;Z)Z

    .line 10819
    if-eqz p1, :cond_31

    .line 10820
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, -0xc

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    goto :goto_31

    .line 10827
    :cond_66
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    goto :goto_3b
.end method

.method private setRedirectedURI(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    .registers 7
    .parameter "recvAuth"
    .parameter "urlString"

    .prologue
    const/4 v1, 0x1

    .line 10782
    if-eqz p2, :cond_52

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 10783
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 10784
    .local v0, uri:Ljava/net/URI;
    iget-object v2, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/exchange/EasSyncService;->mHostAddress:Ljava/lang/String;

    .line 10785
    if-eqz p1, :cond_52

    .line 10786
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 10787
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 10788
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    if-eqz v2, :cond_39

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 10789
    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 10791
    :cond_39
    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_53

    .line 10792
    .local v1, useSSL:Z
    :goto_3f
    const/4 v2, -0x1

    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 10793
    const-string v2, "eas"

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 10794
    if-eqz v1, :cond_55

    const/16 v2, 0x1bb

    :goto_50
    iput v2, p1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 10798
    .end local v0           #uri:Ljava/net/URI;
    .end local v1           #useSSL:Z
    :cond_52
    return-void

    .line 10791
    .restart local v0       #uri:Ljava/net/URI;
    :cond_53
    const/4 v1, 0x0

    goto :goto_3f

    .line 10794
    .restart local v1       #useSSL:Z
    :cond_55
    const/16 v2, 0x50

    goto :goto_50
.end method


# virtual methods
.method public execOption(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpOptions;)Lorg/apache/http/HttpResponse;
    .registers 9
    .parameter "client"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10717
    const/4 v1, 0x0

    .line 10718
    .local v1, count:I
    const/4 v3, 0x0

    .line 10719
    .local v3, response:Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->mIsRedirected:Z

    .line 10720
    const/4 v0, 0x0

    .line 10722
    .local v0, continueRedirection:Z
    :goto_6
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->executeHttpOption(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpOptions;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 10723
    invoke-direct {p0, v3, p2}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->checkUpdateRedirectUri(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)Z

    move-result v0

    .line 10725
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    const/16 v4, 0xa

    if-ge v1, v4, :cond_16

    if-nez v0, :cond_36

    .line 10727
    :cond_16
    if-eqz v3, :cond_35

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_35

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->isRedirected()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 10730
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpOptions;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->extractRedirectURI(Ljava/lang/String;)V

    .line 10733
    :cond_35
    return-object v3

    :cond_36
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_6
.end method

.method public execPost(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;
    .registers 12
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .parameter "isAbortNotNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10697
    const/4 v1, 0x0

    .line 10698
    .local v1, count:I
    const/4 v3, 0x0

    .line 10699
    .local v3, response:Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->mIsRedirected:Z

    .line 10700
    const/4 v0, 0x0

    .line 10702
    .local v0, continueRedirection:Z
    :goto_6
    invoke-virtual/range {p0 .. p5}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 10703
    invoke-direct {p0, v3, p2}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->checkUpdateRedirectUri(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)Z

    move-result v0

    .line 10705
    add-int/lit8 v2, v1, 0x1

    .end local v1           #count:I
    .local v2, count:I
    const/16 v4, 0xa

    if-ge v1, v4, :cond_16

    if-nez v0, :cond_36

    .line 10707
    :cond_16
    if-eqz v3, :cond_35

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_35

    invoke-direct {p0}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->isRedirected()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 10710
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->extractRedirectURI(Ljava/lang/String;)V

    .line 10713
    :cond_35
    return-object v3

    :cond_36
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_6
.end method

.method protected executePostWithTimeout(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpPost;IZZ)Lorg/apache/http/HttpResponse;
    .registers 18
    .parameter "client"
    .parameter "method"
    .parameter "timeout"
    .parameter "isPingCommand"
    .parameter "isAbortNotNeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10837
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v4}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10839
    :try_start_7
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iput-object p2, v4, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 10841
    add-int/lit16 v4, p3, 0x2710

    int-to-long v0, v4

    .line 10843
    .local v0, alarmTime:J
    if-eqz p4, :cond_52

    .line 10845
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7, v0, v1}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 10853
    :goto_17
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_5a

    .line 10858
    :try_start_18
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    if-eqz v4, :cond_5d

    .line 10859
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mCbaCertificateAlias:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->setAliasInMap(Ljava/lang/String;)V

    .line 10860
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 10861
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->removeAliasFromMap()V
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_e7
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2e} :catch_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_2e} :catch_10c

    .line 10906
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v4}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10908
    :try_start_35
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-boolean v4, v4, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v4, :cond_14a

    .line 10934
    if-eqz p4, :cond_174

    .line 10936
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 10950
    :goto_44
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 10954
    if-eqz p5, :cond_50

    .line 10958
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 10960
    :cond_50
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_147

    .line 10869
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_51
    return-object v3

    .line 10849
    :cond_52
    :try_start_52
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7, v0, v1}, Lcom/android/exchange/ExchangeService;->setWatchdogAlarm(JJ)V

    goto :goto_17

    .line 10853
    .end local v0           #alarmTime:J
    :catchall_5a
    move-exception v4

    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_5a

    throw v4

    .line 10863
    .restart local v0       #alarmTime:J
    :cond_5d
    :try_start_5d
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    if-eqz v4, :cond_98

    .line 10864
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/AbstractSyncService;->mAlias:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->setAliasInMap(Ljava/lang/String;)V

    .line 10865
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 10866
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/android/exchange/ExchangeService;->removeAliasFromMap()V
    :try_end_71
    .catchall {:try_start_5d .. :try_end_71} :catchall_e7
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_71} :catch_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_71} :catch_10c

    .line 10906
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v4}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10908
    :try_start_78
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-boolean v4, v4, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v4, :cond_17d

    .line 10934
    if-eqz p4, :cond_1a7

    .line 10936
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 10950
    :goto_87
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 10954
    if-eqz p5, :cond_93

    .line 10958
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 10960
    :cond_93
    monitor-exit v5

    goto :goto_51

    :catchall_95
    move-exception v4

    monitor-exit v5
    :try_end_97
    .catchall {:try_start_78 .. :try_end_97} :catchall_95

    throw v4

    .line 10869
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :cond_98
    :try_start_98
    invoke-interface {p1, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_e7
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_c3
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9b} :catch_10c

    move-result-object v3

    .line 10906
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v4}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10908
    :try_start_a3
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-boolean v4, v4, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v4, :cond_1b0

    .line 10934
    if-eqz p4, :cond_1da

    .line 10936
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 10950
    :goto_b2
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 10954
    if-eqz p5, :cond_be

    .line 10958
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 10960
    :cond_be
    monitor-exit v5

    goto :goto_51

    :catchall_c0
    move-exception v4

    monitor-exit v5
    :try_end_c2
    .catchall {:try_start_a3 .. :try_end_c2} :catchall_c0

    throw v4

    .line 10876
    :catch_c3
    move-exception v2

    .line 10884
    .local v2, ie:Ljava/io/IOException;
    :try_start_c4
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Timeout waiting for connection"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 10888
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "executePostWithTimeout(): Timeout Waiting for Connection. Shutting down ConnectionManager"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    .line 10890
    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    .line 10894
    :cond_e6
    throw v2
    :try_end_e7
    .catchall {:try_start_c4 .. :try_end_e7} :catchall_e7

    .line 10906
    .end local v2           #ie:Ljava/io/IOException;
    :catchall_e7
    move-exception v4

    iget-object v5, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 10908
    :try_start_ef
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-boolean v6, v6, Lcom/android/exchange/EasSyncService;->mStop:Z

    if-nez v6, :cond_116

    .line 10934
    if-eqz p4, :cond_13f

    .line 10936
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v6, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 10950
    :goto_fe
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/exchange/EasSyncService;->commandFinished:Z

    .line 10954
    if-eqz p5, :cond_10a

    .line 10958
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/exchange/EasSyncService;->mPendingPost:Lorg/apache/http/client/methods/HttpPost;

    .line 10960
    :cond_10a
    monitor-exit v5
    :try_end_10b
    .catchall {:try_start_ef .. :try_end_10b} :catchall_113

    .line 10906
    throw v4

    .line 10896
    :catch_10c
    move-exception v2

    .line 10898
    .local v2, ie:Ljava/lang/IllegalStateException;
    :try_start_10d
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_113
    .catchall {:try_start_10d .. :try_end_113} :catchall_e7

    .line 10960
    .end local v2           #ie:Ljava/lang/IllegalStateException;
    :catchall_113
    move-exception v4

    :try_start_114
    monitor-exit v5
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw v4

    .line 10946
    :cond_116
    :try_start_116
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v10, v10, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Watchdog not cleared again"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_fe

    .line 10940
    :cond_13f
    iget-object v6, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v6, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V
    :try_end_146
    .catchall {:try_start_116 .. :try_end_146} :catchall_113

    goto :goto_fe

    .line 10960
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :catchall_147
    move-exception v4

    :try_start_148
    monitor-exit v5
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v4

    .line 10946
    :cond_14a
    :try_start_14a
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v9, v9, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Watchdog not cleared again"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_44

    .line 10940
    :cond_174
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V
    :try_end_17b
    .catchall {:try_start_14a .. :try_end_17b} :catchall_147

    goto/16 :goto_44

    .line 10946
    :cond_17d
    :try_start_17d
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v9, v9, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Watchdog not cleared again"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_87

    .line 10940
    :cond_1a7
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V
    :try_end_1ae
    .catchall {:try_start_17d .. :try_end_1ae} :catchall_95

    goto/16 :goto_87

    .line 10946
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :cond_1b0
    :try_start_1b0
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executePostWithTimeout():Thread stopped mailbox:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v9, v9, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Watchdog not cleared again"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto/16 :goto_b2

    .line 10940
    :cond_1da
    iget-object v4, p0, Lcom/android/exchange/EasSyncService$ASHTTPRedirectHandler;->this$0:Lcom/android/exchange/EasSyncService;

    iget-wide v6, v4, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    invoke-static {v6, v7}, Lcom/android/exchange/ExchangeService;->clearWatchdogAlarm(J)V
    :try_end_1e1
    .catchall {:try_start_1b0 .. :try_end_1e1} :catchall_c0

    goto/16 :goto_b2
.end method
