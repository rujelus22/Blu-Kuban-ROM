.class public Lcom/syncmldstmo/network/smlHttpAdapter;
.super Ljava/lang/Object;
.source "smlHttpAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/network/smlHttpAdapter$CustomTrustManager;
    }
.end annotation


# static fields
.field public static ENABLE_HTTPDATA_DEBUG:Z

.field public static HTTP_CLIENT_NAME:Ljava/lang/String;

.field private static cResolver:Landroid/content/ContentResolver;

.field public static input:Ljava/io/InputStream;

.field public static isConnected:Z

.field public static mConnMgr:Landroid/net/ConnectivityManager;

.field public static mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

.field private static m_bConnectionTypeClose:Z

.field public static m_socket:Ljava/net/Socket;

.field public static output:Ljava/io/OutputStream;

.field public static sslSocket:Ljavax/net/ssl/SSLSocket;

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private debugfile_full_path:Ljava/lang/String;

.field private m_Connection:Ljava/lang/String;

.field public m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

.field public m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

.field public m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

.field private m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

.field private m_bufDebug:Ljava/io/ByteArrayOutputStream;

.field private m_context:Landroid/content/Context;

.field private m_csHost:Ljava/lang/String;

.field private m_csHttpPath:Ljava/lang/String;

.field private m_csHttpURL:Ljava/lang/String;

.field private m_nPort:I

.field private m_profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field private m_recvBodyLength:I

.field private m_recvBodySize:I

.field public m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private m_tpType:I

.field public sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    sput-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    .line 91
    sput-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    .line 95
    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    .line 96
    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    .line 97
    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 98
    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->isConnected:Z

    .line 101
    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/16 v3, 0x2000

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 74
    new-instance v0, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 75
    new-instance v0, Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-direct {v0, v3}, Lcom/syncmldstmo/base/smlByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    .line 77
    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    .line 78
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_Connection:Ljava/lang/String;

    .line 79
    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    .line 82
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 86
    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    .line 87
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    .line 88
    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    .line 89
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpURL:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpPath:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->debugfile_full_path:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_context:Landroid/content/Context;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->cResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method public static getIsConnected()Z
    .registers 1

    .prologue
    .line 1283
    sget-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->isConnected:Z

    return v0
.end method

.method public static lookupHost(Ljava/lang/String;)I
    .registers 7
    .parameter "hostname"

    .prologue
    .line 1297
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_27

    move-result-object v3

    .line 1306
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 1307
    .local v1, addrBytes:[B
    const/4 v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int v0, v4, v5

    .line 1309
    .end local v1           #addrBytes:[B
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    :goto_26
    return v0

    .line 1299
    :catch_27
    move-exception v2

    .line 1301
    .local v2, e:Ljava/net/UnknownHostException;
    const/4 v0, -0x1

    goto :goto_26
.end method

.method public static setIsConnected(Z)V
    .registers 1
    .parameter "isCon"

    .prologue
    .line 1288
    sput-boolean p0, Lcom/syncmldstmo/network/smlHttpAdapter;->isConnected:Z

    .line 1289
    return-void
.end method

.method public static smlGetNetworkInfo()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 996
    new-instance v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;

    invoke-direct {v7}, Lcom/syncmldstmo/database/smlDbNetworkProfile;-><init>()V

    .line 997
    iget-object v0, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    new-instance v1, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    invoke-direct {v1}, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;-><init>()V

    aput-object v1, v0, v2

    .line 999
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1004
    :try_start_16
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->cResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_11b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_125

    move-result-object v1

    .line 1006
    :try_start_20
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1008
    if-nez v0, :cond_34

    .line 1010
    const-string v0, "No enabled APN. Use default."

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_10c

    .line 1059
    :cond_2b
    :goto_2b
    if-eqz v1, :cond_30

    .line 1060
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1063
    :cond_30
    :goto_30
    invoke-static {v7}, Lcom/syncmldstmo/database/smlDb;->smlSetNetworkProfile(Lcom/syncmldstmo/database/smlDbNetworkProfile;)V

    .line 1064
    return-void

    .line 1014
    :cond_34
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1016
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1017
    const-string v2, "apn"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1018
    const-string v3, "authtype"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1019
    const-string v4, "user"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1020
    const-string v5, "password"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1021
    const-string v6, "proxy"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1022
    const-string v8, "port"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1026
    :cond_64
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->NetProfileName:Ljava/lang/String;

    .line 1027
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->APN:Ljava/lang/String;

    .line 1028
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnType:I

    .line 1029
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnLoginID:Ljava/lang/String;

    .line 1030
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ApnPassword:Ljava/lang/String;

    .line 1032
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1033
    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ad

    const-string v10, "0.0.0.0"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 1035
    :cond_ad
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    .line 1047
    :cond_b5
    :goto_b5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "APN name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1049
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_64

    goto/16 :goto_2b

    .line 1039
    :cond_d7
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    .line 1040
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 1041
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 1043
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 1044
    iget-object v9, v7, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const-string v10, "80"

    iput-object v10, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;
    :try_end_10b
    .catchall {:try_start_34 .. :try_end_10b} :catchall_123
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_10b} :catch_10c

    goto :goto_b5

    .line 1053
    :catch_10c
    move-exception v0

    .line 1055
    :goto_10d
    :try_start_10d
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_123

    .line 1059
    if-eqz v1, :cond_30

    .line 1060
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_30

    .line 1059
    :catchall_11b
    move-exception v0

    move-object v1, v6

    :goto_11d
    if-eqz v1, :cond_122

    .line 1060
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_122
    throw v0

    .line 1059
    :catchall_123
    move-exception v0

    goto :goto_11d

    .line 1053
    :catch_125
    move-exception v0

    move-object v1, v6

    goto :goto_10d
