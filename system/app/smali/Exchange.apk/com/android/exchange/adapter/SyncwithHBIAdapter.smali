.class public Lcom/android/exchange/adapter/SyncwithHBIAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "SyncwithHBIAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    }
.end annotation


# instance fields
.field public absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->absSyncParser:Lcom/android/exchange/adapter/AbstractSyncParser;

    .line 30
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 73
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 10
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, p:Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    :try_start_1
    new-instance v2, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;

    invoke-direct {v2, p0, p1, p0}, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;-><init>(Lcom/android/exchange/adapter/SyncwithHBIAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/SyncwithHBIAdapter;)V
    :try_end_6
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_1 .. :try_end_6} :catch_c

    .line 53
    .end local v1           #p:Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    .local v2, p:Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;->parse()Z

    move-result v3

    .local v3, res:Z
    move-object v1, v2

    .line 54
    .end local v2           #p:Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    .end local v3           #res:Z
    .restart local v1       #p:Lcom/android/exchange/adapter/SyncwithHBIAdapter$SyncWithHBIParser;
    :goto_b
    return v3

    .line 42
    :catch_c
    move-exception v0

    .line 44
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4028333333333333L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_23

    .line 45
    invoke-virtual {p0}, Lcom/android/exchange/adapter/SyncwithHBIAdapter;->setIntervalPing()V

    .line 46
    const/4 v3, 0x0

    goto :goto_b

    .line 48
    :cond_23
    throw v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 208
    return-void
.end method
