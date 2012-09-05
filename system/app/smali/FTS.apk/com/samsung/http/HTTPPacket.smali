.class public Lcom/samsung/http/HTTPPacket;
.super Ljava/lang/Object;
.source "HTTPPacket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/http/HTTPPacket$DualReader;
    }
.end annotation


# instance fields
.field private bFileContent:Z

.field private content:[B

.field private contentInput:Ljava/io/InputStream;

.field private fileContent:Ljava/io/File;

.field private firstLine:Ljava/lang/String;

.field private httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/http/HTTPHeader;",
            ">;"
        }
    .end annotation
.end field

.field private httpServer:Lcom/samsung/http/HTTPServer;

.field private httpSock:Lcom/samsung/http/HTTPSocket;

.field rand:Ljava/util/Random;

.field private reader:Lcom/samsung/http/HTTPPacket$DualReader;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object v1, p0, Lcom/samsung/http/HTTPPacket;->httpServer:Lcom/samsung/http/HTTPServer;

    .line 220
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->rand:Ljava/util/Random;

    .line 317
    iput-boolean v2, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 342
    iput-object v1, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    .line 438
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 470
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 641
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    .line 753
    iput-object v1, p0, Lcom/samsung/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 58
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 60
    return-void
.end method

.method private setFirstLine(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->firstLine:Ljava/lang/String;

    .line 442
    return-void
.end method


# virtual methods
.method public addHeader(Lcom/samsung/http/HTTPHeader;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 483
    new-instance v0, Lcom/samsung/http/HTTPHeader;

    invoke-direct {v0, p1, p2}, Lcom/samsung/http/HTTPHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    iget-object v1, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    return-void
.end method

.method public clearHeaders()V
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 515
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 516
    return-void
.end method

.method public getConnection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 837
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 715
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasFileContent()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 716
    const/4 v1, 0x0

    .line 719
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_8
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getFileContent()Ljava/io/File;

    move-result-object v2

    .line 720
    .local v2, tempFile:Ljava/io/File;
    if-nez v2, :cond_10

    move-object v1, v3

    .line 729
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #tempFile:Ljava/io/File;
    :goto_f
    return-object v1

    .line 722
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #tempFile:Ljava/io/File;
    :cond_10
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #fis:Ljava/io/FileInputStream;
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_16

    .line 723
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_f

    .line 725
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #tempFile:Ljava/io/File;
    :catch_16
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v1, v3

    .line 726
    goto :goto_f

    .line 729
    .end local v0           #e:Ljava/lang/Exception;
    :cond_19
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_f
.end method

.method public getContentInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 818
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getLongHeaderValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentRange()[J
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 881
    const/4 v0, 0x3

    new-array v1, v0, [J

    .line 882
    const-wide/16 v2, 0x0

    aput-wide v2, v1, v6

    aput-wide v2, v1, v5

    aput-wide v2, v1, v4

    .line 883
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasContentRange()Z

    move-result v0

    if-nez v0, :cond_16

    move-object v0, v1

    .line 930
    :goto_15
    return-object v0

    .line 885
    :cond_16
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_28

    .line 888
    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 889
    :cond_28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_30

    move-object v0, v1

    .line 890
    goto :goto_15

    .line 893
    :cond_30
    const-string v2, "bytes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 894
    const-string v0, "-1"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v4

    move-object v0, v1

    .line 895
    goto :goto_15

    .line 899
    :cond_42
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "="

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_51

    move-object v0, v1

    .line 902
    goto :goto_15

    .line 903
    :cond_51
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 906
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_5c

    move-object v0, v1

    .line 907
    goto :goto_15

    .line 909
    :cond_5c
    const-string v0, "=-"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 911
    const/4 v3, 0x0

    :try_start_63
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_69} :catch_99

    .line 915
    :goto_69
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_71

    move-object v0, v1

    .line 916
    goto :goto_15

    .line 917
    :cond_71
    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    const/4 v3, 0x1

    :try_start_78
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v3
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7e} :catch_97

    .line 923
    :goto_7e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_86

    move-object v0, v1

    .line 924
    goto :goto_15

    .line 925
    :cond_86
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 927
    const/4 v2, 0x2

    :try_start_8d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_8d .. :try_end_93} :catch_95

    :goto_93
    move-object v0, v1

    .line 930
    goto :goto_15

    .line 929
    :catch_95
    move-exception v0

    goto :goto_93

    .line 922
    :catch_97
    move-exception v0

    goto :goto_7e

    .line 914
    :catch_99
    move-exception v0

    goto :goto_69
.end method

.method public getContentRangeFirstPosition()J
    .registers 4

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 936
    .local v0, range:[J
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getContentRangeLastPosition()J
    .registers 4

    .prologue
    .line 941
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getContentRange()[J

    move-result-object v0

    .line 942
    .local v0, range:[J
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method getContentString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasFileContent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 737
    new-instance v0, Ljava/lang/String;

    const-string v1, "This Packet Contains a file content, so can not be converted to String"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 739
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_d
.end method

.method public getFileContent()Ljava/io/File;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    return-object v0
.end method

.method protected getFirstLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->firstLine:Ljava/lang/String;

    return-object v0
.end method

.method protected getFirstLineToken(I)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 451
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->firstLine:Ljava/lang/String;

    const-string v1, " "

    invoke-direct {v3, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, ""

    .line 453
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_f
    if-le v1, p1, :cond_12

    .line 458
    :goto_11
    return-object v0

    .line 454
    :cond_12
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 455
    const-string v0, ""

    goto :goto_11

    .line 456
    :cond_1b
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 453
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_f
.end method

.method public getHeader(I)Lcom/samsung/http/HTTPHeader;
    .registers 6
    .parameter "n"

    .prologue
    .line 489
    const/4 v2, 0x0

    .line 491
    .local v2, header:Lcom/samsung/http/HTTPHeader;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/samsung/http/HTTPHeader;

    move-object v2, v0
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_b} :catch_c

    .line 495
    :goto_b
    return-object v2

    .line 492
    :catch_c
    move-exception v1

    .line 493
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_b
.end method

.method public getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;
    .registers 7
    .parameter "name"

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getNHeaders()I

    move-result v3

    .line 501
    .local v3, nHeaders:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_5
    if-lt v2, v3, :cond_9

    .line 509
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 502
    :cond_9
    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPPacket;->getHeader(I)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 503
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    if-nez v0, :cond_12

    .line 501
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 505
    :cond_12
    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, headerName:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8
.end method

.method public getHeaderString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 628
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 629
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 630
    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_11

    .line 634
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 631
    :cond_11
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getHeader(I)Lcom/samsung/http/HTTPHeader;

    move-result-object v3

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 553
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    if-nez v0, :cond_9

    .line 554
    const-string v1, ""

    .line 555
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getHttpServer()Lcom/samsung/http/HTTPServer;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpServer:Lcom/samsung/http/HTTPServer;

    return-object v0
.end method

.method public getLongHeaderValue(Ljava/lang/String;)J
    .registers 5
    .parameter "name"

    .prologue
    .line 616
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 617
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    if-nez v0, :cond_9

    .line 618
    const-wide/16 v1, 0x0

    .line 619
    :goto_8
    return-wide v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/util/StringUtil;->toLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_8
.end method

.method public getNHeaders()I
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->httpHeaderList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 593
    const-string v0, "\""

    const-string v1, "\""

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/http/HTTPPacket;->getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringHeaderValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"
    .parameter "startWidth"
    .parameter "endWidth"

    .prologue
    .line 581
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, headerValue:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 583
    const/4 v1, 0x0

    .line 588
    :goto_7
    return-object v1

    .line 584
    :cond_8
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 585
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_17
    invoke-virtual {v0, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 587
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_28
    move-object v1, v0

    .line 588
    goto :goto_7
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1039
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->version:Ljava/lang/String;

    return-object v0
.end method

.method handleExpect100Continue()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 196
    const-string v3, "Expect"

    invoke-virtual {p0, v3}, Lcom/samsung/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 197
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    if-eqz v0, :cond_2d

    .line 198
    invoke-virtual {v0}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, headerValue:Ljava/lang/String;
    if-eqz v1, :cond_2d

    .line 200
    const-string v3, "100-continue"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 201
    instance-of v3, p0, Lcom/samsung/http/HTTPRequest;

    if-eqz v3, :cond_2d

    .line 202
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getContentLength()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/samsung/http/HTTPPacket;->hasEnoughStorage(J)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 203
    check-cast p0, Lcom/samsung/http/HTTPRequest;

    .end local p0
    const/16 v2, 0x1a1

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    .line 204
    const/4 v2, 0x0

    .line 213
    .end local v1           #headerValue:Ljava/lang/String;
    :cond_2d
    :goto_2d
    return v2

    .line 206
    .restart local v1       #headerValue:Ljava/lang/String;
    .restart local p0
    :cond_2e
    check-cast p0, Lcom/samsung/http/HTTPRequest;

    .end local p0
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/samsung/http/HTTPRequest;->returnResponse(I)Z

    goto :goto_2d
.end method

.method public hasConnection()Z
    .registers 2

    .prologue
    .line 827
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasContent()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 744
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasFileContent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 746
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    array-length v1, v1

    if-gtz v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasContentInputStream()Z
    .registers 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasContentRange()Z
    .registers 2

    .prologue
    .line 866
    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public hasEnoughStorage(J)Z
    .registers 10
    .parameter "size"

    .prologue
    .line 796
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Lcom/samsung/http/HTTP;->getCacheDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 797
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    mul-long v0, v3, v5

    .line 798
    .local v0, space:J
    cmp-long v3, v0, p1

    if-lez v3, :cond_1b

    const/4 v3, 0x1

    :goto_1a
    return v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method public hasFileContent()Z
    .registers 2

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    return v0
.end method

.method public hasFirstLine()Z
    .registers 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->firstLine:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHeader(Ljava/lang/String;)Z
    .registers 3
    .parameter "name"

    .prologue
    .line 520
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTransferEncoding()Z
    .registers 2

    .prologue
    .line 1029
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/samsung/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->clearHeaders()V

    .line 84
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 86
    return-void
.end method

.method public isChunked()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasTransferEncoding()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1049
    :cond_7
    :goto_7
    return v0

    .line 1046
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    .line 1047
    if-eqz v1, :cond_7

    .line 1049
    const-string v0, "Chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public isCloseConnection()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 842
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_8

    .line 847
    :cond_7
    :goto_7
    return v0

    .line 844
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v1

    .line 845
    if-eqz v1, :cond_7

    .line 847
    const-string v0, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public isFileStreamNeeded()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 786
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_f

    .line 791
    :cond_e
    :goto_e
    return v0

    .line 789
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->isChunked()Z

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getContentLength()J

    move-result-wide v1

    const-wide/32 v3, 0x1d4c000

    cmp-long v1, v1, v3

    if-lez v1, :cond_e

    .line 790
    :cond_20
    const/4 v0, 0x1

    goto :goto_e
.end method

.method public isKeepAliveConnection()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 852
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->hasConnection()Z

    move-result v1

    if-nez v1, :cond_8

    .line 857
    :cond_7
    :goto_7
    return v0

    .line 854
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getConnection()Ljava/lang/String;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_7

    .line 857
    const-string v0, "Keep-Alive"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public performReceivedListener(Ljava/lang/String;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getHttpServer()Lcom/samsung/http/HTTPServer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 314
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getHttpServer()Lcom/samsung/http/HTTPServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/http/HTTPServer;->performReceivedListener(Ljava/lang/String;)V

    .line 315
    :cond_d
    return-void
.end method

.method public read(Lcom/samsung/http/HTTPSocket;)Z
    .registers 3
    .parameter "httpSock"

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/samsung/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 428
    :cond_1a
    const/4 v0, 0x0

    .line 431
    :goto_1b
    return v0

    .line 430
    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->init()V

    .line 431
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->set(Lcom/samsung/http/HTTPSocket;)Z

    move-result v0

    goto :goto_1b
.end method

.method readContentInFile(Lcom/samsung/http/HTTPPacket$DualReader;)V
    .registers 24
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPPacket;->isChunked()Z

    move-result v9

    .line 225
    .local v9, isChunkedRequest:Z
    const-wide/16 v6, 0x0

    .line 227
    .local v6, contentLen:J
    if-eqz v9, :cond_63

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPPacket$DualReader;->readALine()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    .line 236
    :goto_12
    const/4 v8, 0x0

    .line 237
    .local v8, fos:Ljava/io/FileOutputStream;
    new-instance v18, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/http/HTTP;->getCacheDirectory()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/http/HTTPPacket;->rand:Ljava/util/Random;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextLong()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".tmp"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v18, tempFile:Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    .end local v8           #fos:Ljava/io/FileOutputStream;
    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 240
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 241
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    .line 243
    const v5, 0x4b000

    .line 244
    .local v5, chunkSize:I
    :goto_59
    const-wide/16 v19, 0x0

    cmp-long v19, v19, v6

    if-ltz v19, :cond_68

    .line 276
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 277
    return-void

    .line 230
    .end local v5           #chunkSize:I
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v18           #tempFile:Ljava/io/File;
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPPacket;->getContentLength()J

    move-result-wide v6

    goto :goto_12

    .line 245
    .restart local v5       #chunkSize:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #tempFile:Ljava/io/File;
    :cond_68
    new-array v10, v5, [B

    .line 246
    .local v10, readBuf:[B
    const-wide/16 v11, 0x0

    .line 247
    .local v11, readCnt:J
    :goto_6c
    cmp-long v19, v11, v6

    if-ltz v19, :cond_9a

    .line 260
    :cond_70
    if-eqz v9, :cond_e2

    .line 262
    const-wide/16 v16, 0x0

    .line 265
    .local v16, skipLen:J
    :cond_74
    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v19, v19, v16

    move-object/from16 v0, p1

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/http/HTTPPacket$DualReader;->skip(J)J

    move-result-wide v14

    .line 266
    .local v14, skipCnt:J
    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-gez v19, :cond_d0

    .line 270
    :goto_8f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/http/HTTPPacket$DualReader;->readALine()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    goto :goto_59

    .line 248
    .end local v14           #skipCnt:J
    .end local v16           #skipLen:J
    :cond_9a
    sub-long v3, v6, v11

    .line 249
    .local v3, bufReadLen:J
    int-to-long v0, v5

    move-wide/from16 v19, v0

    cmp-long v19, v19, v3

    if-gez v19, :cond_a4

    .line 250
    int-to-long v3, v5

    .line 251
    :cond_a4
    const/16 v19, 0x0

    long-to-int v0, v3

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Lcom/samsung/http/HTTPPacket$DualReader;->read([BII)I

    move-result v13

    .line 252
    .local v13, readLen:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPPacket;->performReceivedListener(Ljava/lang/String;)V

    .line 253
    if-ltz v13, :cond_70

    .line 255
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v10, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V

    .line 256
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 257
    int-to-long v0, v13

    move-wide/from16 v19, v0

    add-long v11, v11, v19

    goto :goto_6c

    .line 268
    .end local v3           #bufReadLen:J
    .end local v13           #readLen:I
    .restart local v14       #skipCnt:J
    .restart local v16       #skipLen:J
    :cond_d0
    add-long v16, v16, v14

    .line 269
    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v16, v19

    if-ltz v19, :cond_74

    goto :goto_8f

    .line 273
    .end local v14           #skipCnt:J
    .end local v16           #skipLen:J
    :cond_e2
    const-wide/16 v6, 0x0

    goto/16 :goto_59
.end method

.method readContentInMemory(Lcom/samsung/http/HTTPPacket$DualReader;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getContentLength()J

    move-result-wide v2

    .line 285
    cmp-long v4, v2, v0

    if-gez v4, :cond_13

    .line 286
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    const-string v1, "Fail to create content buffer"

    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_13
    long-to-int v4, v2

    new-array v4, v4, [B

    .line 289
    :goto_16
    cmp-long v5, v0, v2

    if-ltz v5, :cond_26

    .line 304
    :cond_1a
    :goto_1a
    cmp-long v0, v2, v0

    if-eqz v0, :cond_3a

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fail to get All contents"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_26
    sub-long v5, v2, v0

    .line 292
    long-to-int v7, v0

    long-to-int v5, v5

    :try_start_2a
    invoke-virtual {p1, v4, v7, v5}, Lcom/samsung/http/HTTPPacket$DualReader;->read([BII)I

    move-result v5

    .line 293
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/http/HTTPPacket;->performReceivedListener(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_40

    .line 294
    if-ltz v5, :cond_1a

    .line 296
    int-to-long v5, v5

    add-long/2addr v0, v5

    goto :goto_16

    .line 307
    :cond_3a
    iput-boolean v8, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 308
    invoke-virtual {p0, v4, v8}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V

    .line 309
    return-void

    .line 298
    :catch_40
    move-exception v5

    goto :goto_1a
.end method

.method readHeaders(Lcom/samsung/http/HTTPPacket$DualReader;)Z
    .registers 6
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket$DualReader;->readALine()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, firstLineOfPacket:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_c

    .line 172
    const/4 v3, 0x0

    .line 184
    :goto_b
    return v3

    .line 174
    :cond_c
    invoke-direct {p0, v0}, Lcom/samsung/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket$DualReader;->readALine()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, headerLine:Ljava/lang/String;
    :goto_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1b

    .line 184
    const/4 v3, 0x1

    goto :goto_b

    .line 178
    :cond_1b
    new-instance v1, Lcom/samsung/http/HTTPHeader;

    invoke-direct {v1, v2}, Lcom/samsung/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, header:Lcom/samsung/http/HTTPHeader;
    invoke-virtual {v1}, Lcom/samsung/http/HTTPHeader;->hasName()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 180
    invoke-virtual {p0, v1}, Lcom/samsung/http/HTTPPacket;->setHeader(Lcom/samsung/http/HTTPHeader;)V

    .line 181
    :cond_29
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket$DualReader;->readALine()Ljava/lang/String;

    move-result-object v2

    goto :goto_13
.end method

.method removeTempFile()V
    .registers 2

    .prologue
    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 338
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 339
    iget-object v0, p0, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 340
    :cond_14
    return-void
.end method

.method protected set(Lcom/samsung/http/HTTPPacket;)V
    .registers 6
    .parameter "httpPacket"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/http/HTTPPacket;->setFirstLine(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->clearHeaders()V

    .line 412
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket;->getNHeaders()I

    move-result v2

    .line 413
    .local v2, nHeaders:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_f
    if-lt v1, v2, :cond_15

    .line 417
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->setContent(Lcom/samsung/http/HTTPPacket;)V

    .line 418
    return-void

    .line 414
    :cond_15
    invoke-virtual {p1, v1}, Lcom/samsung/http/HTTPPacket;->getHeader(I)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 415
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->addHeader(Lcom/samsung/http/HTTPHeader;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_f
.end method

.method protected set(Lcom/samsung/http/HTTPSocket;)Z
    .registers 3
    .parameter "httpSock"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->httpSock:Lcom/samsung/http/HTTPSocket;

    .line 404
    invoke-virtual {p1}, Lcom/samsung/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->set(Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;)Z
    .registers 3
    .parameter "in"

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/io/InputStream;Z)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 346
    :try_start_2
    iget-object v2, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    if-nez v2, :cond_16

    .line 347
    new-instance v2, Lcom/samsung/http/HTTPPacket$DualReader;

    invoke-direct {v2, p0, p1}, Lcom/samsung/http/HTTPPacket$DualReader;-><init>(Lcom/samsung/http/HTTPPacket;Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    .line 351
    :goto_d
    iget-object v2, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPPacket;->readHeaders(Lcom/samsung/http/HTTPPacket$DualReader;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 393
    :cond_15
    :goto_15
    return v0

    .line 349
    :cond_16
    const-string v2, "Something Left. Read input stream again!!!"

    invoke-static {v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_51
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_1b} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_1b} :catch_67

    goto :goto_d

    .line 372
    :catch_1c
    move-exception v1

    .line 373
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 374
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->removeTempFile()V

    goto :goto_15

    .line 354
    :cond_27
    if-eqz p2, :cond_31

    .line 355
    :try_start_29
    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    move v0, v1

    .line 356
    goto :goto_15

    .line 360
    :cond_31
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPPacket;->performReceivedListener(Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->handleExpect100Continue()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 367
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->isFileStreamNeeded()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 368
    iget-object v2, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPPacket;->readContentInFile(Lcom/samsung/http/HTTPPacket$DualReader;)V

    :goto_49
    move v0, v1

    .line 393
    goto :goto_15

    .line 370
    :cond_4b
    iget-object v2, p0, Lcom/samsung/http/HTTPPacket;->reader:Lcom/samsung/http/HTTPPacket$DualReader;

    invoke-virtual {p0, v2}, Lcom/samsung/http/HTTPPacket;->readContentInMemory(Lcom/samsung/http/HTTPPacket$DualReader;)V
    :try_end_50
    .catch Ljava/net/SocketTimeoutException; {:try_start_29 .. :try_end_50} :catch_1c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_50} :catch_51
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_29 .. :try_end_50} :catch_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_50} :catch_67

    goto :goto_49

    .line 377
    :catch_51
    move-exception v1

    .line 378
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 379
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 380
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->removeTempFile()V

    goto :goto_15

    .line 382
    :catch_5c
    move-exception v1

    .line 383
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 384
    invoke-virtual {v1}, Ljava/lang/NegativeArraySizeException;->printStackTrace()V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->removeTempFile()V

    goto :goto_15

    .line 387
    :catch_67
    move-exception v1

    .line 388
    invoke-static {v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 389
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 390
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->removeTempFile()V

    goto :goto_15
.end method

.method public setCacheControl(I)V
    .registers 3
    .parameter

    .prologue
    .line 968
    const-string v0, "max-age"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/http/HTTPPacket;->setCacheControl(Ljava/lang/String;I)V

    .line 969
    return-void
.end method

.method public setCacheControl(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string v1, "Cache-Control"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 832
    const-string v0, "Connection"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setContent(Lcom/samsung/http/HTTPPacket;)V
    .registers 4
    .parameter "packet"

    .prologue
    .line 652
    if-nez p1, :cond_3

    .line 658
    :goto_2
    return-void

    .line 654
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPPacket;->hasFileContent()Z

    move-result v0

    if-nez v0, :cond_10

    .line 655
    iget-object v0, p1, Lcom/samsung/http/HTTPPacket;->content:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V

    goto :goto_2

    .line 657
    :cond_10
    iget-object v0, p1, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/samsung/http/HTTPPacket;->setContent(Ljava/io/File;)V

    goto :goto_2
.end method

.method public setContent(Ljava/io/File;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/samsung/http/HTTPPacket;->removeTempFile()V

    .line 667
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->fileContent:Ljava/io/File;

    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 669
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    .line 670
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3
    .parameter "data"

    .prologue
    .line 687
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPPacket;->setContent(Ljava/lang/String;Z)V

    .line 688
    return-void
.end method

.method public setContent(Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 676
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_13

    .line 683
    :goto_9
    return-void

    .line 677
    :catch_a
    move-exception v0

    .line 678
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_9

    .line 680
    :catch_13
    move-exception v0

    .line 681
    const-string v0, "HTTP Packet"

    const-string v1, "Set Content data NullPointerException"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setContent([B)V
    .registers 3
    .parameter "content"

    .prologue
    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPPacket;->setContent([BZ)V

    .line 663
    return-void
.end method

.method public setContent([BZ)V
    .registers 5
    .parameter "data"
    .parameter "updateWithContentLength"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->content:[B

    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/http/HTTPPacket;->bFileContent:Z

    .line 646
    if-eqz p2, :cond_c

    .line 647
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPPacket;->setContentLength(J)V

    .line 648
    :cond_c
    return-void
.end method

.method public setContentInputStream(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->contentInput:Ljava/io/InputStream;

    .line 757
    return-void
.end method

.method public setContentLength(J)V
    .registers 4
    .parameter

    .prologue
    .line 813
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/http/HTTPPacket;->setLongHeader(Ljava/lang/String;J)V

    .line 814
    return-void
.end method

.method public setContentRange(JJJ)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    const-string v0, ""

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "bytes "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v2, p5

    if-gez v0, :cond_6c

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void

    .line 875
    :cond_6c
    const-string v0, "*"

    goto :goto_5e
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 775
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .registers 4
    .parameter

    .prologue
    .line 1014
    new-instance v0, Lcom/samsung/http/Date;

    invoke-direct {v0, p1}, Lcom/samsung/http/Date;-><init>(Ljava/util/Calendar;)V

    .line 1015
    const-string v1, "Date"

    invoke-virtual {v0}, Lcom/samsung/http/Date;->getDateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method public setHeader(Lcom/samsung/http/HTTPHeader;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 545
    if-nez p1, :cond_3

    .line 548
    :goto_2
    return-void

    .line 547
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/http/HTTPHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/samsung/http/HTTPPacket;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    .line 526
    .local v0, header:Lcom/samsung/http/HTTPHeader;
    if-eqz v0, :cond_a

    .line 527
    invoke-virtual {v0, p2}, Lcom/samsung/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 531
    :goto_9
    return-void

    .line 530
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/samsung/http/HTTPPacket;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setHost(Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 996
    .line 997
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 999
    :cond_1b
    const-string v0, "HOST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    return-void
.end method

.method public setHttpServer(Lcom/samsung/http/HTTPServer;)V
    .registers 2
    .parameter "server"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->httpServer:Lcom/samsung/http/HTTPServer;

    .line 111
    return-void
.end method

.method public setLongHeader(Ljava/lang/String;J)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 603
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    return-void
.end method

.method public setServer(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 982
    const-string v0, "Server"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    return-void
.end method

.method public setStringHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "name"
    .parameter "value"
    .parameter "startWidth"
    .parameter "endWidth"

    .prologue
    .line 564
    if-nez p2, :cond_3

    .line 572
    :goto_2
    return-void

    .line 566
    :cond_3
    move-object v0, p2

    .line 567
    .local v0, headerValue:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_1b
    invoke-virtual {v0, p4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    :cond_32
    invoke-virtual {p0, p1, v0}, Lcom/samsung/http/HTTPPacket;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "ver"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/samsung/http/HTTPPacket;->version:Ljava/lang/String;

    .line 97
    return-void
.end method