.end method

.method public static smltpApnClose()V
    .registers 2

    .prologue
    .line 1211
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1213
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnDisable()V

    .line 1214
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpendConnectivity()V

    .line 1215
    return-void
.end method

.method public static smltpApnDisable()V
    .registers 2

    .prologue
    .line 1199
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1201
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    if-eqz v0, :cond_1a

    .line 1203
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 1204
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v0}, Lcom/android/common/NetworkConnectivityListener;->stopListening()V

    .line 1205
    const/4 v0, 0x0

    sput-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 1207
    :cond_1a
    return-void
.end method

.method private smltpConnect()I
    .registers 15

    .prologue
    .line 308
    const/4 v6, 0x0

    .line 309
    .local v6, ret:Z
    const/16 v9, 0x8

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 312
    new-instance v9, Lcom/syncmldstmo/network/smlNetworkTimer;

    const-string v10, "connect"

    invoke-direct {v9, v10}, Lcom/syncmldstmo/network/smlNetworkTimer;-><init>(Ljava/lang/String;)V

    .line 316
    :try_start_f
    iget v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_167

    .line 318
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v9, :cond_2a

    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 320
    const/16 v9, 0x8

    const-string v10, "sslSocket != null && sslSocket.isConnected()"

    invoke-static {v9, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 324
    :cond_2a
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->sslInit()Z

    move-result v6

    .line 325
    if-nez v6, :cond_38

    .line 327
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 328
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 329
    const/4 v9, -0x2

    .line 461
    :goto_37
    return v9

    .line 332
    :cond_38
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-boolean v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    if-eqz v9, :cond_db

    .line 334
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    .line 335
    const/4 v5, 0x0

    .line 336
    .local v5, port:I
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v0, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 337
    .local v0, NetProfileProxyAddr:Ljava/lang/String;
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v1, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 339
    .local v1, NetProfileProxyPort:Ljava/lang/String;
    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6b

    .line 340
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 342
    :cond_6b
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_70} :catch_156

    .line 345
    .local v8, tunnelAddr:Ljava/net/InetSocketAddress;
    const/4 v4, 0x0

    .line 347
    .local v4, nRet:I
    :try_start_71
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-nez v9, :cond_7a

    .line 349
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 350
    const/4 v9, -0x2

    goto :goto_37

    .line 353
    :cond_7a
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    const v10, 0x15f90

    invoke-virtual {v9, v8, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 354
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-direct {p0, v9}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpTunnelHandshake(Ljava/net/Socket;)I

    move-result v4

    .line 355
    if-eqz v4, :cond_92

    .line 357
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 358
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 359
    const/4 v9, -0x2

    goto :goto_37

    .line 363
    :cond_92
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v10, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    iget-object v11, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    iget v12, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/SSLSocket;

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 364
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 365
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const v10, 0x15f90

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 366
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v10, Lcom/syncmldstmo/network/smlHttpAdapter$1;

    invoke-direct {v10, p0}, Lcom/syncmldstmo/network/smlHttpAdapter$1;-><init>(Lcom/syncmldstmo/network/smlHttpAdapter;)V

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 373
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_c0} :catch_ca
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_c0} :catch_156

    .line 457
    .end local v0           #NetProfileProxyAddr:Ljava/lang/String;
    .end local v1           #NetProfileProxyPort:Ljava/lang/String;
    .end local v4           #nRet:I
    .end local v5           #port:I
    .end local v8           #tunnelAddr:Ljava/net/InetSocketAddress;
    :goto_c0
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/syncmldstmo/network/smlHttpAdapter;->setIsConnected(Z)V

    .line 459
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 461
    const/4 v9, 0x0

    goto/16 :goto_37

    .line 375
    .restart local v0       #NetProfileProxyAddr:Ljava/lang/String;
    .restart local v1       #NetProfileProxyPort:Ljava/lang/String;
    .restart local v4       #nRet:I
    .restart local v5       #port:I
    .restart local v8       #tunnelAddr:Ljava/net/InetSocketAddress;
    :catch_ca
    move-exception v3

    .line 378
    .local v3, e:Ljava/lang/Exception;
    :try_start_cb
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 379
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 380
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 381
    const/4 v9, -0x2

    goto/16 :goto_37

    .line 386
    .end local v0           #NetProfileProxyAddr:Ljava/lang/String;
    .end local v1           #NetProfileProxyPort:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #nRet:I
    .end local v5           #port:I
    .end local v8           #tunnelAddr:Ljava/net/InetSocketAddress;
    :cond_db
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    iget v11, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    invoke-virtual {v9, v10, v11}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v9

    check-cast v9, Ljavax/net/ssl/SSLSocket;

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 387
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 388
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const v10, 0x15f90

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 390
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "m_csHost : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "m_nPort : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 393
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    new-instance v10, Lcom/syncmldstmo/network/smlHttpAdapter$2;

    invoke-direct {v10, p0}, Lcom/syncmldstmo/network/smlHttpAdapter$2;-><init>(Lcom/syncmldstmo/network/smlHttpAdapter;)V

    invoke-virtual {v9, v10}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 400
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 401
    new-instance v9, Ljava/io/BufferedInputStream;

    sget-object v10, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    .line 402
    new-instance v9, Ljava/io/BufferedOutputStream;

    sget-object v10, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v10}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;
    :try_end_154
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_154} :catch_156

    goto/16 :goto_c0

    .line 448
    :catch_156
    move-exception v3

    .line 451
    .local v3, e:Ljava/io/IOException;
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 452
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 453
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 454
    const/4 v9, -0x2

    goto/16 :goto_37

    .line 407
    .end local v3           #e:Ljava/io/IOException;
    :cond_167
    const/4 v7, 0x0

    .line 408
    .local v7, socketAddress:Ljava/net/SocketAddress;
    const/4 v2, 0x0

    .line 410
    .local v2, conProxy:Ljava/net/Proxy;
    :try_start_169
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-eqz v9, :cond_17f

    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 412
    const/16 v9, 0x8

    const-string v10, "m_socket != null && m_socket.isConnected()"

    invoke-static {v9, v10}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 416
    :cond_17f
    new-instance v9, Ljava/net/Socket;

    invoke-direct {v9}, Ljava/net/Socket;-><init>()V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    .line 417
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-boolean v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    if-eqz v9, :cond_1e6

    .line 419
    const/4 v5, 0x0

    .line 420
    .restart local v5       #port:I
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v0, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 421
    .restart local v0       #NetProfileProxyAddr:Ljava/lang/String;
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v9, v9, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v1, v9, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyPort:Ljava/lang/String;

    .line 423
    .restart local v1       #NetProfileProxyPort:Ljava/lang/String;
    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1b2

    .line 424
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 426
    :cond_1b2
    new-instance v2, Ljava/net/Proxy;

    .end local v2           #conProxy:Ljava/net/Proxy;
    sget-object v9, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v10, Ljava/net/InetSocketAddress;

    invoke-direct {v10, v0, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v9, v10}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 427
    .restart local v2       #conProxy:Ljava/net/Proxy;
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v7

    .line 429
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conProxy.address() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 438
    .end local v0           #NetProfileProxyAddr:Ljava/lang/String;
    .end local v1           #NetProfileProxyPort:Ljava/lang/String;
    .end local v5           #port:I
    :goto_1dc
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-nez v9, :cond_220

    .line 440
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 441
    const/4 v9, -0x2

    goto/16 :goto_37

    .line 433
    :cond_1e6
    new-instance v7, Ljava/net/InetSocketAddress;

    .end local v7           #socketAddress:Ljava/net/SocketAddress;
    iget-object v9, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    iget v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    invoke-direct {v7, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 434
    .restart local v7       #socketAddress:Ljava/net/SocketAddress;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "m_csHost : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "m_nPort : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    goto :goto_1dc

    .line 443
    :cond_220
    sget-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    const v10, 0x15f90

    invoke-virtual {v9, v7, v10}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 444
    new-instance v9, Ljava/io/BufferedInputStream;

    sget-object v10, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    .line 445
    new-instance v9, Ljava/io/BufferedOutputStream;

    sget-object v10, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/16 v11, 0x2000

    invoke-direct {v9, v10, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    sput-object v9, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;
    :try_end_246
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_246} :catch_156

    goto/16 :goto_c0
.end method

.method private smltpOpenInternal()I
    .registers 4

    .prologue
    .line 293
    const/16 v1, 0x8

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 295
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_29

    .line 297
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 298
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "DSAlertService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 299
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 300
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 303
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_29
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpConnect()I

    move-result v1

    return v1
.end method

.method private smltpTunnelHandshake(Ljava/net/Socket;)I
    .registers 17
    .parameter "tunnel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    const/16 v12, 0x8

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 468
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 469
    .local v7, out:Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpMakeSSLTunneling()Ljava/lang/String;

    move-result-object v5

    .line 470
    .local v5, msg:Ljava/lang/String;
    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 471
    const/4 v12, -0x1

    .line 531
    :goto_16
    return v12

    .line 476
    :cond_17
    :try_start_17
    const-string v12, "UTF-8"

    invoke-virtual {v5, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_1c} :catch_41

    move-result-object v0

    .line 482
    .local v0, b:[B
    :goto_1d
    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 483
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V

    .line 485
    const/16 v12, 0xc8

    new-array v8, v12, [B

    .line 486
    .local v8, reply:[B
    const/4 v9, 0x0

    .line 487
    .local v9, replyLen:I
    const/4 v6, 0x0

    .line 488
    .local v6, newlinesSeen:I
    const/4 v1, 0x0

    .line 490
    .local v1, headerDone:Z
    invoke-virtual/range {p1 .. p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .local v4, in:Ljava/io/InputStream;
    move v10, v9

    .line 492
    .end local v9           #replyLen:I
    .local v10, replyLen:I
    :goto_2f
    const/4 v12, 0x2

    if-ge v6, v12, :cond_61

    .line 494
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 495
    .local v2, i:I
    if-gez v2, :cond_47

    .line 497
    const/16 v12, 0x8

    const-string v13, "Unable to tunnel"

    invoke-static {v12, v13}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 498
    const/4 v12, -0x2

    goto :goto_16

    .line 478
    .end local v0           #b:[B
    .end local v1           #headerDone:Z
    .end local v2           #i:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #newlinesSeen:I
    .end local v8           #reply:[B
    .end local v10           #replyLen:I
    :catch_41
    move-exception v3

    .line 480
    .local v3, ignored:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #b:[B
    goto :goto_1d

    .line 500
    .end local v3           #ignored:Ljava/io/UnsupportedEncodingException;
    .restart local v1       #headerDone:Z
    .restart local v2       #i:I
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v6       #newlinesSeen:I
    .restart local v8       #reply:[B
    .restart local v10       #replyLen:I
    :cond_47
    const/16 v12, 0xa

    if-ne v2, v12, :cond_51

    .line 502
    const/4 v1, 0x1

    .line 503
    add-int/lit8 v6, v6, 0x1

    move v9, v10

    .end local v10           #replyLen:I
    .restart local v9       #replyLen:I
    :goto_4f
    move v10, v9

    .line 513
    .end local v9           #replyLen:I
    .restart local v10       #replyLen:I
    goto :goto_2f

    .line 505
    :cond_51
    const/16 v12, 0xd

    if-eq v2, v12, :cond_9c

    .line 507
    const/4 v6, 0x0

    .line 508
    if-nez v1, :cond_9c

    array-length v12, v8

    if-ge v10, v12, :cond_9c

    .line 510
    add-int/lit8 v9, v10, 0x1

    .end local v10           #replyLen:I
    .restart local v9       #replyLen:I
    int-to-byte v12, v2

    aput-byte v12, v8, v10

    goto :goto_4f

    .line 518
    .end local v2           #i:I
    .end local v9           #replyLen:I
    .restart local v10       #replyLen:I
    :cond_61
    :try_start_61
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "UTF-8"

    invoke-direct {v11, v8, v12, v10, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_69
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_61 .. :try_end_69} :catch_91

    .line 525
    .local v11, replyStr:Ljava/lang/String;
    :goto_69
    const-string v12, "HTTP/1.1 200"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_99

    .line 527
    const/16 v12, 0x8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to tunnel through .  Proxy returns \""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 528
    const/4 v12, -0x2

    goto :goto_16

    .line 520
    .end local v11           #replyStr:Ljava/lang/String;
    :catch_91
    move-exception v3

    .line 522
    .restart local v3       #ignored:Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v12, v10}, Ljava/lang/String;-><init>([BII)V

    .restart local v11       #replyStr:Ljava/lang/String;
    goto :goto_69

    .line 531
    .end local v3           #ignored:Ljava/io/UnsupportedEncodingException;
    :cond_99
    const/4 v12, 0x0

    goto/16 :goto_16

    .end local v11           #replyStr:Ljava/lang/String;
    .restart local v2       #i:I
    :cond_9c
    move v9, v10

    .end local v10           #replyLen:I
    .restart local v9       #replyLen:I
    goto :goto_4f
.end method

.method public static smltpendConnectivity()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 1238
    const-string v0, ""

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1243
    :try_start_7
    sget-object v0, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1c

    .line 1247
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1248
    const/4 v0, 0x0

    sput-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 1255
    :cond_1c
    :goto_1c
    return-void

    .line 1251
    :catch_1d
    move-exception v0

    .line 1253
    const-string v0, "error "

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1c
.end method

.method private smltplReceiveDataInternal()I
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x2

    const/16 v7, 0x8

    const/4 v5, 0x0

    const/4 v3, -0x4

    .line 773
    const-string v6, ""

    invoke-static {v7, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 775
    sget-object v6, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    if-nez v6, :cond_10

    .line 881
    :cond_f
    :goto_f
    return v3

    .line 779
    :cond_10
    new-instance v6, Lcom/syncmldstmo/network/smlNetworkTimer;

    const-string v7, "receive"

    invoke-direct {v6, v7}, Lcom/syncmldstmo/network/smlNetworkTimer;-><init>(Ljava/lang/String;)V

    .line 783
    :try_start_17
    iget v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    if-ne v6, v8, :cond_5b

    .line 785
    sget-object v6, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v6, :cond_27

    .line 787
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 788
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    move v3, v4

    .line 789
    goto :goto_f

    .line 793
    :cond_27
    sget-object v4, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const v6, 0x15f90

    invoke-virtual {v4, v6}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 808
    :goto_2f
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/smlByteBuffer;->clear()V

    .line 809
    sget-object v4, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    invoke-virtual {p0, v4}, Lcom/syncmldstmo/network/smlHttpAdapter;->parseHeader(Ljava/io/InputStream;)I

    move-result v4

    const/16 v6, 0xc8

    if-eq v4, v6, :cond_70

    .line 812
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 813
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 814
    const/16 v4, 0x8

    const-string v5, "parseHeader(is) != 200."

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_4b} :catch_4c

    goto :goto_f

    .line 869
    :catch_4c
    move-exception v0

    .line 872
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 873
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 874
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f

    .line 798
    .end local v0           #e:Ljava/io/IOException;
    :cond_5b
    :try_start_5b
    sget-object v6, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-nez v6, :cond_67

    .line 800
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 801
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    move v3, v4

    .line 802
    goto :goto_f

    .line 805
    :cond_67
    sget-object v4, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    const v6, 0x15f90

    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2f

    .line 819
    :cond_70
    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    if-gtz v4, :cond_84

    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    if-gtz v4, :cond_84

    .line 822
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 823
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 824
    const-string v4, "Content Length undefined. Try later."

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_f

    .line 829
    :cond_84
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_Connection:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_fc

    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_Connection:Ljava/lang/String;

    const-string v6, "close"

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_fc

    .line 830
    const/4 v4, 0x1

    sput-boolean v4, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    .line 834
    :goto_99
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v4

    iget-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v6}, Lcom/syncmldstmo/base/smlByteBuffer;->position()I

    move-result v6

    sub-int v1, v4, v6

    .line 835
    .local v1, offset:I
    const/4 v2, 0x0

    .line 837
    .local v2, readBytes:I
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/smlByteBuffer;->clear()V

    .line 838
    if-lez v1, :cond_c0

    .line 839
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    iget-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v6}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v6

    iget-object v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v7}, Lcom/syncmldstmo/base/smlByteBuffer;->position()I

    move-result v7

    invoke-virtual {v4, v6, v7, v1}, Lcom/syncmldstmo/base/smlByteBuffer;->add([BII)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 842
    :cond_c0
    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    if-gtz v4, :cond_cc

    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    if-lez v4, :cond_cc

    .line 843
    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    iput v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    .line 845
    :cond_cc
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    iget v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    invoke-virtual {v4, v6}, Lcom/syncmldstmo/base/smlByteBuffer;->setLength(I)V

    .line 847
    :goto_d3
    iget v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    if-ge v1, v4, :cond_102

    .line 849
    sget-object v4, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    if-eqz v4, :cond_f

    .line 852
    sget-object v4, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v6}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v6

    iget v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 853
    const/4 v4, -0x1

    if-ne v2, v4, :cond_100

    .line 856
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 857
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 858
    const/16 v4, 0x8

    const-string v5, "unexpected end of stream"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_f

    .line 832
    .end local v1           #offset:I
    .end local v2           #readBytes:I
    :cond_fc
    const/4 v4, 0x0

    sput-boolean v4, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    goto :goto_99

    .line 861
    .restart local v1       #offset:I
    .restart local v2       #readBytes:I
    :cond_100
    add-int/2addr v1, v2

    goto :goto_d3

    .line 864
    :cond_102
    sget-boolean v4, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    if-eqz v4, :cond_118

    .line 866
    iget-object v4, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    iget-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v6}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v8}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v8

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_118} :catch_4c

    .line 879
    :cond_118
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    move v3, v5

    .line 881
    goto/16 :goto_f
