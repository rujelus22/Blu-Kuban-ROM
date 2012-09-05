.class public Lgnu/inet/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field protected authenticator:Lgnu/inet/http/Authenticator;

.field protected final connection:Lgnu/inet/http/HTTPConnection;

.field private dispatched:Z

.field protected final method:Ljava/lang/String;

.field nonce:[B

.field protected final path:Ljava/lang/String;

.field protected requestBodyNegotiationThreshold:I

.field protected requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

.field protected final requestHeaders:Lgnu/inet/http/Headers;

.field protected responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

.field protected responseHeaderHandlers:Ljava/util/Map;


# direct methods
.method protected constructor <init>(Lgnu/inet/http/HTTPConnection;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    .line 133
    iput-object p2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    .line 135
    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/Request;->responseHeaderHandlers:Ljava/util/Map;

    .line 137
    const/16 v0, 0x1000

    iput v0, p0, Lgnu/inet/http/Request;->requestBodyNegotiationThreshold:I

    .line 138
    return-void
.end method


# virtual methods
.method authenticate(Lgnu/inet/http/Response;I)Z
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const-string v0, "WWW-Authenticate"

    invoke-virtual {p1, v0}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    if-nez v0, :cond_e

    .line 592
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p1, v0}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    :cond_e
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 595
    const/4 v1, -0x1

    if-ne v2, v1, :cond_84

    move-object v1, v0

    .line 596
    :goto_18
    const-string v3, "Basic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 598
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 599
    const-string v2, "realm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v2, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    invoke-interface {v2, v0, p2}, Lgnu/inet/http/Authenticator;->getCredentials(Ljava/lang/String;I)Lgnu/inet/http/Credentials;

    move-result-object v0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 603
    invoke-static {v0}, Lgnu/inet/util/BASE64;->encode([B)[B

    move-result-object v0

    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/4 v0, 0x1

    .line 696
    :goto_83
    return v0

    .line 595
    :cond_84
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 609
    :cond_8a
    const-string v3, "Digest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_229

    .line 611
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 612
    const-string v2, "realm"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    const-string v3, "nonce"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    const-string v4, "qop"

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 615
    const-string v5, "algorithm"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-virtual {p0}, Lgnu/inet/http/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    .line 617
    iget-object v0, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    invoke-interface {v0, v2, p2}, Lgnu/inet/http/Authenticator;->getCredentials(Ljava/lang/String;I)Lgnu/inet/http/Credentials;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 619
    invoke-virtual {v0}, Lgnu/inet/http/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v8, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v8, v3}, Lgnu/inet/http/HTTPConnection;->incrementNonce(Ljava/lang/String;)V

    .line 623
    :try_start_cb
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 624
    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0x3a

    aput-byte v11, v9, v10

    .line 627
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 628
    const-string v10, "US-ASCII"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 629
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 630
    const-string v10, "US-ASCII"

    invoke-virtual {v2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 631
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 632
    const-string v10, "US-ASCII"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 633
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 634
    const-string v10, "md5-sess"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 636
    invoke-virtual {p0}, Lgnu/inet/http/Request;->generateNonce()[B

    move-result-object v5

    .line 637
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 638
    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 639
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 640
    const-string v0, "US-ASCII"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 641
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 642
    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 643
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 645
    :cond_129
    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 649
    iget-object v5, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    const-string v10, "US-ASCII"

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 650
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 651
    const-string v5, "US-ASCII"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 652
    const-string v5, "auth-int"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 654
    const/4 v5, 0x0

    .line 655
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 656
    invoke-virtual {v8, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 658
    :cond_156
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 659
    invoke-virtual {p0, v5}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 662
    invoke-virtual {v8}, Ljava/security/MessageDigest;->reset()V

    .line 663
    const-string v10, "US-ASCII"

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 664
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 665
    const-string v0, "US-ASCII"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 666
    const-string v0, "auth"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_186

    const-string v0, "auth-int"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    .line 668
    :cond_186
    invoke-virtual {p0, v3}, Lgnu/inet/http/Request;->getNonceCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-virtual {p0}, Lgnu/inet/http/Request;->generateNonce()[B

    move-result-object v10

    .line 670
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 671
    const-string v11, "US-ASCII"

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 672
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 673
    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 674
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 675
    const-string v0, "US-ASCII"

    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 677
    :cond_1ac
    invoke-virtual {v8, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 678
    const-string v0, "US-ASCII"

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 679
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " username=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " realm=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " response=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    const-string v1, "Authorization"

    invoke-virtual {p0, v1, v0}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_222
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_cb .. :try_end_222} :catch_225

    .line 688
    const/4 v0, 0x1

    goto/16 :goto_83

    .line 690
    :catch_225
    move-exception v0

    .line 692
    const/4 v0, 0x0

    goto/16 :goto_83

    .line 696
    :cond_229
    const/4 v0, 0x0

    goto/16 :goto_83
.end method

.method public dispatch()Lgnu/inet/http/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 295
    iget-boolean v0, p0, Lgnu/inet/http/Request;->dispatched:Z

    if-eqz v0, :cond_f

    .line 297
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "request already dispatched"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_f
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getVersion()Ljava/lang/String;

    move-result-object v8

    .line 308
    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    if-eqz v0, :cond_174

    .line 310
    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v0}, Lgnu/inet/http/RequestBodyWriter;->getContentLength()I

    move-result v0

    .line 311
    iget v1, p0, Lgnu/inet/http/Request;->requestBodyNegotiationThreshold:I

    if-le v0, v1, :cond_e2

    .line 314
    const-string v1, "Expect"

    const-string v2, "100-continue"

    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v5

    move v4, v3

    move v6, v0

    .line 329
    :goto_2d
    :try_start_2d
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    .line 332
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    .line 333
    new-instance v10, Lgnu/inet/util/LineInputStream;

    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0}, Lgnu/inet/http/HTTPConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 336
    iget-object v0, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    .line 337
    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->isUsingProxy()Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    const-string v1, "CONNECT"

    iget-object v11, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 341
    invoke-virtual {p0}, Lgnu/inet/http/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 346
    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0}, Lgnu/inet/http/Headers;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 347
    :goto_a0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 349
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    iget-object v1, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v1, v0}, Lgnu/inet/http/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ": "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_da} :catch_db

    goto :goto_a0

    .line 398
    :catch_db
    move-exception v0

    .line 400
    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->close()V

    .line 401
    throw v0

    .line 318
    :cond_e2
    const-string v1, "Content-Length"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    move v4, v3

    move v6, v0

    goto/16 :goto_2d

    .line 354
    :cond_f0
    :try_start_f0
    const-string v0, "\r\n"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 356
    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    if-eqz v0, :cond_127

    if-nez v2, :cond_127

    .line 358
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 362
    iget-object v0, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v0}, Lgnu/inet/http/RequestBodyWriter;->reset()V

    move v0, v3

    .line 365
    :cond_10b
    iget-object v11, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    invoke-interface {v11, v1}, Lgnu/inet/http/RequestBodyWriter;->write([B)I

    move-result v11

    .line 366
    if-lez v11, :cond_117

    .line 368
    const/4 v12, 0x0

    invoke-virtual {v9, v1, v12, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 370
    :cond_117
    add-int/2addr v0, v11

    .line 372
    if-le v11, v7, :cond_11c

    if-lt v0, v6, :cond_10b

    .line 373
    :cond_11c
    const-string v0, "\r\n"

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 375
    :cond_127
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 377
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lgnu/inet/http/HTTPConnection;->fireRequestEvent(ILgnu/inet/http/Request;)V

    .line 379
    invoke-virtual {p0, v10}, Lgnu/inet/http/Request;->readResponse(Lgnu/inet/util/LineInputStream;)Lgnu/inet/http/Response;

    move-result-object v9

    .line 380
    invoke-virtual {v9}, Lgnu/inet/http/Response;->getCode()I

    move-result v0

    .line 381
    const/16 v1, 0x191

    if-ne v0, v1, :cond_14e

    iget-object v1, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    if-eqz v1, :cond_14e

    .line 383
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v9, v4}, Lgnu/inet/http/Request;->authenticate(Lgnu/inet/http/Response;I)Z

    move-result v1

    if-eqz v1, :cond_170

    move v1, v0

    move v0, v2

    move v2, v5

    .line 396
    :goto_14b
    if-nez v2, :cond_168

    .line 403
    return-object v9

    .line 388
    :cond_14e
    const/16 v1, 0x64

    if-ne v0, v1, :cond_16c

    if-eqz v2, :cond_16c

    .line 390
    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    const-string v1, "Expect"

    invoke-virtual {v0, v1}, Lgnu/inet/http/Headers;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v0, "Content-Length"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lgnu/inet/http/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_164} :catch_db

    move v0, v3

    move v1, v4

    move v2, v5

    .line 393
    goto :goto_14b

    :cond_168
    move v2, v0

    move v4, v1

    goto/16 :goto_2d

    :cond_16c
    move v0, v2

    move v1, v4

    move v2, v3

    goto :goto_14b

    :cond_170
    move v1, v0

    move v0, v2

    move v2, v3

    goto :goto_14b

    :cond_174
    move v2, v3

    move v4, v3

    move v6, v7

    goto/16 :goto_2d
