.class public Lcom/android/exchange/adapter/PingParser;
.super Lcom/android/exchange/adapter/Parser;
.source "PingParser.java"


# instance fields
.field private mService:Lcom/android/exchange/EasSyncService;

.field private mSyncStatus:I

.field private syncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 110
    iput-object p2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 112
    return-void
.end method


# virtual methods
.method public getSyncList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncStatus()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    return v0
.end method

.method public parse()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/StaleFolderListException;,
            Lcom/android/exchange/IllegalHeartbeatException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, res:Z
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x345

    if-eq v2, v3, :cond_11

    .line 152
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 156
    :cond_11
    :goto_11
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v2

    if-eq v2, v6, :cond_97

    .line 158
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x347

    if-ne v2, v3, :cond_76

    .line 160
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v1

    .line 162
    .local v1, status:I
    iput v1, p0, Lcom/android/exchange/adapter/PingParser;->mSyncStatus:I

    .line 164
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Ping completed, status = "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 166
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2f

    .line 168
    const/4 v0, 0x1

    goto :goto_11

    .line 170
    :cond_2f
    const/4 v2, 0x7

    if-eq v1, v2, :cond_35

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3b

    .line 174
    :cond_35
    new-instance v2, Lcom/android/exchange/StaleFolderListException;

    invoke-direct {v2}, Lcom/android/exchange/StaleFolderListException;-><init>()V

    throw v2

    .line 176
    :cond_3b
    const/4 v2, 0x5

    if-eq v1, v2, :cond_11

    .line 182
    const/16 v2, 0x81

    if-ne v1, v2, :cond_55

    .line 184
    const-string v2, "PingParser"

    const-string v3, "PingParser::parse() - Received status 129 for ping, to Block device "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v2, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f060014

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v2

    .line 192
    :cond_55
    if-ne v1, v6, :cond_11

    .line 197
    sget-object v2, Lcom/android/exchange/ExchangeService;->mPingFoldersMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v2, Lcom/android/exchange/ExchangeService;->mPingHeartBeatIntervalMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 203
    .end local v1           #status:I
    :cond_76
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x349

    if-ne v2, v3, :cond_82

    .line 205
    iget-object v2, p0, Lcom/android/exchange/adapter/PingParser;->syncList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/PingParser;->parsePingFolders(Ljava/util/ArrayList;)V

    goto :goto_11

    .line 207
    :cond_82
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x348

    if-ne v2, v3, :cond_92

    .line 213
    new-instance v2, Lcom/android/exchange/IllegalHeartbeatException;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValueInt()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/exchange/IllegalHeartbeatException;-><init>(I)V

    throw v2

    .line 217
    :cond_92
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto/16 :goto_11

    .line 223
    :cond_97
    return v0
.end method

.method public parsePingFolders(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, syncList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const/16 v1, 0x349

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/PingParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    .line 120
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v2, 0x34a

    if-ne v1, v2, :cond_27

    .line 124
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, serverId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v1, p0, Lcom/android/exchange/adapter/PingParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Changes found in: "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0           #serverId:Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/android/exchange/adapter/PingParser;->skipTag()V

    goto :goto_0

    .line 138
    :cond_2b
    return-void
.end method
