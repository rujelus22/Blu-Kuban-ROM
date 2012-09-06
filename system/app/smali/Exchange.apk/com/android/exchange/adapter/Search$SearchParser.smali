.class Lcom/android/exchange/adapter/Search$SearchParser;
.super Lcom/android/exchange/adapter/Parser;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchParser"
.end annotation


# instance fields
.field private final mQuery:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private mTotalResults:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V
    .registers 4
    .parameter "in"
    .parameter "service"
    .parameter "query"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 147
    iput-object p2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 148
    iput-object p3, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;Lcom/android/exchange/adapter/Search$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/adapter/Search$SearchParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;Ljava/lang/String;)V

    return-void
.end method

.method private parseResponse()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, res:Z
    :goto_1
    const/16 v1, 0x3cd

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    .line 179
    iget v1, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v2, 0x3c7

    if-ne v1, v2, :cond_14

    .line 180
    invoke-direct {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->parseStore()Z

    goto :goto_1

    .line 182
    :cond_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_1

    .line 185
    :cond_18
    return v0
.end method

.method private parseResult(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)Z
    .registers 7
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 223
    .local v1, res:Z
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 224
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_6
    const/16 v2, 0x3ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_69

    .line 225
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_19

    .line 226
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_6

    .line 227
    :cond_19
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_23

    .line 228
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_6

    .line 229
    :cond_23
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3d8

    if-ne v2, v3, :cond_30

    .line 230
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    goto :goto_6

    .line 231
    :cond_30
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cf

    if-ne v2, v3, :cond_65

    .line 232
    iget-object v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 233
    iget-object v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 234
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 235
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    invoke-virtual {p1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->pushTag(I)V

    .line 236
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    invoke-virtual {p1, v0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 237
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v2, :cond_61

    .line 238
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mQuery:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/TextUtilities;->highlightTermsInHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 240
    :cond_61
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    goto :goto_6

    .line 242
    :cond_65
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_6

    .line 245
    :cond_69
    return v1
.end method

.method private parseStore()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-direct {v0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 190
    .local v0, adapter:Lcom/android/exchange/adapter/EmailSyncAdapter;
    new-instance v3, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0, p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 191
    .local v3, parser:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 194
    .local v4, res:Z
    :goto_15
    const/16 v5, 0x3c7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_43

    .line 195
    iget v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v6, 0x3cc

    if-ne v5, v6, :cond_28

    .line 196
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    goto :goto_15

    .line 197
    :cond_28
    iget v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v6, 0x3d0

    if-ne v5, v6, :cond_35

    .line 198
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValueInt()I

    move-result v5

    iput v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mTotalResults:I

    goto :goto_15

    .line 199
    :cond_35
    iget v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v6, 0x3ce

    if-ne v5, v6, :cond_3f

    .line 200
    invoke-direct {p0, v3, v2}, Lcom/android/exchange/adapter/Search$SearchParser;->parseResult(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;Ljava/util/ArrayList;)Z

    goto :goto_15

    .line 202
    :cond_3f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_15

    .line 207
    :cond_43
    :try_start_43
    iget-object v5, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.email.provider"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 208
    sget-boolean v5, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v5, :cond_76

    .line 209
    iget-object v5, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " search results"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_76} :catch_77
    .catch Landroid/content/OperationApplicationException; {:try_start_43 .. :try_end_76} :catch_80

    .line 216
    :cond_76
    :goto_76
    return v4

    .line 211
    :catch_77
    move-exception v1

    .line 212
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "Email"

    const-string v6, "RemoteException while saving search results."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 213
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_80
    move-exception v5

    goto :goto_76
.end method


# virtual methods
.method protected getTotalResults()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/android/exchange/adapter/Search$SearchParser;->mTotalResults:I

    return v0
.end method

.method public parse()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, res:Z
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x3c5

    if-eq v2, v3, :cond_10

    .line 159
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 161
    :cond_10
    :goto_10
    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/Search$SearchParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4c

    .line 162
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cc

    if-ne v2, v3, :cond_3e

    .line 163
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, status:Ljava/lang/String;
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_10

    .line 165
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 167
    .end local v1           #status:Ljava/lang/String;
    :cond_3e
    iget v2, p0, Lcom/android/exchange/adapter/Search$SearchParser;->tag:I

    const/16 v3, 0x3cd

    if-ne v2, v3, :cond_48

    .line 168
    invoke-direct {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->parseResponse()Z

    goto :goto_10

    .line 170
    :cond_48
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Search$SearchParser;->skipTag()V

    goto :goto_10

    .line 173
    :cond_4c
    return v0
.end method
