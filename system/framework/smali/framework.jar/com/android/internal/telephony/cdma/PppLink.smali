.class final Lcom/android/internal/telephony/cdma/PppLink;
.super Lcom/android/internal/telephony/DataLink;
.source "PppLink.java"


# static fields
.field static final DOWN_ASCII_STRING:[B = null

.field static final EVENT_POLL_DATA_CONNECTION:I = 0x2

.field static final EVENT_PPP_OPERSTATE_CHANGED:I = 0x8

.field static final EVENT_PPP_PIDFILE_CHANGED:I = 0x9

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final PATH_PPP_OPERSTATE:Ljava/lang/String; = "/sys/class/net/ppp0/operstate"

.field static final POLL_SYSFS_MILLIS:I = 0x1f4

.field static final PPP_CONNECTING_TIMEOUT:I = 0x168

.field static final PROPERTY_PPPD_EXIT_CODE:Ljava/lang/String; = "net.cdma.ppp-exit"

.field static final SERVICE_PPPD_CDMA:Ljava/lang/String; = "pppd_cdma"

.field static final UNKNOWN_ASCII_STRING:[B

.field static final UP_ASCII_STRING:[B


# instance fields
.field lastPppdExitCode:I

.field private final mCheckPPPBuffer:[B

.field private phone:Lcom/android/internal/telephony/PhoneBase;

.field ppp_connecting_count:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_26

    sput-object v0, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    return-void

    .line 57
    nop

    :array_1a
    .array-data 0x1
        0x75t
        0x70t
    .end array-data

    .line 61
    nop

    :array_20
    .array-data 0x1
        0x64t
        0x6ft
        0x77t
        0x6et
    .end array-data

    .line 67
    :array_26
    .array-data 0x1
        0x75t
        0x6et
        0x6bt
        0x6et
        0x6ft
        0x77t
        0x6et
    .end array-data
.end method

.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 5
    .parameter "dc"
    .parameter "p"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataLink;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 76
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 81
    iput v1, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 86
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/PppLink;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 87
    return-void
.end method

.method private checkPPP()V
    .registers 8

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_a4

    const/4 v0, 0x1

    .line 172
    .local v0, connecting:Z
    :goto_9
    :try_start_9
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/sys/class/net/ppp0/operstate"

    const-string/jumbo v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v3, file:Ljava/io/RandomAccessFile;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 174
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 178
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UP_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-nez v4, :cond_3d

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->UNKNOWN_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-eqz v4, :cond_a7

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_a7

    .line 183
    :cond_3d
    const-string v4, "CDMA"

    const-string v5, "found ppp interface. Notifying CDMA connected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_54

    .line 187
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 188
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_54} :catch_ca

    .line 191
    :cond_54
    const/4 v0, 0x0

    .line 219
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :cond_55
    :goto_55
    if-eqz v0, :cond_a3

    .line 222
    const-string/jumbo v4, "net.cdma.ppp-exit"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    .local v2, exitCode:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_107

    .line 227
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    .line 229
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pppd exited with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 232
    const-string/jumbo v4, "pppd_cdma"

    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_9d

    .line 234
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 246
    :cond_9d
    :goto_9d
    iget v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 249
    .end local v2           #exitCode:Ljava/lang/String;
    :cond_a3
    return-void

    .line 170
    .end local v0           #connecting:Z
    :cond_a4
    const/4 v0, 0x0

    goto/16 :goto_9

    .line 192
    .restart local v0       #connecting:Z
    .restart local v3       #file:Ljava/io/RandomAccessFile;
    :cond_a7
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->getState()Lcom/android/internal/telephony/DataLink$PppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTED:Lcom/android/internal/telephony/DataLink$PppState;

    if-ne v4, v5, :cond_55

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->mCheckPPPBuffer:[B

    sget-object v5, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    sget-object v6, Lcom/android/internal/telephony/cdma/PppLink;->DOWN_ASCII_STRING:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/android/internal/util/ArrayUtils;->equals([B[BI)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 195
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 196
    const-string v4, "CDMA"

    const-string/jumbo v5, "ppp interface went down."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_c9} :catch_ca

    goto :goto_55

    .line 203
    .end local v3           #file:Ljava/io/RandomAccessFile;
    :catch_ca
    move-exception v1

    .line 204
    .local v1, ex:Ljava/io/IOException;
    instance-of v4, v1, Ljava/io/FileNotFoundException;

    if-nez v4, :cond_eb

    .line 205
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Poll ppp0 ex "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_eb
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_55

    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_55

    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_DOWN:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    .line 211
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    goto/16 :goto_55

    .line 237
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v2       #exitCode:Ljava/lang/String;
    :cond_107
    iget v4, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    const/16 v5, 0x168

    if-le v4, v5, :cond_9d

    .line 239
    const-string v4, "CDMA"

    const-string v5, "***** pppd abnormal state, stop the pppd *****"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v4, Lcom/android/internal/telephony/DataLink$PppState;->IDLE:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 241
    const-string/jumbo v4, "pppd_cdma"

    invoke-static {v4}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    if-eqz v4, :cond_9d

    .line 243
    iget-object v4, p0, Lcom/android/internal/telephony/DataLink;->mLinkChangeRegistrant:Landroid/os/Registrant;

    sget-object v5, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_EXITED:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {v4, v5}, Landroid/os/Registrant;->notifyResult(Ljava/lang/Object;)V

    goto/16 :goto_9d
.end method


# virtual methods
.method public connect()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 95
    const-string/jumbo v1, "net.cdma.ppp-exit"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "pppd_cdma"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 97
    const-string v1, "Start PPPD Now"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/android/internal/telephony/DataLink$PppState;->CONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, poll:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 102
    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 103
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/android/internal/telephony/DataLink$PppState;->DISCONNECTING:Lcom/android/internal/telephony/DataLink$PppState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->setState(Lcom/android/internal/telephony/DataLink$PppState;)V

    .line 107
    const-string/jumbo v0, "pppd_cdma"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->removeMessages(I)V

    .line 91
    return-void
.end method

.method public getLastLinkExitCode()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->lastPppdExitCode:I

    return v0
.end method

.method public getState()Lcom/android/internal/telephony/DataLink$PppState;
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/DataLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_5a

    .line 167
    :cond_5
    :goto_5
    return-void

    .line 150
    :pswitch_6
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/PppLink;->checkPPP()V

    .line 153
    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_1d

    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_5

    .line 154
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/PppLink;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 155
    .local v1, poll:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 156
    iget-object v2, p0, Lcom/android/internal/telephony/DataLink;->dataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_53

    .line 157
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_33} :catch_34

    goto :goto_5

    .line 161
    .end local v1           #poll:Landroid/os/Message;
    :catch_34
    move-exception v0

    .line 162
    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_POLL_DATA_CONNECTION DataConnectionTracker already destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ppp status not updated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 159
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #poll:Landroid/os/Message;
    :cond_53
    const-wide/16 v2, 0x1f4

    :try_start_55
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/PppLink;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_58
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_58} :catch_34

    goto :goto_5

    .line 145
    nop

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_6
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 293
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PppLink] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public setPasswordInfo(Landroid/database/Cursor;)V
    .registers 9
    .parameter "cursor"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 119
    .local v2, output:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/etc/ppp/pap-secrets"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_85
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_6e

    .line 120
    .end local v2           #output:Ljava/io/FileOutputStream;
    .local v3, output:Ljava/io/FileOutputStream;
    :try_start_d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 122
    :cond_13
    const-string/jumbo v4, "user"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string/jumbo v4, "server"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string/jumbo v4, "password"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_13

    .line 131
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_95
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_5d} :catch_98

    .line 136
    if-eqz v3, :cond_62

    :try_start_5f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_64

    :cond_62
    move-object v2, v3

    .line 141
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    :cond_63
    :goto_63
    return-void

    .line 137
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_64
    move-exception v1

    .line 138
    .local v1, e:Ljava/io/IOException;
    const-string v4, "CDMA"

    const-string v5, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 140
    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_63

    .line 132
    .end local v1           #e:Ljava/io/IOException;
    :catch_6e
    move-exception v1

    .line 133
    .restart local v1       #e:Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    const-string v4, "CDMA"

    const-string v5, "Could not create \'/etc/ppp/pap-secrets\'"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_85

    .line 136
    if-eqz v2, :cond_63

    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_63

    .line 137
    :catch_7c
    move-exception v1

    .line 138
    const-string v4, "CDMA"

    const-string v5, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    :catchall_85
    move-exception v4

    .line 136
    :goto_86
    if-eqz v2, :cond_8b

    :try_start_88
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    .line 139
    :cond_8b
    :goto_8b
    throw v4

    .line 137
    :catch_8c
    move-exception v1

    .line 138
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "CDMA"

    const-string v6, "Error closing \'/etc/ppp/pap-secrets\'"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8b

    .line 135
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catchall_95
    move-exception v4

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_86

    .line 132
    .end local v2           #output:Ljava/io/FileOutputStream;
    .restart local v3       #output:Ljava/io/FileOutputStream;
    :catch_98
    move-exception v1

    move-object v2, v3

    .end local v3           #output:Ljava/io/FileOutputStream;
    .restart local v2       #output:Ljava/io/FileOutputStream;
    goto :goto_6f
.end method

.method public setPppConnectionOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "name"
    .parameter "server"
    .parameter "password"
    .parameter "pppAuth"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, builder:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v1, options_builder:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 256
    .local v3, output:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 258
    .local v2, options_output:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    if-ne p4, v4, :cond_64

    .line 259
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v5, "require-pap"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v5, "/dev/ttyCDMA0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_49

    .line 263
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_48
    return-void

    .line 265
    :cond_49
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "password "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 266
    :cond_64
    const/4 v4, 0x2

    if-ne p4, v4, :cond_bc

    .line 267
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v5, "require-chap"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v5, "/dev/ttyCDMA0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a1

    .line 271
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 273
    :cond_a1
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "password "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 275
    :cond_bc
    const/4 v4, 0x3

    if-ne p4, v4, :cond_116

    .line 276
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v5, "require-eap"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v4, "net.cdma.pppd.user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v5, "/dev/ttyCDMA0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_fa

    .line 280
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 282
    :cond_fa
    const-string/jumbo v4, "net.cdma.pppd.password"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "password "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 285
    :cond_116
    const-string/jumbo v4, "net.cdma.pppd.authtype"

    const-string/jumbo v5, "noauth"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v4, "net.cdma.pppd.user"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v4, "net.cdma.pppd.password"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "net.cdma.datalinkinterface"

    const-string v5, "/dev/ttyCDMA0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48
.end method

.method public setState(Lcom/android/internal/telephony/DataLink$PppState;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/PppLink;->log(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/PppLink;->ppp_connecting_count:I

    .line 299
    iput-object p1, p0, Lcom/android/internal/telephony/DataLink;->state:Lcom/android/internal/telephony/DataLink$PppState;

    .line 300
    return-void
.end method
