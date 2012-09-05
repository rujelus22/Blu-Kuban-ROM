.class public Lcom/android/exchange/adapter/LogAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "LogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/LogAdapter$LogParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 23
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 57
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/android/exchange/adapter/LogAdapter$LogParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;-><init>(Lcom/android/exchange/adapter/LogAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 35
    .local v0, parser:Lcom/android/exchange/adapter/LogAdapter$LogParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/LogAdapter$LogParser;->parse()Z

    move-result v1

    return v1
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
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method