.end method

.method private smltplSendDataInternal()I
    .registers 9

    .prologue
    const/4 v4, -0x3

    const/4 v7, 0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 568
    const/16 v5, 0x8

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 570
    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1d

    .line 572
    :cond_18
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    move v2, v4

    .line 666
    :goto_1c
    return v2

    .line 576
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    :try_start_22
    sget-boolean v5, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    if-eqz v5, :cond_40

    .line 582
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpConnect()I

    move-result v5

    if-eqz v5, :cond_40

    .line 584
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_1c

    .line 654
    :catch_30
    move-exception v0

    .line 657
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 658
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 659
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move v2, v4

    .line 660
    goto :goto_1c

    .line 593
    .end local v0           #e:Ljava/io/IOException;
    :cond_40
    :try_start_40
    new-instance v5, Lcom/syncmldstmo/network/smlNetworkTimer;

    const-string v6, "send"

    invoke-direct {v5, v6}, Lcom/syncmldstmo/network/smlNetworkTimer;-><init>(Ljava/lang/String;)V

    .line 595
    iget v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    if-ne v5, v7, :cond_18b

    .line 597
    sget-object v5, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-nez v5, :cond_56

    .line 599
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 600
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    goto :goto_1c

    .line 605
    :cond_56
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    const v5, 0x15f90

    invoke-virtual {v2, v5}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 619
    :goto_5e
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    if-eqz v2, :cond_1a1

    .line 620
    const-string v2, "POST %s %s\r\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpURL:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "HTTP/1.1"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :goto_7f
    const-string v2, "Cache-Control:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "no-store, private"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    sget-boolean v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    if-eqz v2, :cond_1b9

    .line 627
    const-string v2, "Connection:close\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    :goto_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->HTTP_CLIENT_NAME:Ljava/lang/String;

    .line 633
    const-string v2, "User-Agent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/syncmldstmo/network/smlHttpAdapter;->HTTP_CLIENT_NAME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Accept:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "application/vnd.syncml+wbxml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Accept-Language:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "en"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Accept-Charset:utf-8\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Host:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Content-Type:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "application/vnd.syncml+wbxml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Content-Length:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\r\n\r\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const/16 v2, 0x8

    const-string v5, "Send Header:"

    invoke-static {v2, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 643
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 645
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 646
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v7}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 648
    sget-boolean v2, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    if-eqz v2, :cond_180

    .line 650
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v5}, Lcom/syncmldstmo/base/smlByteBuffer;->getBuffer()[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v7}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 652
    :cond_180
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_185} :catch_30

    .line 664
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    move v2, v3

    .line 666
    goto/16 :goto_1c

    .line 610
    :cond_18b
    :try_start_18b
    sget-object v5, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-nez v5, :cond_197

    .line 612
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 613
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    goto/16 :goto_1c

    .line 617
    :cond_197
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    const v5, 0x15f90

    invoke-virtual {v2, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_5e

    .line 622
    :cond_1a1
    const-string v2, "POST %s %s\r\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpPath:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "HTTP/1.1"

    aput-object v7, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7f

    .line 629
    :cond_1b9
    const-string v2, "Connection:Keep-Alive\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1be
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1be} :catch_30

    goto/16 :goto_99
