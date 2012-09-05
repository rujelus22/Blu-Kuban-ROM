.class public Lgnu/inet/ftp/FTPConnection;
.super Ljava/lang/Object;
.source "FTPConnection.java"


# instance fields
.field protected connectionTimeout:I

.field protected debug:Z

.field protected dtp:Lgnu/inet/ftp/DTP;

.field protected fileStructure:I

.field protected in:Lgnu/inet/util/LineInputStream;

.field protected out:Lgnu/inet/util/CRLFOutputStream;

.field protected passive:Z

.field protected representationType:I

.field protected socket:Ljava/net/Socket;

.field protected timeout:I

.field protected transferMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 221
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lgnu/inet/ftp/FTPConnection;-><init>(Ljava/lang/String;IIIZ)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->representationType:I

    .line 191
    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->fileStructure:I

    .line 196
    iput v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    .line 236
    iput p3, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    .line 237
    iput p4, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    .line 238
    iput-boolean p5, p0, Lgnu/inet/ftp/FTPConnection;->debug:Z

    .line 239
    if-gtz p2, :cond_17

    .line 241
    const/16 p2, 0x15

    .line 245
    :cond_17
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    .line 246
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 247
    if-lez p3, :cond_6b

    .line 249
    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 255
    :goto_2a
    if-lez p4, :cond_31

    .line 257
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 260
    :cond_31
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 261
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 262
    new-instance v0, Lgnu/inet/util/CRLFInputStream;

    invoke-direct {v0, v1}, Lgnu/inet/util/CRLFInputStream;-><init>(Ljava/io/InputStream;)V

    .line 263
    new-instance v1, Lgnu/inet/util/LineInputStream;

    invoke-direct {v1, v0}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    .line 264
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    new-instance v0, Lgnu/inet/util/CRLFOutputStream;

    invoke-direct {v0, v1}, Lgnu/inet/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    .line 269
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_72

    .line 275
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 253
    :cond_6b
    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_2a

    .line 277
    :pswitch_71
    return-void

    .line 270
    :pswitch_data_72
    .packed-switch 0xdc
        :pswitch_71
    .end packed-switch
.end method

