.class public Lcom/android/exchange/adapter/SettingsCommandAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "SettingsCommandAdapter.java"


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 21
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 25
    return-void
.end method


# virtual methods
.method public cleanup()V
    .registers 1

    .prologue
    .line 37
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 91
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
    .line 67
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
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 45
    return-void
.end method
