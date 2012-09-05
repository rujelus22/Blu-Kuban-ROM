.class public final Lcom/cooliris/picasa/PicasaApi;
.super Ljava/lang/Object;
.source "PicasaApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    }
.end annotation


# static fields
.field private static final BASE_QUERY_STRING:Ljava/lang/String;

.field private static accountsResult:[Landroid/accounts/Account;


# instance fields
.field private final mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

.field private mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

.field private final mClient:Lcom/cooliris/picasa/GDataClient;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

.field private final mParser:Lcom/cooliris/picasa/GDataParser;

.field private final mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "?imgmax=1280&max-results=1000&thumbsize="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, query:Ljava/lang/StringBuilder;
    const-string v2, "144u,"

    .line 60
    .local v2, thumbnailSize:Ljava/lang/String;
    const-string v1, "1280u"

    .line 61
    .local v1, screennailSize:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&visibility=visible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/cooliris/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    .line 94
    const/4 v3, 0x0

    sput-object v3, Lcom/cooliris/picasa/PicasaApi;->accountsResult:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 3
    .parameter "cr"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/cooliris/picasa/GDataClient$Operation;

    invoke-direct {v0}, Lcom/cooliris/picasa/GDataClient$Operation;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    .line 72
    new-instance v0, Lcom/cooliris/picasa/GDataParser;

    invoke-direct {v0}, Lcom/cooliris/picasa/GDataParser;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mParser:Lcom/cooliris/picasa/GDataParser;

    .line 74
    new-instance v0, Lcom/cooliris/picasa/AlbumEntry;

    invoke-direct {v0}, Lcom/cooliris/picasa/AlbumEntry;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

    .line 76
    new-instance v0, Lcom/cooliris/picasa/PhotoEntry;

    invoke-direct {v0}, Lcom/cooliris/picasa/PhotoEntry;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;

    .line 206
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    .line 207
    new-instance v0, Lcom/cooliris/picasa/GDataClient;

    invoke-direct {v0}, Lcom/cooliris/picasa/GDataClient;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    .line 208
    return-void
.end method

.method static synthetic access$002([Landroid/accounts/Account;)[Landroid/accounts/Account;
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    sput-object p0, Lcom/cooliris/picasa/PicasaApi;->accountsResult:[Landroid/accounts/Account;

    return-object p0
.end method

.method public static canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "username"

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 197
    const-string v0, "@gmail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "@googlemail."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 200
    :cond_14
    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 202
    :cond_1f
    return-object p0
.end method

.method public static getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .registers 7
    .parameter "context"

    .prologue
    .line 98
    const/4 v4, 0x0

    new-array v2, v4, [Landroid/accounts/Account;

    .line 100
    .local v2, accounts:[Landroid/accounts/Account;
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/cooliris/picasa/PicasaApi$1;

    invoke-direct {v4, p0}, Lcom/cooliris/picasa/PicasaApi$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 121
    .local v1, accountThread:Ljava/lang/Thread;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 122
    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 123
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 124
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 125
    const-string v4, "PicasaAPI"

    const-string v5, "Account Thread Interrupt!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_25
    :goto_25
    return-object v2

    .line 127
    :cond_26
    sget-object v4, Lcom/cooliris/picasa/PicasaApi;->accountsResult:[Landroid/accounts/Account;

    if-eqz v4, :cond_25

    .line 128
    sget-object v4, Lcom/cooliris/picasa/PicasaApi;->accountsResult:[Landroid/accounts/Account;

    invoke-virtual {v4}, [Landroid/accounts/Account;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [Landroid/accounts/Account;

    move-object v2, v0

    .line 129
    const-string v4, "PicasaAPI"

    const-string v5, "Picasa get account success!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_3b} :catch_3c

    goto :goto_25

    .line 132
    :catch_3c
    move-exception v3

    .line 133
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_25
.end method

.method public static getAuthenticatedAccounts(Landroid/content/Context;)[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    .registers 18
    .parameter "context"

    .prologue
    .line 140
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 141
    .local v1, accountManager:Landroid/accounts/AccountManager;
    invoke-static/range {p0 .. p0}, Lcom/cooliris/picasa/PicasaApi;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v8

    .line 142
    .local v8, accounts:[Landroid/accounts/Account;
    if-nez v8, :cond_d

    .line 143
    const/4 v3, 0x0

    new-array v8, v3, [Landroid/accounts/Account;

    .line 144
    :cond_d
    array-length v15, v8

    .line 146
    .local v15, numAccounts:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v9, authAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/picasa/PicasaApi$AuthAccount;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_14
    if-eq v14, v15, :cond_70

    .line 148
    aget-object v2, v8, v14

    .line 152
    .local v2, account:Landroid/accounts/Account;
    :try_start_18
    const-string v3, "lh2"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, authToken:Ljava/lang/String;
    move-object/from16 v0, p0

    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_47

    .line 159
    const-string v3, "lh2"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 162
    .local v12, bundle:Landroid/os/Bundle;
    const-string v3, "authtoken"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 163
    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/cooliris/picasa/PicasaService;->requestSync(Landroid/content/Context;IJ)V

    .line 167
    .end local v12           #bundle:Landroid/os/Bundle;
    :cond_47
    if-eqz v11, :cond_59

    .line 168
    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/cooliris/picasa/PicasaApi;->canonicalizeUsername(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 169
    .local v16, username:Ljava/lang/String;
    new-instance v3, Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v11, v2}, Lcom/cooliris/picasa/PicasaApi$AuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Landroid/accounts/OperationCanceledException; {:try_start_18 .. :try_end_59} :catch_5c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_59} :catch_61
    .catch Landroid/accounts/AuthenticatorException; {:try_start_18 .. :try_end_59} :catch_66
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_59} :catch_6b

    .line 147
    .end local v11           #authToken:Ljava/lang/String;
    .end local v16           #username:Ljava/lang/String;
    :cond_59
    :goto_59
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 171
    :catch_5c
    move-exception v13

    .line 172
    .local v13, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {v13}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_59

    .line 173
    .end local v13           #e:Landroid/accounts/OperationCanceledException;
    :catch_61
    move-exception v13

    .line 174
    .local v13, e:Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_59

    .line 175
    .end local v13           #e:Ljava/io/IOException;
    :catch_66
    move-exception v13

    .line 176
    .local v13, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {v13}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_59

    .line 177
    .end local v13           #e:Landroid/accounts/AuthenticatorException;
    :catch_6b
    move-exception v13

    .line 178
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    .line 181
    .end local v2           #account:Landroid/accounts/Account;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_70
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v10, v3, [Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 182
    .local v10, authArray:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 183
    return-object v10
.end method


# virtual methods
.method public deleteEntry(Ljava/lang/String;)I
    .registers 8
    .parameter "editUri"

    .prologue
    .line 397
    :try_start_0
    iget-object v3, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_20

    .line 398
    :try_start_3
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    .line 399
    .local v1, operation:Lcom/cooliris/picasa/GDataClient$Operation;
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 400
    iget-object v4, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    monitor-enter v4
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1d

    .line 401
    :try_start_b
    iget-object v2, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    invoke-virtual {v2, p1, v1}, Lcom/cooliris/picasa/GDataClient;->delete(Ljava/lang/String;Lcom/cooliris/picasa/GDataClient$Operation;)V

    .line 402
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_1a

    .line 403
    :try_start_11
    iget v2, v1, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_3b

    .line 404
    const/4 v2, 0x0

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    .line 412
    .end local v1           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    :goto_19
    return v2

    .line 402
    .restart local v1       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v2

    .line 408
    .end local v1           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_20} :catch_20

    .line 409
    :catch_20
    move-exception v0

    .line 410
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PicasaAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteEntry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .end local v0           #e:Ljava/io/IOException;
    :goto_39
    const/4 v2, 0x2

    goto :goto_19

    .line 406
    .restart local v1       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    :cond_3b
    :try_start_3b
    const-string v2, "PicasaAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteEntry: failed with status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_1d

    goto :goto_39
.end method

.method public getAlbumPhotos(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/cooliris/picasa/AlbumEntry;Lcom/cooliris/picasa/GDataParser$EntryHandler;)I
    .registers 20
    .parameter "accountManager"
    .parameter "syncResult"
    .parameter "album"
    .parameter "handler"

    .prologue
    .line 306
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "picasa_gdata_base_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, baseUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_8b

    .end local v1           #baseUrl:Ljava/lang/String;
    :goto_c
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v8, "user/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    iget-object v8, v8, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v8, "/albumid/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/cooliris/picasa/Entry;->id:J

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 313
    sget-object v8, Lcom/cooliris/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v8, "&kind=photo"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :try_start_35
    iget-object v9, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    monitor-enter v9
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_95
    .catch Lorg/xml/sax/SAXException; {:try_start_35 .. :try_end_38} :catch_189

    .line 318
    :try_start_38
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    .line 319
    .local v5, operation:Lcom/cooliris/picasa/GDataClient$Operation;
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/cooliris/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    iput-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 320
    const/4 v7, 0x0

    .line 321
    .local v7, retry:Z
    const/4 v4, 0x1

    .line 323
    .local v4, numRetries:I
    :cond_42
    const/4 v7, 0x0

    .line 324
    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    monitor-enter v10
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_92

    .line 325
    :try_start_46
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Lcom/cooliris/picasa/GDataClient;->get(Ljava/lang/String;Lcom/cooliris/picasa/GDataClient$Operation;)V

    .line 326
    monitor-exit v10
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_8f

    .line 327
    :try_start_50
    iget v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    sparse-switch v8, :sswitch_data_1b2

    .line 346
    const-string v8, "PicasaAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAlbumPhotos: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", unexpected status code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 349
    const/4 v8, 0x2

    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_50 .. :try_end_8a} :catchall_92

    .line 392
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :goto_8a
    return v8

    .line 308
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .restart local v1       #baseUrl:Ljava/lang/String;
    :cond_8b
    const-string v1, "https://picasaweb.google.com/data/feed/api/"

    goto/16 :goto_c

    .line 326
    .end local v1           #baseUrl:Ljava/lang/String;
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #numRetries:I
    .restart local v5       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .restart local v7       #retry:Z
    :catchall_8f
    move-exception v8

    :try_start_90
    monitor-exit v10
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v8

    .line 381
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :catchall_92
    move-exception v8

    monitor-exit v9
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_92

    :try_start_94
    throw v8
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_95} :catch_95
    .catch Lorg/xml/sax/SAXException; {:try_start_94 .. :try_end_95} :catch_189

    .line 383
    :catch_95
    move-exception v3

    .line 384
    .local v3, e:Ljava/io/IOException;
    const-string v8, "PicasaAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAlbumPhotos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 386
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 392
    .end local v3           #e:Ljava/io/IOException;
    :goto_bc
    const/4 v8, 0x2

    goto :goto_8a

    .line 331
    .restart local v4       #numRetries:I
    .restart local v5       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .restart local v7       #retry:Z
    :sswitch_be
    const/4 v8, 0x1

    :try_start_bf
    monitor-exit v9

    goto :goto_8a

    .line 336
    :sswitch_c1
    if-nez v7, :cond_cf

    .line 337
    const/4 v7, 0x1

    .line 338
    const-string v8, "lh2"

    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    iget-object v10, v10, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_cf
    if-nez v4, :cond_dc

    .line 342
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v8, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 351
    :cond_dc
    :sswitch_dc
    add-int/lit8 v4, v4, -0x1

    .line 352
    if-eqz v7, :cond_e2

    if-gez v4, :cond_42

    .line 355
    :cond_e2
    iget-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v8, v0, Lcom/cooliris/picasa/AlbumEntry;->photosEtag:Ljava/lang/String;

    .line 358
    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mParser:Lcom/cooliris/picasa/GDataParser;

    monitor-enter v10
    :try_end_eb
    .catchall {:try_start_bf .. :try_end_eb} :catchall_92

    .line 359
    :try_start_eb
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaApi;->mParser:Lcom/cooliris/picasa/GDataParser;

    .line 360
    .local v6, parser:Lcom/cooliris/picasa/GDataParser;
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mPhotoInstance:Lcom/cooliris/picasa/PhotoEntry;

    invoke-virtual {v6, v8}, Lcom/cooliris/picasa/GDataParser;->setEntry(Lcom/cooliris/picasa/Entry;)V

    .line 361
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/cooliris/picasa/GDataParser;->setHandler(Lcom/cooliris/picasa/GDataParser$EntryHandler;)V
    :try_end_f7
    .catchall {:try_start_eb .. :try_end_f7} :catchall_186

    .line 363
    :try_start_f7
    iget-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    sget-object v11, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v8, v11, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_fe
    .catchall {:try_start_f7 .. :try_end_fe} :catchall_186
    .catch Ljava/net/SocketException; {:try_start_f7 .. :try_end_fe} :catch_102
    .catch Ljava/net/SocketTimeoutException; {:try_start_f7 .. :try_end_fe} :catch_12e
    .catch Ljava/lang/AssertionError; {:try_start_f7 .. :try_end_fe} :catch_15a

    .line 380
    :try_start_fe
    monitor-exit v10
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_186

    .line 381
    :try_start_ff
    monitor-exit v9
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_92

    .line 382
    const/4 v8, 0x0

    goto :goto_8a

    .line 364
    :catch_102
    move-exception v3

    .line 365
    .local v3, e:Ljava/net/SocketException;
    :try_start_103
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbumPhotos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 367
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    .line 368
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_12b
    .catchall {:try_start_103 .. :try_end_12b} :catchall_186

    :try_start_12b
    monitor-exit v9
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_92

    goto/16 :goto_8a

    .line 369
    .end local v3           #e:Ljava/net/SocketException;
    :catch_12e
    move-exception v3

    .line 370
    .local v3, e:Ljava/net/SocketTimeoutException;
    :try_start_12f
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbumPhotos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 372
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 373
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_157
    .catchall {:try_start_12f .. :try_end_157} :catchall_186

    :try_start_157
    monitor-exit v9
    :try_end_158
    .catchall {:try_start_157 .. :try_end_158} :catchall_92

    goto/16 :goto_8a

    .line 374
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_15a
    move-exception v3

    .line 375
    .local v3, e:Ljava/lang/AssertionError;
    :try_start_15b
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbumPhotos: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 377
    invoke-virtual {v3}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 378
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_183
    .catchall {:try_start_15b .. :try_end_183} :catchall_186

    :try_start_183
    monitor-exit v9
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_92

    goto/16 :goto_8a

    .line 380
    .end local v3           #e:Ljava/lang/AssertionError;
    .end local v6           #parser:Lcom/cooliris/picasa/GDataParser;
    :catchall_186
    move-exception v8

    :try_start_187
    monitor-exit v10
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_186

    :try_start_188
    throw v8
    :try_end_189
    .catchall {:try_start_188 .. :try_end_189} :catchall_92

    .line 387
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :catch_189
    move-exception v3

    .line 388
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v8, "PicasaAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAlbumPhotos: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numParseExceptions:J

    .line 390
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_bc

    .line 327
    :sswitch_data_1b2
    .sparse-switch
        0xc8 -> :sswitch_dc
        0x130 -> :sswitch_be
        0x191 -> :sswitch_c1
        0x193 -> :sswitch_c1
    .end sparse-switch
.end method

.method public getAlbums(Landroid/accounts/AccountManager;Landroid/content/SyncResult;Lcom/cooliris/picasa/UserEntry;Lcom/cooliris/picasa/GDataParser$EntryHandler;)I
    .registers 20
    .parameter "accountManager"
    .parameter "syncResult"
    .parameter "user"
    .parameter "handler"

    .prologue
    .line 220
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "picasa_gdata_base_url"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, baseUrl:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9d

    .end local v1           #baseUrl:Ljava/lang/String;
    :goto_c
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, builder:Ljava/lang/StringBuilder;
    const-string v8, "user/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    iget-object v8, v8, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    sget-object v8, Lcom/cooliris/picasa/PicasaApi;->BASE_QUERY_STRING:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v8, "&kind=album"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :try_start_29
    iget-object v9, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    monitor-enter v9
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_a7
    .catch Lorg/xml/sax/SAXException; {:try_start_29 .. :try_end_2c} :catch_19a

    .line 230
    :try_start_2c
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaApi;->mOperation:Lcom/cooliris/picasa/GDataClient$Operation;

    .line 231
    .local v5, operation:Lcom/cooliris/picasa/GDataClient$Operation;
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/cooliris/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    iput-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, retry:Z
    const/4 v4, 0x1

    .line 235
    .local v4, numRetries:I
    :cond_36
    const/4 v7, 0x0

    .line 236
    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    monitor-enter v10
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_a4

    .line 237
    :try_start_3a
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11, v5}, Lcom/cooliris/picasa/GDataClient;->get(Ljava/lang/String;Lcom/cooliris/picasa/GDataClient$Operation;)V

    .line 238
    monitor-exit v10
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_a1

    .line 239
    :try_start_44
    iget v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    sparse-switch v8, :sswitch_data_1c0

    .line 255
    :cond_49
    :goto_49
    const-string v8, "PicasaAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAlbums uri "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-string v8, "PicasaAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAlbums: unexpected status code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 259
    const/4 v8, 0x2

    monitor-exit v9
    :try_end_9c
    .catchall {:try_start_44 .. :try_end_9c} :catchall_a4

    .line 300
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :goto_9c
    return v8

    .line 222
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .restart local v1       #baseUrl:Ljava/lang/String;
    :cond_9d
    const-string v1, "https://picasaweb.google.com/data/feed/api/"

    goto/16 :goto_c

    .line 238
    .end local v1           #baseUrl:Ljava/lang/String;
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #numRetries:I
    .restart local v5       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .restart local v7       #retry:Z
    :catchall_a1
    move-exception v8

    :try_start_a2
    monitor-exit v10
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v8

    .line 291
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :catchall_a4
    move-exception v8

    monitor-exit v9
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a4

    :try_start_a6
    throw v8
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a7} :catch_a7
    .catch Lorg/xml/sax/SAXException; {:try_start_a6 .. :try_end_a7} :catch_19a

    .line 293
    :catch_a7
    move-exception v3

    .line 294
    .local v3, e:Ljava/io/IOException;
    const-string v8, "PicasaAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAlbums: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 300
    .end local v3           #e:Ljava/io/IOException;
    :goto_cb
    const/4 v8, 0x2

    goto :goto_9c

    .line 243
    .restart local v4       #numRetries:I
    .restart local v5       #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .restart local v7       #retry:Z
    :sswitch_cd
    const/4 v8, 0x1

    :try_start_ce
    monitor-exit v9

    goto :goto_9c

    .line 246
    :sswitch_d0
    if-nez v7, :cond_de

    .line 247
    const-string v8, "com.google"

    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    iget-object v10, v10, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v7, 0x1

    .line 251
    :cond_de
    if-nez v4, :cond_49

    .line 252
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v10, v8, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v8, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_49

    .line 261
    :sswitch_ed
    add-int/lit8 v4, v4, -0x1

    .line 262
    if-eqz v7, :cond_f3

    if-gez v4, :cond_36

    .line 265
    :cond_f3
    iget-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->inOutEtag:Ljava/lang/String;

    move-object/from16 v0, p3

    iput-object v8, v0, Lcom/cooliris/picasa/UserEntry;->albumsEtag:Ljava/lang/String;

    .line 268
    iget-object v10, p0, Lcom/cooliris/picasa/PicasaApi;->mParser:Lcom/cooliris/picasa/GDataParser;

    monitor-enter v10
    :try_end_fc
    .catchall {:try_start_ce .. :try_end_fc} :catchall_a4

    .line 269
    :try_start_fc
    iget-object v6, p0, Lcom/cooliris/picasa/PicasaApi;->mParser:Lcom/cooliris/picasa/GDataParser;

    .line 270
    .local v6, parser:Lcom/cooliris/picasa/GDataParser;
    iget-object v8, p0, Lcom/cooliris/picasa/PicasaApi;->mAlbumInstance:Lcom/cooliris/picasa/AlbumEntry;

    invoke-virtual {v6, v8}, Lcom/cooliris/picasa/GDataParser;->setEntry(Lcom/cooliris/picasa/Entry;)V

    .line 271
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/cooliris/picasa/GDataParser;->setHandler(Lcom/cooliris/picasa/GDataParser$EntryHandler;)V
    :try_end_108
    .catchall {:try_start_fc .. :try_end_108} :catchall_197

    .line 273
    :try_start_108
    iget-object v8, v5, Lcom/cooliris/picasa/GDataClient$Operation;->outBody:Ljava/io/InputStream;

    sget-object v11, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v8, v11, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_197
    .catch Ljava/net/SocketException; {:try_start_108 .. :try_end_10f} :catch_113
    .catch Ljava/net/SocketTimeoutException; {:try_start_108 .. :try_end_10f} :catch_13f
    .catch Ljava/lang/AssertionError; {:try_start_108 .. :try_end_10f} :catch_16b

    .line 290
    :try_start_10f
    monitor-exit v10
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_197

    .line 291
    :try_start_110
    monitor-exit v9
    :try_end_111
    .catchall {:try_start_110 .. :try_end_111} :catchall_a4

    .line 292
    const/4 v8, 0x0

    goto :goto_9c

    .line 274
    :catch_113
    move-exception v3

    .line 275
    .local v3, e:Ljava/net/SocketException;
    :try_start_114
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbums SocketException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 277
    invoke-virtual {v3}, Ljava/net/SocketException;->printStackTrace()V

    .line 278
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_13c
    .catchall {:try_start_114 .. :try_end_13c} :catchall_197

    :try_start_13c
    monitor-exit v9
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_a4

    goto/16 :goto_9c

    .line 279
    .end local v3           #e:Ljava/net/SocketException;
    :catch_13f
    move-exception v3

    .line 280
    .local v3, e:Ljava/net/SocketTimeoutException;
    :try_start_140
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbums SocketTimeoutException: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 282
    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 283
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_168
    .catchall {:try_start_140 .. :try_end_168} :catchall_197

    :try_start_168
    monitor-exit v9
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_a4

    goto/16 :goto_9c

    .line 284
    .end local v3           #e:Ljava/net/SocketTimeoutException;
    :catch_16b
    move-exception v3

    .line 285
    .local v3, e:Ljava/lang/AssertionError;
    :try_start_16c
    const-string v8, "PicasaAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAlbums AssertionError: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v8, Landroid/content/SyncStats;->numIoExceptions:J

    .line 287
    invoke-virtual {v3}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 288
    const/4 v8, 0x2

    monitor-exit v10
    :try_end_194
    .catchall {:try_start_16c .. :try_end_194} :catchall_197

    :try_start_194
    monitor-exit v9
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_a4

    goto/16 :goto_9c

    .line 290
    .end local v3           #e:Ljava/lang/AssertionError;
    .end local v6           #parser:Lcom/cooliris/picasa/GDataParser;
    :catchall_197
    move-exception v8

    :try_start_198
    monitor-exit v10
    :try_end_199
    .catchall {:try_start_198 .. :try_end_199} :catchall_197

    :try_start_199
    throw v8
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_a4

    .line 296
    .end local v4           #numRetries:I
    .end local v5           #operation:Lcom/cooliris/picasa/GDataClient$Operation;
    .end local v7           #retry:Z
    :catch_19a
    move-exception v3

    .line 297
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v8, "PicasaAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAlbums: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p2

    iget-object v8, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v8, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroid/content/SyncStats;->numParseExceptions:J

    goto/16 :goto_cb

    .line 239
    :sswitch_data_1c0
    .sparse-switch
        0xc8 -> :sswitch_ed
        0x130 -> :sswitch_cd
        0x191 -> :sswitch_d0
        0x193 -> :sswitch_d0
    .end sparse-switch
.end method

.method public setAuth(Lcom/cooliris/picasa/PicasaApi$AuthAccount;)V
    .registers 5
    .parameter "auth"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaApi;->mAuth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 212
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    monitor-enter v1

    .line 213
    :try_start_5
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaApi;->mClient:Lcom/cooliris/picasa/GDataClient;

    iget-object v2, p1, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cooliris/picasa/GDataClient;->setAuthToken(Ljava/lang/String;)V

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method