.method static final parseCode(Ljava/lang/String;)I
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1321
    new-array v2, v5, [C

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v4

    move v1, v0

    .line 1323
    :goto_19
    if-ge v1, v5, :cond_26

    .line 1325
    aget-char v3, v2, v1

    add-int/lit8 v3, v3, -0x30

    .line 1326
    if-ltz v3, :cond_25

    const/16 v4, 0x9

    if-le v3, v4, :cond_27

    .line 1328
    :cond_25
    const/4 v0, -0x1

    .line 1344
    :cond_26
    return v0

    .line 1331
    :cond_27
    packed-switch v1, :pswitch_data_38

    .line 1323
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1334
    :pswitch_2d
    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v0, v3

    .line 1335
    goto :goto_2a

    .line 1337
    :pswitch_31
    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    .line 1338
    goto :goto_2a

    .line 1340
    :pswitch_35
    add-int/2addr v0, v3

    goto :goto_2a

    .line 1331
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_31
        :pswitch_35
    .end packed-switch
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-virtual {p0, v2}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_54

    .line 303
    new-instance v0, Lgnu/inet/ftp/FTPException;

    invoke-direct {v0, v2}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v0

    :sswitch_29
    move v0, v1

    .line 315
    :goto_2a
    :sswitch_2a
    return v0

    .line 305
    :sswitch_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PASS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {p0, v2}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_66

    .line 317
    new-instance v0, Lgnu/inet/ftp/FTPException;

    invoke-direct {v0, v2}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v0

    :sswitch_52
    move v0, v1

    .line 315
    goto :goto_2a

    .line 293
    :sswitch_data_54
    .sparse-switch
        0xe6 -> :sswitch_2a
        0x14b -> :sswitch_2b
        0x14c -> :sswitch_29
        0x212 -> :sswitch_29
    .end sparse-switch

    .line 308
    :sswitch_data_66
    .sparse-switch
        0xca -> :sswitch_2a
        0xe6 -> :sswitch_2a
        0x14c -> :sswitch_52
        0x212 -> :sswitch_52
    .end sparse-switch
.end method

.method public changeWorkingDirectory(Ljava/lang/String;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2c

    .line 442
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 438
    :sswitch_27
    const/4 v0, 0x1

    .line 440
    :goto_28
    return v0

    :sswitch_29
    const/4 v0, 0x0

    goto :goto_28

    .line 435
    nop

    :sswitch_data_2c
    .sparse-switch
        0xfa -> :sswitch_27
        0x226 -> :sswitch_29
    .end sparse-switch
.end method

.method protected getResponse()Lgnu/inet/ftp/FTPResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1247
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->readResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    const/16 v2, 0xe2

    if-ne v1, v2, :cond_19

    .line 1250
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_15

    .line 1252
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->transferComplete()V

    .line 1254
    :cond_15
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->readResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 1256
    :cond_19
    return-object v0
.end method

.method protected initialiseDTP()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v1, 0x0

    const/16 v7, 0x2c

    .line 526
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_13

    .line 528
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->complete()V

    .line 529
    iput-object v10, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    .line 532
    :cond_13
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 533
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    if-eqz v0, :cond_117

    .line 535
    const-string v0, "PASV"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v2

    packed-switch v2, :pswitch_data_18e

    .line 592
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 540
    :pswitch_33
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 543
    const/16 v0, 0x2c

    :try_start_39
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 544
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 545
    :goto_43
    if-lt v0, v8, :cond_50

    if-gt v0, v9, :cond_50

    .line 547
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_43

    :cond_50
    move v4, v5

    .line 550
    :goto_51
    const/4 v0, 0x4

    if-ge v1, v0, :cond_60

    .line 552
    const/16 v0, 0x2c

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 550
    add-int/lit8 v1, v1, 0x1

    move v4, v0

    goto :goto_51

    .line 554
    :cond_60
    const/16 v0, 0x2c

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 555
    const/4 v0, -0x1

    if-eq v4, v0, :cond_6d

    if-ge v2, v4, :cond_a8

    .line 557
    :cond_6d
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed 227: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_86
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_39 .. :try_end_86} :catch_86
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_86} :catch_f5

    .line 581
    :catch_86
    move-exception v0

    .line 583
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 561
    :cond_a8
    add-int/lit8 v0, v2, 0x1

    :try_start_aa
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    move v0, v2

    .line 562
    :goto_b0
    if-lt v1, v8, :cond_bd

    if-gt v1, v9, :cond_bd

    .line 564
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b0

    .line 567
    :cond_bd
    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0x2c

    const/16 v7, 0x2e

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 569
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 571
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 573
    shl-int/lit8 v2, v4, 0x8

    or-int/2addr v2, v0

    .line 577
    new-instance v0, Lgnu/inet/ftp/PassiveModeDTP;

    iget v4, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    iget v5, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    invoke-direct/range {v0 .. v5}, Lgnu/inet/ftp/PassiveModeDTP;-><init>(Ljava/lang/String;ILjava/net/InetAddress;II)V

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;
    :try_end_ed
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_aa .. :try_end_ed} :catch_86
    .catch Ljava/lang/NumberFormatException; {:try_start_aa .. :try_end_ed} :catch_f5

    .line 653
    :pswitch_ed
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    iget v1, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    invoke-interface {v0, v1}, Lgnu/inet/ftp/DTP;->setTransferMode(I)V

    .line 654
    return-void

    .line 586
    :catch_f5
    move-exception v0

    .line 588
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :cond_117
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    move v0, v1

    .line 601
    :cond_121
    :goto_121
    iget-object v4, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-nez v4, :cond_13b

    .line 605
    :try_start_125
    new-instance v4, Lgnu/inet/ftp/ActiveModeDTP;

    iget v5, p0, Lgnu/inet/ftp/FTPConnection;->connectionTimeout:I

    iget v6, p0, Lgnu/inet/ftp/FTPConnection;->timeout:I

    invoke-direct {v4, v3, v2, v5, v6}, Lgnu/inet/ftp/ActiveModeDTP;-><init>(Ljava/net/InetAddress;III)V

    iput-object v4, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;
    :try_end_130
    .catch Ljava/net/BindException; {:try_start_125 .. :try_end_130} :catch_131

    goto :goto_121

    .line 609
    :catch_131
    move-exception v4

    .line 611
    add-int/lit8 v2, v2, 0x1

    .line 612
    add-int/lit8 v0, v0, 0x1

    .line 613
    const/16 v5, 0x9

    if-le v0, v5, :cond_121

    .line 615
    throw v4

    .line 621
    :cond_13b
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v0, "PORT"

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 622
    const/16 v0, 0x20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 624
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 625
    :goto_14b
    array-length v0, v3

    if-ge v1, v0, :cond_15d

    .line 627
    aget-byte v0, v3, v1

    .line 628
    if-gez v0, :cond_154

    .line 630
    add-int/lit16 v0, v0, 0x100

    .line 632
    :cond_154
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 633
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_14b

    .line 635
    :cond_15d
    const v0, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 636
    and-int/lit16 v1, v2, 0xff

    .line 637
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 638
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 640
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 643
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_194

    .line 648
    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v1}, Lgnu/inet/ftp/DTP;->abort()Z

    .line 649
    iput-object v10, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    .line 650
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 537
    nop

    :pswitch_data_18e
    .packed-switch 0xe3
        :pswitch_33
    .end packed-switch

    .line 643
    :pswitch_data_194
    .packed-switch 0xc8
        :pswitch_ed
    .end packed-switch
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1108
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_9

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1110
    :cond_9
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    .line 1112
    :cond_c
    if-nez p1, :cond_24

    .line 1114
    const-string v0, "LIST"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 1121
    :goto_13
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 1122
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    .line 1128
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 1118
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    goto :goto_13

    .line 1126
    :sswitch_3b
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1122
    :sswitch_data_42
    .sparse-switch
        0x7d -> :sswitch_3b
        0x96 -> :sswitch_3b
    .end sparse-switch
