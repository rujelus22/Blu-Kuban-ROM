.class public Lcom/android/exchange/adapter/ItemOperationsAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ItemOperationsAdapter.java"


# instance fields
.field public isMIMEDataRequested:Z


# direct methods
.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    .line 37
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
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
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setMIMERequested(Z)V
    .registers 2
    .parameter "val"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ItemOperationsAdapter;->isMIMEDataRequested:Z

    .line 131
    return-void
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method
