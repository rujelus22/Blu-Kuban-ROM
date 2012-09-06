.class public Lorg/apache/commons/net/ftp/FTP;
.super Lorg/apache/commons/net/SocketClient;


# static fields
.field public static final ASCII_FILE_TYPE:I = 0x0

.field public static final BINARY_FILE_TYPE:I = 0x2

.field public static final BLOCK_TRANSFER_MODE:I = 0xb

.field public static final CARRIAGE_CONTROL_TEXT_FORMAT:I = 0x6

.field public static final COMPRESSED_TRANSFER_MODE:I = 0xc

.field public static final DEFAULT_CONTROL_ENCODING:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_DATA_PORT:I = 0x14

.field public static final DEFAULT_PORT:I = 0x15

.field public static final EBCDIC_FILE_TYPE:I = 0x1

.field public static final FILE_STRUCTURE:I = 0x7

.field public static final LOCAL_FILE_TYPE:I = 0x3

.field public static final NON_PRINT_TEXT_FORMAT:I = 0x4

.field public static final PAGE_STRUCTURE:I = 0x9

.field public static final RECORD_STRUCTURE:I = 0x8

.field public static final STREAM_TRANSFER_MODE:I = 0xa

.field public static final TELNET_TEXT_FORMAT:I = 0x5

.field private static final __modes:Ljava/lang/String; = "AEILNTCFRPSBC"


# instance fields
.field protected _commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

.field protected _controlEncoding:Ljava/lang/String;

.field protected _controlInput_:Ljava/io/BufferedReader;

.field protected _controlOutput_:Ljava/io/BufferedWriter;

.field protected _newReplyString:Z

.field protected _replyCode:I

.field protected _replyLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _replyString:Ljava/lang/String;

.field protected strictMultilineParsing:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/apache/commons/net/SocketClient;-><init>()V

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->setDefaultPort(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    new-instance v0, Lorg/apache/commons/net/ProtocolCommandSupport;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ProtocolCommandSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-void
.end method

.method private __buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_12

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private __getReply()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__getReply(Z)V

    return-void
.end method

.method private __getReply(Z)V
    .registers 7

    const/4 v4, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance v0, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_38

    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated server reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_3a
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_44} :catch_63

    iget-object v3, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-le v1, v4, :cond_8e

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_8e

    :cond_53
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7d

    new-instance v0, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v1, "Connection closed without indication."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_63
    move-exception v1

    new-instance v1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse response code.\nServer Reply: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7d
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isStrictMultilineParsing()Z

    move-result v1

    if-eqz v1, :cond_a5

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/net/ftp/FTP;->__strictCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    :cond_8e
    :goto_8e
    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->fireReplyReceived(ILjava/lang/String;)V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    const/16 v1, 0x1a5

    if-ne v0, v1, :cond_ac

    new-instance v0, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v1, "FTP response 421 received.  Server closed connection."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a5
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__lenientCheck(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_8e

    :cond_ac
    return-void
.end method

.method private __lenientCheck(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1b

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method private __send(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    new-instance v0, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;

    const-string v1, "Connection unexpectedly closed."

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    throw v0
.end method

.method private __strictCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method protected __getReplyNoReport()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__getReply(Z)V

    return-void
.end method

.method protected __noop()V
    .registers 3

    const/16 v0, 0x20

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->__buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__send(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReplyNoReport()V

    return-void
.end method

.method protected _connectAction_()V
    .registers 5

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->_connectAction_()V

    new-instance v0, Lorg/apache/commons/net/io/CRLFLineReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTP;->_input_:Ljava/io/InputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/CRLFLineReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTP;->_output_:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTP;->getControlEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->connectTimeout:I

    if-lez v0, :cond_5f

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    iget v2, p0, Lorg/apache/commons/net/ftp/FTP;->connectTimeout:I

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_38
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_58
    .catch Ljava/net/SocketTimeoutException; {:try_start_38 .. :try_end_46} :catch_4c

    :cond_46
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_4b
    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    :try_start_4d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Timed out waiting for initial connect reply"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v0

    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTP;->_socket_:Ljava/net/Socket;

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0

    :cond_5f
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositivePreliminary(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    goto :goto_4b
.end method

.method public abor()I
    .registers 2

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public acct(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public allo(I)I
    .registers 4

    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public allo(II)I
    .registers 6

    const/16 v0, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " R "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public appe(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public cdup()I
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public cwd(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dele(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disconnect()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/apache/commons/net/SocketClient;->disconnect()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlInput_:Ljava/io/BufferedReader;

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    iput-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    return-void
.end method

.method public eprt(Ljava/net/InetAddress;I)I
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, p1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_44

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    :goto_24
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_44
    instance-of v2, p1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_24

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public epsv()I
    .registers 2

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public feat()I
    .registers 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method protected getCommandSupport()Lorg/apache/commons/net/ProtocolCommandSupport;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_commandSupport_:Lorg/apache/commons/net/ProtocolCommandSupport;

    return-object v0
.end method

.method public getControlEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()I
    .registers 2

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public getReplyCode()I
    .registers 2

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public getReplyString()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->_newReplyString:Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyString:Ljava/lang/String;

    goto :goto_6
.end method

.method public getReplyStrings()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTP;->_replyLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public help()I
    .registers 2

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public help(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isStrictMultilineParsing()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return v0
.end method

.method public list()I
    .registers 2

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public list(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mdtm(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x21

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mfmt(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const/16 v0, 0x23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mkd(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mlsd()I
    .registers 2

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public mlsd(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x26

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mlst()I
    .registers 2

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public mlst(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x27

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mode(I)I
    .registers 5

    const/16 v0, 0xc

    const-string v1, "AEILNTCFRPSBC"

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nlst()I
    .registers 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public nlst(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noop()I
    .registers 2

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public pass(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public pasv()I
    .registers 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public port(Ljava/net/InetAddress;I)I
    .registers 7

    const/16 v3, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 v1, p2, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public pwd()I
    .registers 2

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public quit()I
    .registers 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rein()I
    .registers 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public rest(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public retr(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rmd(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rnfr(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rnto(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(ILjava/lang/String;)I
    .registers 4

    invoke-static {p1}, Lorg/apache/commons/net/ftp/FTPCommand;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTP;->_controlOutput_:Ljava/io/BufferedWriter;

    if-nez v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTP;->__buildMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->__send(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTP;->fireCommandSent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTP;->__getReply()V

    iget v0, p0, Lorg/apache/commons/net/ftp/FTP;->_replyCode:I

    return v0
.end method

.method public setControlEncoding(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTP;->_controlEncoding:Ljava/lang/String;

    return-void
.end method

.method public setStrictMultilineParsing(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTP;->strictMultilineParsing:Z

    return-void
.end method

.method public site(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public smnt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stat()I
    .registers 2

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public stat(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stor(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stou()I
    .registers 2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public stou(Ljava/lang/String;)I
    .registers 3

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stru(I)I
    .registers 5

    const/16 v0, 0xb

    const-string v1, "AEILNTCFRPSBC"

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public syst()I
    .registers 2

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(I)I

    move-result v0

    return v0
.end method

.method public type(I)I
    .registers 5

    const/16 v0, 0xa

    const-string v1, "AEILNTCFRPSBC"

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public type(II)I
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AEILNTCFRPSBC"

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    if-ne p1, v1, :cond_24

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_19
    const/16 v1, 0xa

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0

    :cond_24
    const-string v1, "AEILNTCFRPSBC"

    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public user(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/ftp/FTP;->sendCommand(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