.end method

.method public logout()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 501
    :try_start_5
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_1a

    .line 506
    :goto_8
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_14

    .line 508
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->complete()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    .line 513
    :cond_14
    :try_start_14
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1c

    .line 518
    :goto_19
    return-void

    .line 503
    :catch_1a
    move-exception v0

    goto :goto_8

    .line 515
    :catch_1c
    move-exception v0

    goto :goto_19
.end method

.method protected readResponse()Lgnu/inet/ftp/FTPResponse;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xa

    const/4 v5, 0x3

    const/4 v4, 0x4

    .line 1265
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1266
    if-nez v1, :cond_16

    .line 1268
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_22

    .line 1272
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :cond_22
    invoke-static {v1}, Lgnu/inet/ftp/FTPConnection;->parseCode(Ljava/lang/String;)I

    move-result v2

    .line 1275
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2f

    .line 1277
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_2f
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1280
    if-ne v0, v7, :cond_3f

    .line 1282
    new-instance v0, Lgnu/inet/ftp/FTPResponse;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lgnu/inet/ftp/FTPResponse;-><init>(ILjava/lang/String;)V

    .line 1299
    :goto_3e
    return-object v0

    .line 1284
    :cond_3f
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_86

    .line 1286
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1290
    :goto_4f
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->in:Lgnu/inet/util/LineInputStream;

    invoke-virtual {v0}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1291
    if-nez v1, :cond_5f

    .line 1293
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :cond_5f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v4, :cond_7f

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_7f

    invoke-static {v1}, Lgnu/inet/ftp/FTPConnection;->parseCode(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_7f

    .line 1299
    new-instance v0, Lgnu/inet/ftp/FTPResponse;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lgnu/inet/ftp/FTPResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1304
    :cond_7f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1305
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4f

    .line 1311
    :cond_86
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retrieve(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_9

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 818
    :cond_9
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    .line 835
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RETR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3a

    .line 844
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 842
    :sswitch_33
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 838
    :sswitch_data_3a
    .sparse-switch
        0x7d -> :sswitch_33
        0x96 -> :sswitch_33
    .end sparse-switch
.end method

.method protected send(Ljava/lang/String;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1233
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1234
    iget-object v1, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v1, v0}, Lgnu/inet/util/CRLFOutputStream;->write([B)V

    .line 1235
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->writeln()V

    .line 1236
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->out:Lgnu/inet/util/CRLFOutputStream;

    invoke-virtual {v0}, Lgnu/inet/util/CRLFOutputStream;->flush()V

    .line 1237
    return-void
.end method

.method public setFileStructure(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "STRU"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 733
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 734
    packed-switch p1, :pswitch_data_46

    .line 746
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :pswitch_19
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 748
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 756
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 740
    :pswitch_36
    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 743
    :pswitch_3c
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 753
    :pswitch_42
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->fileStructure:I

    .line 758
    return-void

    .line 734
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_19
        :pswitch_36
        :pswitch_3c
    .end packed-switch

    .line 750
    :pswitch_data_50
    .packed-switch 0xc8
        :pswitch_42
    .end packed-switch
.end method

.method public setPassive(Z)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    if-eq v0, p1, :cond_9

    .line 665
    iput-boolean p1, p0, Lgnu/inet/ftp/FTPConnection;->passive:Z

    .line 666
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    .line 668
    :cond_9
    return-void
.end method

.method public setRepresentationType(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TYPE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 687
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 688
    packed-switch p1, :pswitch_data_46

    .line 700
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :pswitch_19
    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 704
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_50

    .line 712
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 694
    :pswitch_36
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 697
    :pswitch_3c
    const/16 v1, 0x49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 709
    :pswitch_42
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->representationType:I

    .line 714
    return-void

    .line 688
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_19
        :pswitch_36
        :pswitch_3c
    .end packed-switch

    .line 706
    :pswitch_data_50
    .packed-switch 0xc8
        :pswitch_42
    .end packed-switch
.end method

.method public setTransferMode(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "MODE"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 777
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 778
    packed-switch p1, :pswitch_data_4e

    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :pswitch_19
    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 792
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_58

    .line 804
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 784
    :pswitch_36
    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 787
    :pswitch_3c
    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 797
    :pswitch_42
    iput p1, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    .line 798
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_4d

    .line 800
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0, p1}, Lgnu/inet/ftp/DTP;->setTransferMode(I)V

    .line 806
    :cond_4d
    return-void

    .line 778
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_19
        :pswitch_36
        :pswitch_3c
    .end packed-switch

    .line 794
    :pswitch_data_58
    .packed-switch 0xc8
        :pswitch_42
    .end packed-switch
.end method

.method public store(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 858
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    if-eqz v0, :cond_9

    iget v0, p0, Lgnu/inet/ftp/FTPConnection;->transferMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 860
    :cond_9
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->initialiseDTP()V

    .line 862
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    invoke-virtual {p0, v0}, Lgnu/inet/ftp/FTPConnection;->send(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPConnection;->getResponse()Lgnu/inet/ftp/FTPResponse;

    move-result-object v0

    .line 865
    invoke-virtual {v0}, Lgnu/inet/ftp/FTPResponse;->getCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3a

    .line 871
    new-instance v1, Lgnu/inet/ftp/FTPException;

    invoke-direct {v1, v0}, Lgnu/inet/ftp/FTPException;-><init>(Lgnu/inet/ftp/FTPResponse;)V

    throw v1

    .line 869
    :sswitch_33
    iget-object v0, p0, Lgnu/inet/ftp/FTPConnection;->dtp:Lgnu/inet/ftp/DTP;

    invoke-interface {v0}, Lgnu/inet/ftp/DTP;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 865
    :sswitch_data_3a
    .sparse-switch
        0x7d -> :sswitch_33
        0x96 -> :sswitch_33
    .end sparse-switch
.end method