.end method

.method private sslInit()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    const/16 v3, 0x8

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 133
    :try_start_9
    const-string v3, "TLS"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 135
    iget-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    new-instance v7, Lcom/syncmldstmo/network/smlHttpAdapter$CustomTrustManager;

    invoke-direct {v7}, Lcom/syncmldstmo/network/smlHttpAdapter$CustomTrustManager;-><init>()V

    aput-object v7, v5, v6

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 136
    iget-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getServerSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v3

    const v4, 0x15f90

    invoke-interface {v3, v4}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V

    .line 137
    iget-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3b} :catch_3c

    .line 144
    :goto_3b
    return v1

    .line 141
    :catch_3c
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move v1, v2

    .line 144
    goto :goto_3b
.end method


# virtual methods
.method protected parseHeader(Ljava/io/InputStream;)I
    .registers 11
    .parameter "in"

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x20

    .line 713
    const/4 v4, -0x1

    .line 715
    .local v4, responscode:I
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 716
    .local v1, header:Ljava/lang/StringBuffer;
    const-string v0, ""

    .line 717
    .local v0, data:Ljava/lang/String;
    const/4 v2, -0x1

    .line 719
    .local v2, pos:I
    iput v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    .line 720
    iput v7, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    .line 721
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_Connection:Ljava/lang/String;

    .line 723
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/network/smlHttpAdapter;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 726
    const-string v6, "[parseHeader] readLine null"

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move v5, v4

    .line 768
    .end local v4           #responscode:I
    .local v5, responscode:I
    :goto_25
    return v5

    .line 730
    .end local v5           #responscode:I
    .restart local v4       #responscode:I
    :cond_26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 732
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    if-ltz v2, :cond_66

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ltz v6, :cond_66

    .line 734
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 735
    .local v3, rcString:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 740
    .end local v3           #rcString:Ljava/lang/String;
    :cond_66
    :goto_66
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/network/smlHttpAdapter;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 743
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_97

    .line 765
    :cond_76
    const-string v6, "\r\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    move v5, v4

    .line 768
    .end local v4           #responscode:I
    .restart local v5       #responscode:I
    goto :goto_25

    .line 745
    .end local v5           #responscode:I
    .restart local v4       #responscode:I
    :cond_97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content-length:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 749
    if-ltz v2, :cond_c9

    .line 750
    add-int/lit8 v6, v2, 0xf

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodyLength:I

    .line 752
    :cond_c9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "contentSize:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 753
    if-ltz v2, :cond_e5

    .line 754
    add-int/lit8 v6, v2, 0xc

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_recvBodySize:I

    .line 756
    :cond_e5
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "connection:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 757
    if-ltz v2, :cond_66

    .line 758
    add-int/lit8 v6, v2, 0xb

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_Connection:Ljava/lang/String;

    goto/16 :goto_66