.end method

.method generateNonce()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    if-nez v0, :cond_21

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 779
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 780
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 781
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    .line 783
    :cond_21
    iget-object v0, p0, Lgnu/inet/http/Request;->nonce:[B

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1}, Lgnu/inet/http/Headers;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lgnu/inet/http/Headers;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    return-object v0
.end method

.method getNonceCount(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 754
    iget-object v0, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v0, p1}, Lgnu/inet/http/HTTPConnection;->getNonceCount(Ljava/lang/String;)I

    move-result v0

    .line 755
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 756
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 757
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x8

    :goto_15
    if-lez v0, :cond_1f

    .line 759
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 757
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 761
    :cond_1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleSetCookie(Ljava/lang/String;)V
    .registers 23
    .parameter

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getCookieManager()Lgnu/inet/http/CookieManager;

    move-result-object v14

    .line 808
    if-nez v14, :cond_b

    .line 926
    :cond_a
    return-void

    .line 812
    :cond_b
    const/4 v10, 0x0

    .line 813
    const/4 v7, 0x0

    .line 814
    const/4 v5, 0x0

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    .line 817
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 818
    const/4 v3, -0x1

    if-eq v15, v3, :cond_28

    .line 820
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 822
    :cond_28
    const/4 v8, 0x0

    .line 823
    const/4 v9, 0x0

    .line 825
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    .line 826
    const/4 v4, 0x0

    .line 827
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 828
    const/4 v11, 0x0

    .line 829
    const/4 v3, 0x0

    move v13, v3

    move-object v3, v4

    move-object v4, v7

    move-object v7, v2

    :goto_3a
    move/from16 v0, v16

    if-gt v13, v0, :cond_a

    .line 831
    move/from16 v0, v16

    if-ne v13, v0, :cond_50

    const/4 v2, 0x0

    move v12, v2

    .line 832
    :goto_44
    const/16 v2, 0x22

    if-ne v12, v2, :cond_5a

    .line 834
    if-nez v11, :cond_58

    const/4 v2, 0x1

    .line 829
    :goto_4b
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    move v11, v2

    goto :goto_3a

    .line 831
    :cond_50
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v12, v2

    goto :goto_44

    .line 834
    :cond_58
    const/4 v2, 0x0

    goto :goto_4b

    .line 836
    :cond_5a
    if-nez v11, :cond_14f

    .line 838
    const/16 v2, 0x3d

    if-ne v12, v2, :cond_72

    if-nez v3, :cond_72

    .line 840
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 841
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v11

    goto :goto_4b

    .line 843
    :cond_72
    const/16 v2, 0x3b

    if-eq v12, v2, :cond_7e

    move/from16 v0, v16

    if-eq v13, v0, :cond_7e

    const/16 v2, 0x2c

    if-ne v12, v2, :cond_147

    .line 845
    :cond_7e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    if-nez v10, :cond_cb

    move-object v4, v2

    .line 891
    :goto_8f
    const/4 v10, 0x0

    .line 892
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 894
    move/from16 v0, v16

    if-eq v13, v0, :cond_9e

    const/16 v2, 0x2c

    if-ne v12, v2, :cond_a6

    .line 896
    :cond_9e
    new-instance v2, Lgnu/inet/http/Cookie;

    invoke-direct/range {v2 .. v9}, Lgnu/inet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;)V

    .line 898
    invoke-interface {v14, v2}, Lgnu/inet/http/CookieManager;->setCookie(Lgnu/inet/http/Cookie;)V

    .line 900
    :cond_a6
    const/16 v2, 0x2c

    if-ne v12, v2, :cond_15a

    .line 903
    const/4 v3, 0x0

    .line 904
    const/4 v4, 0x0

    .line 905
    const/4 v5, 0x0

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v2}, Lgnu/inet/http/HTTPConnection;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lgnu/inet/http/Request;->path:Ljava/lang/String;

    .line 908
    const/4 v7, -0x1

    if-eq v15, v7, :cond_c1

    .line 910
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 912
    :cond_c1
    const/4 v8, 0x0

    .line 913
    const/4 v9, 0x0

    :goto_c3
    move-object v7, v2

    move v2, v11

    move-object/from16 v20, v10

    move-object v10, v3

    move-object/from16 v3, v20

    .line 915
    goto :goto_4b

    .line 851
    :cond_cb
    const-string v18, "Comment"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d8

    move-object v5, v2

    move-object v3, v10

    .line 853
    goto :goto_8f

    .line 855
    :cond_d8
    const-string v18, "Domain"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e5

    move-object v6, v2

    move-object v3, v10

    .line 857
    goto :goto_8f

    .line 859
    :cond_e5
    const-string v18, "Path"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f2

    move-object v7, v2

    move-object v3, v10

    .line 861
    goto :goto_8f

    .line 863
    :cond_f2
    const-string v18, "Secure"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_ff

    .line 865
    const/4 v8, 0x1

    move-object v3, v10

    goto :goto_8f

    .line 867
    :cond_ff
    const-string v18, "Max-Age"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_126

    .line 869
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 870
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 871
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 872
    const/16 v9, 0xd

    invoke-virtual {v3, v9, v2}, Ljava/util/Calendar;->add(II)V

    .line 873
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    move-object v3, v10

    .line 874
    goto/16 :goto_8f

    .line 875
    :cond_126
    const-string v18, "Expires"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_157

    .line 877
    new-instance v18, Lgnu/inet/http/HTTPDateFormat;

    invoke-direct/range {v18 .. v18}, Lgnu/inet/http/HTTPDateFormat;-><init>()V

    .line 880
    :try_start_135
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_13a
    .catch Ljava/text/ParseException; {:try_start_135 .. :try_end_13a} :catch_13e

    move-result-object v9

    move-object v3, v10

    .line 889
    goto/16 :goto_8f

    .line 882
    :catch_13e
    move-exception v2

    .line 887
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    .line 888
    goto/16 :goto_4b

    .line 918
    :cond_147
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    goto/16 :goto_4b

    .line 923
    :cond_14f
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v11

    goto/16 :goto_4b

    :cond_157
    move-object v3, v10

    goto/16 :goto_8f

    :cond_15a
    move-object v2, v7

    goto/16 :goto_c3
