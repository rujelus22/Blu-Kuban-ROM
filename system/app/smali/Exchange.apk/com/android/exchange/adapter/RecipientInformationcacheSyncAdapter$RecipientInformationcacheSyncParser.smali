.class Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "RecipientInformationcacheSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientInformationcacheSyncParser"
.end annotation


# instance fields
.field RIcacheids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;"
        }
    .end annotation
.end field

.field RIcacheids_Del:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;"
        }
    .end annotation
.end field

.field RIcacheids_Modi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .registers 5
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->this$0:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    .line 116
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Modi:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Del:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method private addData(Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;)V
    .registers 4
    .parameter "ric"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    .line 206
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v0, :sswitch_data_2c

    goto :goto_0

    .line 208
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riEmailAddress:Ljava/lang/String;

    goto :goto_0

    .line 214
    :sswitch_16
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riFileAs:Ljava/lang/String;

    goto :goto_0

    .line 218
    :sswitch_1d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAlias:Ljava/lang/String;

    goto :goto_0

    .line 222
    :sswitch_24
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riWeightedRank:Ljava/lang/String;

    goto :goto_0

    .line 228
    :cond_2b
    return-void

    .line 206
    :sswitch_data_2c
    .sparse-switch
        0x5b -> :sswitch_f
        0x5e -> :sswitch_16
        0x7d -> :sswitch_1d
        0x7e -> :sswitch_24
    .end sparse-switch
.end method

.method private addParser(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    .local p1, rIcacheids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;>;"
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;-><init>()V

    .line 145
    .local v0, ric:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    .line 146
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riMailboxKey:J

    .line 147
    :goto_11
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    .line 148
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_2e

    goto :goto_11

    .line 150
    :sswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    goto :goto_11

    .line 154
    :sswitch_26
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;)V

    goto :goto_11

    .line 158
    :cond_2a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void

    .line 148
    :sswitch_data_2e
    .sparse-switch
        0xd -> :sswitch_1f
        0x1d -> :sswitch_26
    .end sparse-switch
.end method

.method private changeParser(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    .local p1, rIcacheids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;>;"
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;-><init>()V

    .line 167
    .local v0, ric:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    .line 168
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riMailboxKey:J

    .line 169
    :goto_11
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    .line 170
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_2e

    goto :goto_11

    .line 172
    :sswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    goto :goto_11

    .line 176
    :sswitch_26
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;)V

    goto :goto_11

    .line 180
    :cond_2a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void

    .line 170
    :sswitch_data_2e
    .sparse-switch
        0xd -> :sswitch_1f
        0x1d -> :sswitch_26
    .end sparse-switch
.end method

.method private deleteParser(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, rIcacheids2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;>;"
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;-><init>()V

    .line 187
    .local v0, ric:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    .line 188
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riMailboxKey:J

    .line 189
    :goto_11
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_27

    .line 191
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_11

    .line 193
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    goto :goto_11

    .line 198
    :cond_27
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    return-void

    .line 191
    nop

    :pswitch_data_2c
    .packed-switch 0xd
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    .line 124
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_19

    .line 125
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->addParser(Ljava/util/ArrayList;)V

    .line 126
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->this$0:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 127
    :cond_19
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_30

    .line 128
    :cond_25
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Del:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    .line 129
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->this$0:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 130
    :cond_30
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_41

    .line 131
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Modi:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 132
    iget-object v0, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->this$0:Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 134
    :cond_41
    invoke-virtual {p0}, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->skipTag()V

    goto :goto_0

    .line 137
    :cond_45
    return-void
.end method

.method public commit()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, Nu_of:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v7, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    .line 248
    .local v1, Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v2, cValues:Landroid/content/ContentValues;
    const-string v7, "server_id"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v7, "accountkey"

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v7, "email_address"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v7, "fileas"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riFileAs:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v7, "alias"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAlias:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v7, "weightedrank"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riWeightedRank:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_f

    .line 271
    .end local v1           #Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    .end local v2           #cValues:Landroid/content/ContentValues;
    :cond_5a
    iget-object v7, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Modi:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d3

    .line 273
    iget-object v7, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Modi:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    .line 277
    .restart local v1       #Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    const-string v5, "server_id=? AND accountkey=?"

    .line 278
    .local v5, selection:Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    iget-object v7, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-wide v7, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 279
    .local v6, selectionArgs:[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .restart local v2       #cValues:Landroid/content/ContentValues;
    const-string v7, "weightedrank"

    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riWeightedRank:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v7, "RecipientInformation Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIC adapter-commit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v2, v9, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 297
    const-string v7, "RecipientInformation Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIC adapter-after modify commit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 300
    .end local v1           #Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    .end local v2           #cValues:Landroid/content/ContentValues;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_d3
    iget-object v7, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Del:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_122

    .line 302
    iget-object v7, p0, Lcom/android/exchange/adapter/RecipientInformationcacheSyncAdapter$RecipientInformationcacheSyncParser;->RIcacheids_Del:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_122

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;

    .line 305
    .restart local v1       #Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    const-string v5, "server_id=? AND accountkey=?"

    .line 306
    .restart local v5       #selection:Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    iget-object v7, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riServerId:Ljava/lang/String;

    aput-object v7, v6, v10

    iget-wide v7, v1, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->riAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 307
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 308
    const-string v7, "RecipientInformation Cache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RIC adapter-afterdel commit"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e1

    .line 313
    .end local v1           #Ri:Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_122
    return-void
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    return-void
.end method