.end method

.method protected readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xd

    const/16 v6, 0xa

    .line 671
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 672
    .local v1, data:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 676
    .local v0, c:I
    const/4 v4, 0x1

    :try_start_e
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 677
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_20

    .line 679
    const/16 v4, 0x8

    const-string v5, "in.read() is -1"

    invoke-static {v4, v5}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 708
    :goto_1f
    return-object v3

    .line 684
    :cond_20
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 687
    :goto_23
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_2f

    .line 689
    if-eqz v0, :cond_2f

    if-eq v0, v6, :cond_2f

    if-ne v0, v7, :cond_43

    .line 695
    :cond_2f
    if-ne v0, v7, :cond_3e

    .line 697
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 698
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v6, :cond_3e

    .line 699
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_3e} :catch_48

    .line 708
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    .line 692
    :cond_43
    int-to-char v4, v0

    :try_start_44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_23

    .line 702
    :catch_48
    move-exception v2

    .line 704
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public smltpApnActive()I
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 1130
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpbeginConnectivity()I

    move-result v1

    .line 1132
    if-nez v1, :cond_6e

    .line 1136
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    if-eqz v1, :cond_3f

    .line 1138
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpEnsurerouteTohost(Ljava/lang/String;)I

    .line 1160
    :cond_35
    :goto_35
    const/16 v1, 0x28

    invoke-static {v1, v4, v4}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1161
    const/4 v1, 0x2

    invoke-static {v4, v1}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V

    .line 1174
    :goto_3e
    return v0

    .line 1144
    :cond_3f
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1150
    :try_start_57
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1151
    if-eqz v1, :cond_35

    .line 1152
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpEnsurerouteTohost(Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/net/UnknownHostException; {:try_start_57 .. :try_end_64} :catch_65

    goto :goto_35

    .line 1154
    :catch_65
    move-exception v1

    .line 1156
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_35

    .line 1165
    :cond_6e
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8e

    .line 1167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extending DS connectivity returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iAPN_REQUEST_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_3e

    .line 1172
    :cond_8e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extending DS connectivity returned "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " APN Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1173
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnClose()V

    .line 1174
    const/4 v0, -0x2

    goto :goto_3e
.end method

.method public smltpApnEnable()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 1180
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    if-nez v0, :cond_23

    .line 1182
    const-string v0, ""

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1183
    new-instance v0, Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {v0}, Lcom/android/common/NetworkConnectivityListener;-><init>()V

    sput-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 1185
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    sget-object v1, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 1186
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 1189
    :cond_23
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_3a

    .line 1191
    const-string v0, "1"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 1195
    :cond_3a
    return-void
.end method

.method public smltpApnOpen()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1068
    .line 1071
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnEnable()V

    .line 1072
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpbeginConnectivity()I

    move-result v1

    .line 1076
    if-nez v1, :cond_83

    .line 1079
    :try_start_a
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->getIsConnected()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1125
    :goto_10
    return v0

    .line 1082
    :cond_11
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyUse:Z

    if-eqz v1, :cond_54

    .line 1084
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfile;->DsNetProfileInfo:[Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/syncmldstmo/database/smlDbNetworkProfileInfo;->ProxyAddress:Ljava/lang/String;

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpEnsurerouteTohost(Ljava/lang/String;)I

    .line 1106
    :cond_3e
    :goto_3e
    const/16 v1, 0x28

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1107
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/syncmldstmo/cust/smlUiEvent;->smlSetEvent(Ljava/lang/Object;I)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_4a} :catch_4b

    goto :goto_10

    .line 1120
    :catch_4b
    move-exception v1

    .line 1122
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_10

    .line 1090
    :cond_54
    :try_start_54
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    .line 1091
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6c} :catch_4b

    .line 1096
    :try_start_6c
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1097
    if-eqz v1, :cond_3e

    .line 1098
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpEnsurerouteTohost(Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/net/UnknownHostException; {:try_start_6c .. :try_end_79} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_79} :catch_4b

    goto :goto_3e

    .line 1100
    :catch_7a
    move-exception v1

    .line 1102
    :try_start_7b
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_3e

    .line 1109
    :cond_83
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a6

    .line 1111
    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extending DS connectivity returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " APN_REQUEST_STARTED"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_10

    .line 1115
    :cond_a6
    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extending DS connectivity returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " APN Error"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1116
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnClose()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_c7} :catch_4b

    .line 1117
    const/4 v0, -0x2

    goto/16 :goto_10
