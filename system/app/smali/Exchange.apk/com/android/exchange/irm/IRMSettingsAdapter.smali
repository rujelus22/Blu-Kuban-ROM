.class public Lcom/android/exchange/irm/IRMSettingsAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "IRMSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;
    }
.end annotation


# instance fields
.field acc:Lcom/android/emailcommon/provider/EmailContent$Account;

.field public mIrmStatus:I


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 103
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 105
    iget-object v0, p2, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v0, p0, Lcom/android/exchange/irm/IRMSettingsAdapter;->acc:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 107
    return-void
.end method


# virtual methods
.method public buildSettingsRequest()Lcom/android/exchange/adapter/Serializer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 183
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x4ab

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x487

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 195
    return-object v0
.end method

.method public cleanup()V
    .registers 1

    .prologue
    .line 157
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    const-string v0, "Email"

    return-object v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x1

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
    .line 125
    new-instance v0, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;-><init>(Lcom/android/exchange/irm/IRMSettingsAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 127
    .local v0, p:Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;
    invoke-virtual {v0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->parse()Z

    move-result v1

    .line 129
    .local v1, success:Z
    if-eqz v1, :cond_e

    .line 131
    invoke-virtual {v0}, Lcom/android/exchange/irm/IRMSettingsAdapter$IRMSettingsParser;->commit()V

    .line 133
    :cond_e
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
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public wipe()V
    .registers 1

    .prologue
    .line 543
    return-void
.end method