.end method

.method notifyHeaderHandlers(Lgnu/inet/http/Headers;)V
    .registers 6
    .parameter

    .prologue
    .line 473
    invoke-virtual {p1}, Lgnu/inet/http/Headers;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 475
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 478
    const-string v2, "Set-Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 480
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 481
    invoke-virtual {p0, v2}, Lgnu/inet/http/Request;->handleSetCookie(Ljava/lang/String;)V

    .line 483
    :cond_2b
    iget-object v2, p0, Lgnu/inet/http/Request;->responseHeaderHandlers:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/inet/http/ResponseHeaderHandler;

    .line 485
    if-eqz v1, :cond_8

    .line 487
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 488
    invoke-interface {v1, v0}, Lgnu/inet/http/ResponseHeaderHandler;->setValue(Ljava/lang/String;)V

    goto :goto_8

    .line 491
    :cond_3f
    return-void
.end method

.method parseAuthParams(Ljava/lang/String;)Ljava/util/Properties;
    .registers 13
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v10, 0x20

    const/4 v3, 0x0

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 703
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 704
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    move v4, v3

    move v0, v3

    move-object v1, v2

    .line 706
    :goto_15
    if-ge v4, v5, :cond_65

    .line 708
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 709
    const/16 v9, 0x22

    if-ne v8, v9, :cond_27

    .line 711
    if-nez v0, :cond_25

    const/4 v0, 0x1

    .line 706
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_25
    move v0, v3

    .line 711
    goto :goto_22

    .line 713
    :cond_27
    const/16 v9, 0x3d

    if-ne v8, v9, :cond_39

    if-nez v1, :cond_39

    .line 715
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_22

    .line 718
    :cond_39
    if-ne v8, v10, :cond_51

    if-nez v0, :cond_51

    .line 720
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 721
    invoke-virtual {v7, v1, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v1, v2

    .line 724
    goto :goto_22

    .line 725
    :cond_51
    const/16 v9, 0x2c

    if-ne v8, v9, :cond_61

    add-int/lit8 v9, v5, -0x1

    if-ge v4, v9, :cond_22

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_22

    .line 727
    :cond_61
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 730
    :cond_65
    if-eqz v1, :cond_76

    .line 732
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 733
    invoke-virtual {v7, v1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :cond_76
    return-object v7
.end method

.method readResponse(Lgnu/inet/util/LineInputStream;)Lgnu/inet/http/Response;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 413
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 414
    if-nez v4, :cond_f

    .line 416
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Peer closed connection"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_f
    const-string v0, "HTTP/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 420
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 423
    const/4 v1, 0x5

    const/4 v0, 0x6

    .line 424
    :goto_23
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2e

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 428
    :cond_2e
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 429
    add-int/lit8 v2, v0, 0x1

    .line 430
    add-int/lit8 v0, v2, 0x1

    .line 431
    :goto_3a
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x20

    if-eq v3, v6, :cond_45

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 435
    :cond_45
    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 436
    add-int/lit8 v0, v0, 0x1

    .line 437
    add-int/lit8 v6, v0, 0x3

    .line 438
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 439
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 441
    new-instance v6, Lgnu/inet/http/Headers;

    invoke-direct {v6}, Lgnu/inet/http/Headers;-><init>()V

    .line 442
    invoke-virtual {v6, p1}, Lgnu/inet/http/Headers;->parse(Ljava/io/InputStream;)V

    .line 443
    invoke-virtual {p0, v6}, Lgnu/inet/http/Request;->notifyHeaderHandlers(Lgnu/inet/http/Headers;)V

    .line 445
    div-int/lit8 v4, v3, 0x64

    .line 446
    new-instance v0, Lgnu/inet/http/Response;

    invoke-direct/range {v0 .. v6}, Lgnu/inet/http/Response;-><init>(IIIILjava/lang/String;Lgnu/inet/http/Headers;)V

    .line 448
    const-string v1, "HEAD"

    iget-object v2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    const-string v1, "OPTIONS"

    iget-object v2, p0, Lgnu/inet/http/Request;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 450
    packed-switch v3, :pswitch_data_a0

    .line 457
    iget-object v1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    if-eqz v1, :cond_9e

    const/4 v1, 0x1

    .line 458
    :goto_8f
    if-eqz v1, :cond_9a

    .line 460
    iget-object v2, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v2, p0, v0}, Lgnu/inet/http/ResponseBodyReader;->accept(Lgnu/inet/http/Request;Lgnu/inet/http/Response;)Z

    move-result v2

    if-nez v2, :cond_9a

    move v1, v7

    .line 465
    :cond_9a
    invoke-virtual {p0, v0, p1, v1}, Lgnu/inet/http/Request;->readResponseBody(Lgnu/inet/http/Response;Ljava/io/InputStream;Z)V

    .line 468
    :cond_9d
    :pswitch_9d
    return-object v0

    :cond_9e
    move v1, v7

    .line 457
    goto :goto_8f

    .line 450
    :pswitch_data_a0
    .packed-switch 0xcc
        :pswitch_9d
        :pswitch_9d
    .end packed-switch
.end method

.method readResponseBody(Lgnu/inet/http/Response;Ljava/io/InputStream;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 497
    const/16 v0, 0x1000

    new-array v7, v0, [B

    .line 499
    const/4 v0, 0x0

    .line 501
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 502
    const-string v3, "chunked"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 504
    new-instance v0, Lgnu/inet/http/Headers;

    invoke-direct {v0}, Lgnu/inet/http/Headers;-><init>()V

    .line 505
    new-instance v1, Lgnu/inet/http/ChunkedInputStream;

    invoke-direct {v1, p2, v0}, Lgnu/inet/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Lgnu/inet/http/Headers;)V

    move-object p2, v1

    move v1, v2

    .line 511
    :goto_22
    const-string v3, "Content-Encoding"

    invoke-virtual {p1, v3}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 512
    if-eqz v3, :cond_40

    const-string v4, "identity"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 514
    const-string v4, "gzip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 516
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v3

    .line 530
    :cond_40
    :goto_40
    const-string v3, "close"

    const-string v4, "Connection"

    invoke-virtual {p0, v4}, Lgnu/inet/http/Request;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    const-string v3, "close"

    const-string v4, "Connection"

    invoke-virtual {p1, v4}, Lgnu/inet/http/Response;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_72

    iget-object v3, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    iget v3, v3, Lgnu/inet/http/HTTPConnection;->majorVersion:I

    if-ne v3, v6, :cond_68

    iget-object v3, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    iget v3, v3, Lgnu/inet/http/HTTPConnection;->minorVersion:I

    if-eqz v3, :cond_72

    :cond_68
    iget v3, p1, Lgnu/inet/http/Response;->majorVersion:I

    if-ne v3, v6, :cond_70

    iget v3, p1, Lgnu/inet/http/Response;->minorVersion:I

    if-eqz v3, :cond_72

    :cond_70
    if-ne v1, v2, :cond_bf

    :cond_72
    move v4, v6

    .line 536
    :goto_73
    if-nez v1, :cond_c1

    .line 538
    if-eqz v4, :cond_7c

    .line 540
    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    .line 575
    :cond_7c
    :goto_7c
    if-eqz p3, :cond_83

    .line 577
    iget-object v1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v1}, Lgnu/inet/http/ResponseBodyReader;->close()V

    .line 579
    :cond_83
    if-eqz v0, :cond_8f

    .line 581
    invoke-virtual {p1}, Lgnu/inet/http/Response;->getHeaders()Lgnu/inet/http/Headers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lgnu/inet/http/Headers;->putAll(Ljava/util/Map;)V

    .line 582
    invoke-virtual {p0, v0}, Lgnu/inet/http/Request;->notifyHeaderHandlers(Lgnu/inet/http/Headers;)V

    .line 584
    :cond_8f
    return-void

    .line 509
    :cond_90
    const-string v1, "Content-Length"

    invoke-virtual {p1, v1}, Lgnu/inet/http/Response;->getIntHeader(Ljava/lang/String;)I

    move-result v1

    goto :goto_22

    .line 518
    :cond_97
    const-string v4, "deflate"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 520
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v3

    goto :goto_40

    .line 524
    :cond_a6
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Content-Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    move v4, v5

    .line 530
    goto :goto_73

    .line 546
    :cond_c1
    if-le v1, v2, :cond_d6

    move v3, v1

    .line 547
    :goto_c4
    array-length v8, v7

    if-le v3, v8, :cond_c8

    array-length v3, v7

    .line 548
    :cond_c8
    if-le v3, v2, :cond_7c

    .line 550
    invoke-virtual {p2, v7, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 551
    if-gez v3, :cond_d8

    .line 554
    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    goto :goto_7c

    .line 546
    :cond_d6
    array-length v3, v7

    goto :goto_c4

    .line 557
    :cond_d8
    if-eqz p3, :cond_df

    .line 559
    iget-object v8, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    invoke-interface {v8, v7, v5, v3}, Lgnu/inet/http/ResponseBodyReader;->read([BII)V

    .line 561
    :cond_df
    if-le v1, v2, :cond_c8

    .line 563
    sub-int/2addr v1, v3

    .line 564
    if-ge v1, v6, :cond_c8

    .line 566
    if-eqz v4, :cond_7c

    .line 568
    iget-object v1, p0, Lgnu/inet/http/Request;->connection:Lgnu/inet/http/HTTPConnection;

    invoke-virtual {v1}, Lgnu/inet/http/HTTPConnection;->closeConnection()V

    goto :goto_7c
.end method

.method public setAuthenticator(Lgnu/inet/http/Authenticator;)V
    .registers 2
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lgnu/inet/http/Request;->authenticator:Lgnu/inet/http/Authenticator;

    .line 268
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    iget-object v0, p0, Lgnu/inet/http/Request;->requestHeaders:Lgnu/inet/http/Headers;

    invoke-virtual {v0, p1, p2}, Lgnu/inet/http/Headers;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public setRequestBodyWriter(Lgnu/inet/http/RequestBodyWriter;)V
    .registers 2
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lgnu/inet/http/Request;->requestBodyWriter:Lgnu/inet/http/RequestBodyWriter;

    .line 237
    return-void
.end method

.method public setResponseBodyReader(Lgnu/inet/http/ResponseBodyReader;)V
    .registers 2
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lgnu/inet/http/Request;->responseBodyReader:Lgnu/inet/http/ResponseBodyReader;

    .line 247
    return-void
.end method

.method toHexString([B)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x10

    const/4 v0, 0x0

    .line 788
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [C

    move v1, v0

    .line 789
    :goto_9
    array-length v2, p1

    if-ge v1, v2, :cond_29

    .line 791
    aget-byte v2, p1, v1

    .line 792
    if-gez v2, :cond_12

    .line 794
    add-int/lit16 v2, v2, 0x100

    .line 796
    :cond_12
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v5, v2, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    aput-char v5, v3, v0

    .line 797
    add-int/lit8 v0, v4, 0x1

    rem-int/lit8 v2, v2, 0x10

    invoke-static {v2, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v3, v4

    .line 789
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 799
    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x22

    .line 740
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 741
    if-lez v0, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1e

    .line 743
    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 745
    :cond_1e
    return-object p1
.end method