.end method

.method public smltpClose()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 257
    const-string v0, ""

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/syncmldstmo/network/smlNetworkTimer;->smlEndTimer()V

    .line 261
    const-string v0, "---------------------MSG_TP_CLOSE"

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 266
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlIsWiFiConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 267
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpApnClose()V

    .line 270
    :cond_20
    const/16 v0, 0x2c

    invoke-static {v0, v2, v2}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public smltpCloseInternal()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 886
    const/16 v1, 0x8

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 888
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_13

    .line 890
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 891
    sput-object v3, Lcom/syncmldstmo/network/smlHttpAdapter;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 896
    :cond_13
    :try_start_13
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    if-eqz v1, :cond_1f

    .line 898
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 899
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->input:Ljava/io/InputStream;

    .line 901
    :cond_1f
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    if-eqz v1, :cond_2b

    .line 903
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 904
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->output:Ljava/io/OutputStream;

    .line 906
    :cond_2b
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-eqz v1, :cond_37

    .line 908
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 909
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    .line 912
    :cond_37
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_43

    .line 914
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 915
    const/4 v1, 0x0

    sput-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 918
    :cond_43
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_4a

    .line 919
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 921
    :cond_4a
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v1, :cond_51

    .line 922
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 924
    :cond_51
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/syncmldstmo/network/smlHttpAdapter;->setIsConnected(Z)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_55} :catch_75

    .line 931
    :goto_55
    sget-boolean v1, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    if-eqz v1, :cond_74

    .line 935
    :try_start_59
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_74

    .line 937
    iget-object v1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 938
    const-string v1, "data/data/com.syncmldstmo/httpdata.wbxml"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->writeFile(Ljava/lang/String;[B)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_74} :catch_7e

    .line 947
    :cond_74
    :goto_74
    return-void

    .line 926
    :catch_75
    move-exception v0

    .line 928
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_55

    .line 942
    .end local v0           #e:Ljava/io/IOException;
    :catch_7e
    move-exception v0

    .line 944
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_74
.end method

