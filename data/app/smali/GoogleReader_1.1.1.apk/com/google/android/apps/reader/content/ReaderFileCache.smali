.class public Lcom/google/android/apps/reader/content/ReaderFileCache;
.super Ljava/lang/Object;
.source "ReaderFileCache.java"


# static fields
.field private static final PATH_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final PATH_FAVICONS:Ljava/lang/String; = "favicons"

.field private static final PATH_FRIEND_PHOTOS:Ljava/lang/String; = "friend_photos"

.field private static final PATH_ITEM_HTML:Ljava/lang/String; = "item_html"

.field private static final PATH_VERSIONS:Ljava/lang/String; = "v"

.field private static final TAG:Ljava/lang/String; = "ReaderFileCache"


# instance fields
.field private final mCacheDir:Ljava/io/File;

.field private final mCurrentVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;I)V
    .registers 5
    .parameter "cacheDir"
    .parameter "version"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-nez p1, :cond_d

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cache directory is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_d
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ReaderFileCache;->mCacheDir:Ljava/io/File;

    .line 103
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ReaderFileCache;->mCurrentVersion:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private static containsAccount(Lcom/google/android/accounts/Account;[Lcom/google/android/accounts/Account;)Z
    .registers 8
    .parameter "account"
    .parameter "accounts"

    .prologue
    .line 43
    if-nez p0, :cond_a

    .line 44
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Account is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 46
    :cond_a
    if-nez p1, :cond_14

    .line 47
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Account array is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 49
    :cond_14
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/accounts/Account;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_17
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    .line 50
    .local v3, other:Lcom/google/android/accounts/Account;
    iget-object v4, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v3, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 51
    const/4 v4, 0x1

    .line 54
    .end local v3           #other:Lcom/google/android/accounts/Account;
    :goto_30
    return v4

    .line 49
    .restart local v3       #other:Lcom/google/android/accounts/Account;
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 54
    .end local v3           #other:Lcom/google/android/accounts/Account;
    :cond_34
    const/4 v4, 0x0

    goto :goto_30
.end method

.method private static delete(Ljava/io/File;)Z
    .registers 5
    .parameter

    .prologue
    .line 65
    if-nez p0, :cond_a

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1c

    .line 70
    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 71
    invoke-static {v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->delete(Ljava/io/File;)Z

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 74
    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static deleteExpiredFiles(Ljava/io/File;J)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1a

    .line 80
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_17

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 80
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 86
    :cond_1a
    return-void
.end method

.method private getAccountDir(Lcom/google/android/accounts/Account;)Ljava/io/File;
    .registers 5
    .parameter "account"

    .prologue
    .line 121
    if-nez p1, :cond_a

    .line 122
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Account is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccountsDir()Ljava/io/File;

    move-result-object v0

    .line 125
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getAccounts()[Lcom/google/android/accounts/Account;
    .registers 8

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccountsDir()Ljava/io/File;

    move-result-object v3

    .line 189
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, accountNames:[Ljava/lang/String;
    if-eqz v1, :cond_21

    .line 191
    array-length v5, v1

    new-array v2, v5, [Lcom/google/android/accounts/Account;

    .line 192
    .local v2, accounts:[Lcom/google/android/accounts/Account;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_e
    array-length v5, v1

    if-ge v4, v5, :cond_1f

    .line 193
    aget-object v0, v1, v4

    .line 194
    .local v0, accountName:Ljava/lang/String;
    new-instance v5, Lcom/google/android/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, v0, v6}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 192
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .end local v0           #accountName:Ljava/lang/String;
    :cond_1f
    move-object v5, v2

    .line 198
    .end local v2           #accounts:[Lcom/google/android/accounts/Account;
    .end local v4           #i:I
    :goto_20
    return-object v5

    :cond_21
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/android/accounts/Account;

    goto :goto_20
.end method

.method private getAccountsDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getCurrentVersionDir()Ljava/io/File;

    move-result-object v0

    .line 117
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "accounts"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCurrentVersionDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getVersionsDir()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderFileCache;->mCurrentVersion:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFaviconDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getCurrentVersionDir()Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "favicons"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getFriendPhotoDir(Lcom/google/android/accounts/Account;)Ljava/io/File;
    .registers 5
    .parameter "account"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccountDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v0

    .line 135
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "friend_photos"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getItemHtmlDir(Lcom/google/android/accounts/Account;)Ljava/io/File;
    .registers 5
    .parameter "account"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccountDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v0

    .line 130
    .local v0, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "item_html"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getVersionsDir()Ljava/io/File;
    .registers 4

    .prologue
    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderFileCache;->mCacheDir:Ljava/io/File;

    const-string v2, "v"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public deleteDeprecatedFormats()V
    .registers 7

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getVersionsDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_22

    .line 226
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 227
    iget-object v4, p0, Lcom/google/android/apps/reader/content/ReaderFileCache;->mCurrentVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 228
    invoke-static {v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->delete(Ljava/io/File;)Z

    .line 226
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 232
    :cond_22
    return-void
.end method

.method public deleteInactiveAccounts([Lcom/google/android/accounts/Account;)V
    .registers 7
    .parameter

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccounts()[Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 236
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 237
    invoke-static {v3, p1}, Lcom/google/android/apps/reader/content/ReaderFileCache;->containsAccount(Lcom/google/android/accounts/Account;[Lcom/google/android/accounts/Account;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 238
    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccountDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v3

    .line 239
    invoke-static {v3}, Lcom/google/android/apps/reader/content/ReaderFileCache;->delete(Ljava/io/File;)Z

    .line 236
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 242
    :cond_1a
    return-void
.end method

.method public deleteItemHtmlByAge(J)V
    .registers 13
    .parameter "maxAge"

    .prologue
    .line 208
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_e

    .line 209
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Max age is less than zero"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 211
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, p1

    .line 212
    .local v6, minTimestamp:J
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getAccounts()[Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 213
    .local v1, accounts:[Lcom/google/android/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Lcom/google/android/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1b
    if-ge v4, v5, :cond_29

    aget-object v0, v2, v4

    .line 214
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getItemHtmlDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v3

    .line 215
    .local v3, dir:Ljava/io/File;
    invoke-static {v3, v6, v7}, Lcom/google/android/apps/reader/content/ReaderFileCache;->deleteExpiredFiles(Ljava/io/File;J)V

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 217
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v3           #dir:Ljava/io/File;
    :cond_29
    return-void
.end method

.method public getFaviconFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .parameter "domain"

    .prologue
    .line 176
    if-nez p1, :cond_a

    .line 177
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Domain is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_a
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getFaviconDir()Ljava/io/File;

    move-result-object v0

    .line 180
    .local v0, dir:Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public getFriendPhotoFile(Lcom/google/android/accounts/Account;J)Ljava/io/File;
    .registers 7
    .parameter "account"
    .parameter "contactId"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getFriendPhotoDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v0

    .line 153
    .local v0, dir:Ljava/io/File;
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public getItemHtmlFile(Lcom/google/android/accounts/Account;J)Ljava/io/File;
    .registers 7
    .parameter "account"
    .parameter "itemId"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/content/ReaderFileCache;->getItemHtmlDir(Lcom/google/android/accounts/Account;)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, dir:Ljava/io/File;
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method
