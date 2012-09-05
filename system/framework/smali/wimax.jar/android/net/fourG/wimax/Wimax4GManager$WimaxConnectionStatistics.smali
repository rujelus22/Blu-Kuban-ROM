.class public Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
.super Landroid/net/fourG/net4GManager$ConnectionStatistics;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WimaxConnectionStatistics"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WimaxConnectionStatistics"

.field private static final WIMAX_RX_BYTES:[Ljava/io/File;

.field private static final WIMAX_RX_PACKETS:[Ljava/io/File;

.field private static final WIMAX_TX_BYTES:[Ljava/io/File;

.field private static final WIMAX_TX_PACKETS:[Ljava/io/File;

.field private static final buf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 886
    const-string v0, "tx_packets"

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    .line 887
    const-string v0, "rx_packets"

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_RX_PACKETS:[Ljava/io/File;

    .line 888
    const-string v0, "tx_bytes"

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_TX_BYTES:[Ljava/io/File;

    .line 889
    const-string v0, "rx_bytes"

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WimaxFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_RX_BYTES:[Ljava/io/File;

    .line 996
    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    .line 1052
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 879
    invoke-direct {p0}, Landroid/net/fourG/net4GManager$ConnectionStatistics;-><init>()V

    return-void
.end method

.method private static WimaxFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 6
    .parameter "whatStat"

    .prologue
    .line 974
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/io/File;

    .line 975
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/uwbr0/statistics/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 976
    return-object v0
.end method

.method private static declared-synchronized getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    .registers 11
    .parameter "raf"
    .parameter "filename"

    .prologue
    .line 1000
    const-class v5, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    monitor-enter v5

    :try_start_3
    sget-object v4, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 1001
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_82
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_47

    .line 1006
    if-eqz p0, :cond_10

    .line 1008
    :try_start_d
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_44
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_2a

    .line 1015
    :cond_10
    :goto_10
    const-wide/16 v2, 0x0

    .line 1016
    .local v2, num:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    :try_start_13
    sget-object v4, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    array-length v4, v4

    if-ge v1, v4, :cond_28

    .line 1017
    sget-object v4, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    aget-byte v4, v4, v1

    const/16 v6, 0x30

    if-lt v4, v6, :cond_28

    sget-object v4, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    aget-byte v4, v4, v1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_44

    const/16 v6, 0x39

    if-le v4, v6, :cond_a3

    .line 1022
    .end local v1           #i:I
    .end local v2           #num:J
    :cond_28
    :goto_28
    monitor-exit v5

    return-wide v2

    .line 1009
    :catch_2a
    move-exception v0

    .line 1010
    .local v0, e:Ljava/io/IOException;
    :try_start_2b
    const-string v4, "WimaxConnectionStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_44

    goto :goto_10

    .line 1000
    .end local v0           #e:Ljava/io/IOException;
    :catchall_44
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1002
    :catch_47
    move-exception v0

    .line 1003
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_48
    const-string v4, "WimaxConnectionStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting TCP bytes from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_82

    .line 1004
    const-wide/16 v2, 0x0

    .line 1006
    if-eqz p0, :cond_28

    .line 1008
    :try_start_64
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_44
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_28

    .line 1009
    :catch_68
    move-exception v0

    .line 1010
    :try_start_69
    const-string v4, "WimaxConnectionStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception closing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_69 .. :try_end_81} :catchall_44

    goto :goto_28

    .line 1006
    .end local v0           #e:Ljava/io/IOException;
    :catchall_82
    move-exception v4

    if-eqz p0, :cond_88

    .line 1008
    :try_start_85
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_44
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 1011
    :cond_88
    :goto_88
    :try_start_88
    throw v4

    .line 1009
    :catch_89
    move-exception v0

    .line 1010
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "WimaxConnectionStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception closing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    .line 1019
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v2       #num:J
    :cond_a3
    const-wide/16 v6, 0xa

    mul-long/2addr v2, v6

    .line 1020
    sget-object v4, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->buf:[B

    aget-byte v4, v4, v1
    :try_end_aa
    .catchall {:try_start_88 .. :try_end_aa} :catchall_44

    add-int/lit8 v4, v4, -0x30

    int-to-long v6, v4

    add-long/2addr v2, v6

    .line 1016
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_13
.end method

.method private static getWimaxStat([Ljava/io/File;)J
    .registers 8
    .parameter "files"

    .prologue
    .line 980
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_3d

    .line 981
    aget-object v1, p0, v2

    .line 982
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_f

    .line 980
    :goto_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 985
    :cond_f
    :try_start_f
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 986
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getNumberFromFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_1f

    move-result-wide v4

    .line 991
    .end local v1           #file:Ljava/io/File;
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_1e
    return-wide v4

    .line 987
    .restart local v1       #file:Ljava/io/File;
    :catch_1f
    move-exception v0

    .line 988
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WimaxConnectionStatistics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception opening TCP statistics file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 991
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #file:Ljava/io/File;
    :cond_3d
    const-wide/16 v4, 0x0

    goto :goto_1e
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public getDownlinkModulation()I
    .registers 2

    .prologue
    .line 931
    const/4 v0, -0x1

    return v0
.end method

.method public getDownlinkThroughput()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v2

    .line 945
    .local v2, mRxStart:J
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 946
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v4

    .line 947
    .local v4, mRxStop:J
    sub-long v0, v4, v2

    .line 948
    .local v0, mDiffRxsize:J
    const-wide/16 v7, 0x8

    mul-long/2addr v7, v0

    long-to-int v6, v7

    .line 949
    .local v6, mThroughput:I
    return v6
.end method

.method public getTotalRxBytes()J
    .registers 3

    .prologue
    .line 896
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_RX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    .line 897
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    return-wide v0
.end method

.method public getTotalRxPackets()J
    .registers 3

    .prologue
    .line 905
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_RX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    .line 906
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    return-wide v0
.end method

.method public getTotalTxBytes()J
    .registers 3

    .prologue
    .line 914
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_TX_BYTES:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    .line 915
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    return-wide v0
.end method

.method public getTotalTxPackets()J
    .registers 3

    .prologue
    .line 923
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxPackets:J

    .line 924
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->WIMAX_TX_PACKETS:[Ljava/io/File;

    invoke-static {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getWimaxStat([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUplinkModulation()I
    .registers 2

    .prologue
    .line 938
    const/4 v0, -0x1

    return v0
.end method

.method public getUplinkThroughput()I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 955
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxBytes()J

    move-result-wide v3

    .line 956
    .local v3, mTxStart:J
    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 957
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxBytes()J

    move-result-wide v5

    .line 958
    .local v5, mTxStop:J
    sub-long v0, v5, v3

    .line 959
    .local v0, mDiffTxsize:J
    const-wide/16 v7, 0x8

    mul-long/2addr v7, v0

    long-to-int v2, v7

    .line 960
    .local v2, mThroughput:I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1027
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "WimaxConnectionStatistics"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 1030
    .local v0, none:Ljava/lang/String;
    const-string v2, "TotalRxBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", TotalRxPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", TotalTxBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", TotalTxPackets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxPackets:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1035
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1045
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1046
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalRxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1047
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1048
    iget-wide v0, p0, Landroid/net/fourG/net4GManager$ConnectionStatistics;->m_lTotalTxPackets:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1049
    return-void
.end method