.method public smltpEnsurerouteTohost(Ljava/lang/String;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1259
    const/4 v1, 0x0

    .line 1262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1264
    invoke-static {p1}, Lcom/syncmldstmo/network/smlHttpAdapter;->lookupHost(Ljava/lang/String;)I

    move-result v2

    .line 1265
    if-ne v2, v0, :cond_3b

    .line 1267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot establish route for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Unknown host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 1278
    :goto_3a
    return v0

    .line 1272
    :cond_3b
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot establish route to proxy "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    :cond_5a
    move v0, v1

    .line 1278
    goto :goto_3a
.end method

.method public smltpInit()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 150
    const/16 v0, 0x8

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wbxml log = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 153
    sget-boolean v0, Lcom/syncmldstmo/network/smlHttpAdapter;->ENABLE_HTTPDATA_DEBUG:Z

    if-eqz v0, :cond_35

    .line 155
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_30

    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    .line 158
    :cond_30
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bufDebug:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 165
    :cond_35
    invoke-static {}, Lcom/syncmldstmo/network/smlHttpAdapter;->smlGetNetworkInfo()V

    .line 170
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 171
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetNetworkProfile()Lcom/syncmldstmo/database/smlDbNetworkProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_NetprofileInfo:Lcom/syncmldstmo/database/smlDbNetworkProfile;

    .line 173
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    move-object v0, p0

    move-object v3, v2

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    .line 174
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlUser;->getProtocolType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    .line 176
    return v4
.end method

.method public smltpInterrupt()V
    .registers 4

    .prologue
    .line 275
    const/16 v1, 0x8

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 277
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-eqz v1, :cond_15

    .line 281
    :try_start_b
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownInput()V

    .line 282
    sget-object v1, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    .line 289
    :cond_15
    :goto_15
    return-void

    .line 284
    :catch_16
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public smltpMakeSSLTunneling()Ljava/lang/String;
    .registers 7

    .prologue
    .line 536
    const/16 v2, 0x8

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, Header:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetModelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->HTTP_CLIENT_NAME:Ljava/lang/String;

    .line 543
    const-string v2, "CONNECT https://%s:%d %s\r\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "HTTP/1.1"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "User-Agent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/syncmldstmo/network/smlHttpAdapter;->HTTP_CLIENT_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cache-Control:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "no-store, private"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    sget-boolean v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    if-eqz v2, :cond_106

    .line 549
    const-string v2, "Connection:close\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :goto_9a
    const-string v2, "Accept:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "application/vnd.syncml+wbxml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Accept-Language:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Accept-Charset:utf-8\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content-Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "application/vnd.syncml+wbxml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Content-Length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v3}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 563
    return-object v0

    .line 551
    :cond_106
    const-string v2, "Connection:Keep-Alive\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9a
.end method

.method public smltpOpen()V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, res:I
    const-string v1, "---------------------MSG_TP_OPEN"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 184
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpOpenInternal()I

    move-result v0

    .line 186
    if-nez v0, :cond_1a

    .line 188
    const/16 v1, 0x2b

    invoke-static {v1, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 189
    const/16 v1, 0x24

    invoke-static {v1, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :goto_19
    return-void

    .line 193
    :cond_1a
    const-string v1, "smltpOpenInternal != SMLTP_RET_OK"

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 194
    const/16 v1, 0x21

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public smltpbeginConnectivity()I
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 1219
    sget-object v0, Lcom/syncmldstmo/network/smlHttpAdapter;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1223
    packed-switch v0, :pswitch_data_2a

    .line 1231
    const-string v1, "Cannot establish DS connectivity"

    invoke-static {v3, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1233
    :pswitch_29
    return v0

    .line 1223
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public smltplReceiveData(Lcom/syncmldstmo/base/smlByteBuffer;)I
    .registers 3
    .parameter "pData"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v0}, Lcom/syncmldstmo/base/smlByteBuffer;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 247
    :cond_c
    const/4 v0, -0x4

    .line 252
    :goto_d
    return v0

    .line 249
    :cond_e
    invoke-virtual {p1}, Lcom/syncmldstmo/base/smlByteBuffer;->clear()V

    .line 250
    iget-object v0, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpRecvBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {p1, v0}, Lcom/syncmldstmo/base/smlByteBuffer;->add(Lcom/syncmldstmo/base/smlByteBuffer;)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 252
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public smltplSendData([BI)I
    .registers 10
    .parameter "pData"
    .parameter "dataSize"

    .prologue
    const/16 v6, 0x26

    const/16 v5, 0x25

    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, res:I
    const/4 v2, 0x5

    if-gt p2, v2, :cond_e

    .line 203
    const/4 v1, -0x3

    .line 241
    :cond_d
    :goto_d
    return v1

    .line 205
    :cond_e
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2}, Lcom/syncmldstmo/base/smlByteBuffer;->clear()V

    .line 206
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_HttpSendBuf:Lcom/syncmldstmo/base/smlByteBuffer;

    invoke-virtual {v2, p1, v1, p2}, Lcom/syncmldstmo/base/smlByteBuffer;->add([BII)Lcom/syncmldstmo/base/smlByteBuffer;

    .line 208
    const-string v2, "---------------------MSG_TP_SEND"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplSendDataInternal()I

    move-result v0

    .line 211
    if-eqz v0, :cond_32

    .line 213
    const-string v2, "smltplSendDataInternal != SMLTP_RET_OK"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 214
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v2

    invoke-static {v6, v2, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 218
    :cond_32
    invoke-direct {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltplReceiveDataInternal()I

    move-result v0

    .line 219
    if-nez v0, :cond_4f

    sget-boolean v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_bConnectionTypeClose:Z

    if-eqz v2, :cond_4f

    .line 221
    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/syncmldstmo/network/smlHttpAdapter;->m_socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 223
    invoke-virtual {p0}, Lcom/syncmldstmo/network/smlHttpAdapter;->smltpCloseInternal()V

    .line 224
    invoke-static {v5, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 229
    :cond_4f
    if-nez v0, :cond_55

    .line 231
    invoke-static {v5, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 235
    :cond_55
    const-string v2, "smltplReceiveDataInternal != SMLTP_RET_OK"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 236
    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlMsg;->smlCreateAbortMessage(II)Lcom/syncmldstmo/base/smlMsg$smlAbortMsgParam;

    move-result-object v2

    invoke-static {v6, v2, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public smltplSetHttpObj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 13
    .parameter "pRequest"
    .parameter "pHmacData"
    .parameter "pContentRange"
    .parameter "nHttpOpenMode"
    .parameter "appId"
    .parameter "bDownloadMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 951
    const-string v2, "://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 953
    .local v0, i:I
    if-eq v0, v4, :cond_74

    .line 955
    iput-object p1, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpURL:Ljava/lang/String;

    .line 956
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v2, v2, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/syncmldstmo/base/smlUser;->getProtocolType(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    .line 958
    const-string v2, "/"

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 960
    .local v1, j:I
    if-eq v1, v4, :cond_42

    .line 962
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpPath:Ljava/lang/String;

    .line 963
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    .line 971
    :goto_2e
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 973
    if-ne v0, v4, :cond_59

    .line 975
    iget v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4f

    .line 976
    const/16 v2, 0x50

    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    .line 991
    .end local v1           #j:I
    :cond_41
    :goto_41
    return v5

    .line 967
    .restart local v1       #j:I
    :cond_42
    const-string v2, "/"

    iput-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHttpPath:Ljava/lang/String;

    .line 968
    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    goto :goto_2e

    .line 977
    :cond_4f
    iget v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_tpType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_41

    .line 978
    const/16 v2, 0x1bb

    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    goto :goto_41

    .line 982
    :cond_59
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_nPort:I

    .line 983
    iget-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/syncmldstmo/network/smlHttpAdapter;->m_csHost:Ljava/lang/String;

    goto :goto_41

    .line 988
    .end local v1           #j:I
    :cond_74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    goto :goto_41
.end method
