.class abstract Lcom/google/android/apps/reader/widget/BaseItemsAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "BaseItemsAdapter.java"

# interfaces
.implements Lcom/google/android/apps/reader/widget/ItemQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMAIL_SUPPORTED:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SHARE_IS_SEND:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseItemsAdapter"


# instance fields
.field private final mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSilent:Z

.field private mUnsynchronizedAccount:Lcom/google/android/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const-class v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->$assertionsDisabled:Z

    .line 75
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->SHARE_IS_SEND:Z

    return-void

    .line 69
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 89
    new-instance v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;

    invoke-direct {v0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 90
    return-void
.end method

.method private createSendIntent(Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 6
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 204
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-nez v1, :cond_e

    .line 206
    const/4 v0, 0x0

    .line 212
    :goto_d
    return-object v0

    .line 208
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v2

    .line 212
    goto :goto_d
.end method

.method private getItemHtmlAsString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "cursor"

    .prologue
    .line 244
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 245
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 246
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 247
    .local v1, itemId:J
    invoke-static {v3, v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getHtmlAsString(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;J)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private varargs getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resId"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 789
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 791
    const v1, 0x7f0d012f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_12
    return-object v0
.end method

.method private startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method private startActivitySafely(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 481
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    .line 482
    const/4 v0, 0x1

    .line 485
    :goto_4
    return v0

    .line 484
    :catch_5
    move-exception v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivity(Landroid/content/Intent;)V

    .line 485
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private startDelete(Landroid/database/Cursor;Ljava/lang/CharSequence;)V
    .registers 9
    .parameter "cursor"
    .parameter "toast"

    .prologue
    .line 194
    const/4 v1, 0x2

    .line 195
    .local v1, token:I
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mSilent:Z

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    move-object v2, v0

    .line 196
    .local v2, cookie:Ljava/lang/CharSequence;
    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->syncLater(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 197
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 198
    .local v4, selection:Ljava/lang/String;
    const/4 v5, 0x0

    .line 199
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    return-void

    .end local v2           #cookie:Ljava/lang/CharSequence;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    :cond_17
    move-object v2, p2

    .line 195
    goto :goto_7
.end method

.method private startUpdate(Landroid/database/Cursor;Ljava/lang/String;ZLjava/lang/CharSequence;)V
    .registers 12
    .parameter "cursor"
    .parameter "columnName"
    .parameter "value"
    .parameter "toast"

    .prologue
    .line 176
    const/4 v1, 0x1

    .line 177
    .local v1, token:I
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mSilent:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    move-object v2, v0

    .line 178
    .local v2, cookie:Ljava/lang/CharSequence;
    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->syncLater(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 179
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 180
    .local v4, values:Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const/4 v5, 0x0

    .line 182
    .local v5, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 184
    check-cast p1, Lcom/google/android/apps/reader/widget/ModifiedCursor;

    .end local p1
    invoke-virtual {p1, v4, p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->put(Landroid/content/ContentValues;Landroid/widget/BaseAdapter;)V

    .line 185
    return-void

    .end local v2           #cookie:Ljava/lang/CharSequence;
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .restart local p1
    :cond_28
    move-object v2, p4

    .line 177
    goto :goto_7
.end method

.method private syncLater(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 162
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mUnsynchronizedAccount:Lcom/google/android/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->syncChanges()Z

    .line 170
    :cond_f
    iput-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mUnsynchronizedAccount:Lcom/google/android/accounts/Account;

    .line 172
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->setSyncToNetwork(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addStar(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    .line 308
    return-void
.end method

.method public createLoader(Landroid/net/Uri;)Landroid/support/v4/content/CursorLoader;
    .registers 10
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    .line 93
    new-instance v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$1;

    iget-object v2, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter$1;-><init>(Lcom/google/android/apps/reader/widget/BaseItemsAdapter;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public deleteItem(Landroid/database/Cursor;)V
    .registers 7
    .parameter "cursor"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, title:Ljava/lang/String;
    const v2, 0x7f0d0028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    .local v1, toast:Ljava/lang/CharSequence;
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startDelete(Landroid/database/Cursor;Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public emailItem(Landroid/database/Cursor;)V
    .registers 6
    .parameter

    .prologue
    .line 360
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 361
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    const-string v3, "message/rfc822"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-direct {p0, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivitySafely(Landroid/content/Intent;)Z

    .line 367
    return-void
.end method

.method public findItem(JI)Landroid/database/Cursor;
    .registers 8
    .parameter "item"
    .parameter "start"

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_45

    .line 126
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 127
    const/4 p3, 0x0

    .line 129
    :cond_d
    const/4 v1, 0x0

    .line 130
    .local v1, offset:I
    :goto_e
    add-int v2, p3, v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_1e

    sub-int v2, p3, v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 131
    :cond_1e
    add-int v2, p3, v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_30

    move-object v2, v0

    .line 143
    .end local v1           #offset:I
    :goto_2f
    return-object v2

    .line 136
    .restart local v1       #offset:I
    :cond_30
    sub-int v2, p3, v1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 137
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getItemId(Landroid/database/Cursor;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_42

    move-object v2, v0

    .line 138
    goto :goto_2f

    .line 130
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 143
    .end local v1           #offset:I
    :cond_45
    const/4 v2, 0x0

    goto :goto_2f
.end method

.method protected getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 769
    const/16 v2, 0x14

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, accountName:Ljava/lang/String;
    const/16 v2, 0x15

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 771
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getItemId(Landroid/database/Cursor;)J
    .registers 4
    .parameter "cursor"

    .prologue
    .line 781
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStarred(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 797
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isUnread(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 339
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public itemUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 775
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 776
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 777
    .local v1, itemId:J
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public keepUnread(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    .line 336
    return-void
.end method

.method public likeItem(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    .line 316
    return-void
.end method

.method public markAllAsRead()V
    .registers 3

    .prologue
    .line 429
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markAllAsRead(J)V

    .line 430
    return-void
.end method

.method public markAllAsRead(J)V
    .registers 9
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 434
    if-nez v0, :cond_e

    .line 435
    const-string v0, "BaseItemsAdapter"

    const-string v1, "Cannot mark all as read because data is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_d
    return-void

    .line 438
    :cond_e
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 439
    if-nez v3, :cond_24

    .line 441
    const-string v0, "BaseItemsAdapter"

    const-string v1, "Cannot mark all as read because stream is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 444
    :cond_24
    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 445
    if-nez v0, :cond_32

    .line 448
    const-string v0, "BaseItemsAdapter"

    const-string v1, "Cannot mark all as read because stream has no ID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 451
    :cond_32
    invoke-static {v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v2

    .line 452
    const/4 v1, 0x3

    .line 454
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->markAllAsRead(Landroid/content/AsyncQueryHandler;ILjava/lang/Object;Landroid/net/Uri;J)V

    .line 455
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->showAllAsRead()V

    goto :goto_d
.end method

.method public markPreviousAsRead(Landroid/database/Cursor;)V
    .registers 11
    .parameter

    .prologue
    const/16 v2, 0x18

    const/4 v8, 0x0

    .line 394
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 399
    const-string v1, "BaseItemsAdapter"

    const-string v2, "Position is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_10
    return-void

    .line 402
    :cond_11
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 403
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.google.reader.cursor.extra.URI"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 404
    if-nez v4, :cond_2b

    .line 406
    const-string v1, "BaseItemsAdapter"

    const-string v2, "Cannot mark previous as read because stream is not set"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 409
    :cond_2b
    invoke-static {v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->getStreamId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 410
    if-nez v2, :cond_39

    .line 413
    const-string v1, "BaseItemsAdapter"

    const-string v2, "Cannot mark previous as read because stream has no ID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 416
    :cond_39
    invoke-static {v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v3

    .line 417
    const/4 v2, 0x4

    .line 419
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 420
    const-string v6, "read"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 421
    const-string v6, "position <= ?"

    .line 422
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v8

    .line 423
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-virtual/range {v1 .. v7}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 425
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/reader/widget/ModifiedCursor;

    move-object v1, v0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v5, v8, v2, p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->fill(Landroid/content/ContentValues;IILandroid/widget/BaseAdapter;)V

    goto :goto_10
.end method

.method public markRead(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 331
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    .line 332
    return-void
.end method

.method public newViewItemInStreamIntent(Landroid/database/Cursor;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 150
    sget-boolean v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 151
    :cond_1c
    if-eqz p2, :cond_31

    .line 152
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 153
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.reader.intent.action.VIEW_ITEM"

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    const-string v3, "item_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object v0, v2

    .line 157
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 508
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 509
    instance-of v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_71

    .line 510
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 511
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 512
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 513
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 514
    if-eqz v0, :cond_6f

    if-ne v0, v1, :cond_6f

    .line 515
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_74

    move v0, v3

    .line 563
    :goto_2a
    return v0

    .line 517
    :pswitch_2b
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 518
    goto :goto_2a

    .line 520
    :pswitch_30
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 521
    goto :goto_2a

    .line 523
    :pswitch_35
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 524
    goto :goto_2a

    .line 526
    :pswitch_3a
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 527
    goto :goto_2a

    .line 529
    :pswitch_3f
    sget-boolean v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->SHARE_IS_SEND:Z

    if-eqz v0, :cond_48

    .line 530
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->sendItem(Landroid/database/Cursor;)Z

    :goto_46
    move v0, v2

    .line 534
    goto :goto_2a

    .line 532
    :cond_48
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    goto :goto_46

    .line 536
    :pswitch_4c
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 537
    goto :goto_2a

    .line 539
    :pswitch_51
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 540
    goto :goto_2a

    .line 542
    :pswitch_56
    invoke-virtual {p0, v1, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    move v0, v2

    .line 543
    goto :goto_2a

    .line 545
    :pswitch_5b
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareWithNote(Landroid/database/Cursor;)Z

    move v0, v2

    .line 546
    goto :goto_2a

    .line 548
    :pswitch_60
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->deleteItem(Landroid/database/Cursor;)V

    move v0, v2

    .line 549
    goto :goto_2a

    .line 551
    :pswitch_65
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->tagItem(Landroid/database/Cursor;)V

    move v0, v2

    .line 552
    goto :goto_2a

    .line 554
    :pswitch_6a
    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markPreviousAsRead(Landroid/database/Cursor;)V

    move v0, v2

    .line 555
    goto :goto_2a

    :cond_6f
    move v0, v3

    .line 560
    goto :goto_2a

    :cond_71
    move v0, v3

    .line 563
    goto :goto_2a

    .line 515
    nop

    :pswitch_data_74
    .packed-switch 0x7f0b0084
        :pswitch_51
        :pswitch_56
        :pswitch_6a
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_3a
        :pswitch_3f
        :pswitch_4c
        :pswitch_5b
        :pswitch_60
        :pswitch_65
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 490
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_2e

    .line 491
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 492
    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    .line 493
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 494
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 495
    if-eqz v0, :cond_2e

    if-ne v0, v1, :cond_2e

    .line 496
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 497
    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 498
    const v0, 0x7f100009

    invoke-virtual {v2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 502
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)Z

    .line 505
    :cond_2e
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 631
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 632
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 633
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(Landroid/database/Cursor;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 568
    sparse-switch p2, :sswitch_data_7a

    move v0, v1

    .line 626
    :goto_6
    return v0

    .line 570
    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 571
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 572
    goto :goto_6

    .line 574
    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleShare(Landroid/database/Cursor;)V

    move v0, v2

    .line 575
    goto :goto_6

    .line 578
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleStar(Landroid/database/Cursor;)V

    move v0, v2

    .line 579
    goto :goto_6

    .line 582
    :sswitch_21
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    .line 583
    goto :goto_6

    .line 585
    :cond_2b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleLike(Landroid/database/Cursor;)V

    move v0, v2

    .line 586
    goto :goto_6

    .line 589
    :sswitch_30
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 590
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->sendItem(Landroid/database/Cursor;)Z

    :goto_39
    move v0, v2

    .line 594
    goto :goto_6

    .line 592
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->tagItem(Landroid/database/Cursor;)V

    goto :goto_39

    .line 596
    :sswitch_3f
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->emailItem(Landroid/database/Cursor;)V

    move v0, v2

    .line 597
    goto :goto_6

    .line 599
    :sswitch_44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 600
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    .line 601
    goto :goto_6

    .line 603
    :cond_54
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareWithNote(Landroid/database/Cursor;)Z

    move v0, v2

    .line 604
    goto :goto_6

    :cond_59
    move v0, v1

    .line 607
    goto :goto_6

    .line 610
    :sswitch_5b
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->viewOriginal(Landroid/database/Cursor;)Z

    move v0, v2

    .line 611
    goto :goto_6

    .line 613
    :sswitch_60
    sget-object v0, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v1

    .line 614
    goto :goto_6

    .line 615
    :cond_6a
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_72

    move v0, v1

    .line 617
    goto :goto_6

    :cond_72
    move v0, v1

    .line 620
    goto :goto_6

    .line 623
    :sswitch_74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->toggleRead(Landroid/database/Cursor;)V

    move v0, v2

    .line 624
    goto :goto_6

    .line 568
    nop

    :sswitch_data_7a
    .sparse-switch
        0x1f -> :sswitch_60
        0x20 -> :sswitch_44
        0x21 -> :sswitch_3f
        0x28 -> :sswitch_21
        0x29 -> :sswitch_74
        0x2f -> :sswitch_7
        0x30 -> :sswitch_30
        0x32 -> :sswitch_5b
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Landroid/database/Cursor;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 698
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 743
    :pswitch_8
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 700
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->addStar(Landroid/database/Cursor;)V

    move v0, v1

    .line 701
    goto :goto_9

    .line 703
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->removeStar(Landroid/database/Cursor;)V

    move v0, v1

    .line 704
    goto :goto_9

    .line 706
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->likeItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 707
    goto :goto_9

    .line 709
    :pswitch_19
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->unlikeItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 710
    goto :goto_9

    .line 712
    :pswitch_1e
    sget-boolean v0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->SHARE_IS_SEND:Z

    if-eqz v0, :cond_27

    .line 713
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->sendItem(Landroid/database/Cursor;)Z

    :goto_25
    move v0, v1

    .line 717
    goto :goto_9

    .line 715
    :cond_27
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareItem(Landroid/database/Cursor;)V

    goto :goto_25

    .line 719
    :pswitch_2b
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->unshareItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 720
    goto :goto_9

    .line 722
    :pswitch_30
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->shareWithNote(Landroid/database/Cursor;)Z

    move v0, v1

    .line 723
    goto :goto_9

    .line 725
    :pswitch_35
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->deleteItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 726
    goto :goto_9

    .line 728
    :pswitch_3a
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->keepUnread(Landroid/database/Cursor;)V

    move v0, v1

    .line 729
    goto :goto_9

    .line 731
    :pswitch_3f
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->markRead(Landroid/database/Cursor;)V

    move v0, v1

    .line 732
    goto :goto_9

    .line 734
    :pswitch_44
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->tagItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 735
    goto :goto_9

    .line 737
    :pswitch_49
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->sendItem(Landroid/database/Cursor;)Z

    move v0, v1

    .line 738
    goto :goto_9

    .line 740
    :pswitch_4e
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->emailItem(Landroid/database/Cursor;)V

    move v0, v1

    .line 741
    goto :goto_9

    .line 698
    nop

    :pswitch_data_54
    .packed-switch 0x7f0b0084
        :pswitch_3f
        :pswitch_3a
        :pswitch_8
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_2b
        :pswitch_30
        :pswitch_35
        :pswitch_44
        :pswitch_49
        :pswitch_4e
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Landroid/database/Cursor;)Z
    .registers 25
    .parameter
    .parameter

    .prologue
    .line 637
    const v2, 0x7f0b0087

    move-object/from16 v0, p1

    move v1, v2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 638
    const v3, 0x7f0b0088

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 639
    const v4, 0x7f0b0089

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 640
    const v5, 0x7f0b008a

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 641
    const v6, 0x7f0b008b

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 642
    const v7, 0x7f0b008c

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 643
    const v8, 0x7f0b008d

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 644
    const v9, 0x7f0b008e

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 645
    const v10, 0x7f0b0085

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 646
    const v11, 0x7f0b0084

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 647
    const v12, 0x7f0b0090

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 648
    const v13, 0x7f0b0091

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    .line 650
    const/4 v14, 0x5

    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_173

    const/4 v14, 0x1

    .line 651
    :goto_83
    const/4 v15, 0x7

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_176

    const/4 v15, 0x1

    .line 652
    :goto_8e
    const/16 v16, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_179

    const/16 v16, 0x1

    .line 653
    :goto_9c
    const/16 v17, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_17d

    const/16 v17, 0x1

    .line 654
    :goto_aa
    const/16 v18, 0x9

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-nez v18, :cond_c2

    const/16 v18, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-eqz v18, :cond_181

    :cond_c2
    const/16 v18, 0x1

    .line 656
    :goto_c4
    const/16 v19, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-eqz v19, :cond_185

    const/16 v19, 0x1

    .line 657
    :goto_d2
    const/16 v20, 0xc

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_189

    const/16 v20, 0x1

    .line 659
    :goto_e0
    if-nez v14, :cond_18d

    const/16 v21, 0x1

    :goto_e4
    move-object v0, v2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    if-nez v15, :cond_191

    const/4 v2, 0x1

    :goto_f0
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    invoke-interface {v5, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 663
    if-nez v16, :cond_194

    const/4 v2, 0x1

    :goto_f9
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    move-object v0, v7

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    if-eqz v20, :cond_197

    if-nez v18, :cond_197

    const/4 v2, 0x1

    :goto_107
    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 666
    move-object v0, v9

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 667
    move-object v0, v10

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 668
    if-nez v19, :cond_19a

    const/4 v2, 0x1

    :goto_119
    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 669
    move-object v0, v12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 670
    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    if-nez v17, :cond_19d

    const/4 v2, 0x1

    :goto_12b
    invoke-interface {v10, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 673
    if-nez v17, :cond_19f

    const/4 v2, 0x1

    :goto_131
    invoke-interface {v11, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 675
    sget-object v2, Lcom/google/android/apps/reader/util/Experiment;->GOOGLE_PLUS:Lcom/google/android/apps/reader/util/Experiment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/util/Experiment;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_150

    .line 676
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 677
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 679
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 683
    :cond_150
    sget-boolean v2, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->SHARE_IS_SEND:Z

    if-eqz v2, :cond_16a

    .line 684
    invoke-interface {v12}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 685
    invoke-interface {v12}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 686
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 687
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 691
    :cond_16a
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 694
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    return v2

    .line 650
    :cond_173
    const/4 v14, 0x0

    goto/16 :goto_83

    .line 651
    :cond_176
    const/4 v15, 0x0

    goto/16 :goto_8e

    .line 652
    :cond_179
    const/16 v16, 0x0

    goto/16 :goto_9c

    .line 653
    :cond_17d
    const/16 v17, 0x0

    goto/16 :goto_aa

    .line 654
    :cond_181
    const/16 v18, 0x0

    goto/16 :goto_c4

    .line 656
    :cond_185
    const/16 v19, 0x0

    goto/16 :goto_d2

    .line 657
    :cond_189
    const/16 v20, 0x0

    goto/16 :goto_e0

    .line 659
    :cond_18d
    const/16 v21, 0x0

    goto/16 :goto_e4

    .line 661
    :cond_191
    const/4 v2, 0x0

    goto/16 :goto_f0

    .line 663
    :cond_194
    const/4 v2, 0x0

    goto/16 :goto_f9

    .line 665
    :cond_197
    const/4 v2, 0x0

    goto/16 :goto_107

    .line 668
    :cond_19a
    const/4 v2, 0x0

    goto/16 :goto_119

    .line 672
    :cond_19d
    const/4 v2, 0x0

    goto :goto_12b

    .line 673
    :cond_19f
    const/4 v2, 0x0

    goto :goto_131
.end method

.method public removeStar(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    .line 312
    return-void
.end method

.method public sendItem(Landroid/database/Cursor;)Z
    .registers 6
    .parameter

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 371
    const/16 v1, 0xc

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    if-nez v1, :cond_e

    .line 373
    const/4 v0, 0x0

    .line 385
    :goto_d
    return v0

    .line 375
    :cond_e
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/4 v0, 0x0

    .line 382
    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 384
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivity(Landroid/content/Intent;)V

    .line 385
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setLiked(Landroid/database/Cursor;Z)V
    .registers 8
    .parameter "cursor"
    .parameter "liked"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, title:Ljava/lang/String;
    if-eqz p2, :cond_19

    const v2, 0x7f0d0024

    :goto_9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 277
    .local v1, toast:Ljava/lang/CharSequence;
    const-string v2, "liked"

    invoke-direct {p0, p1, v2, p2, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startUpdate(Landroid/database/Cursor;Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 278
    return-void

    .line 276
    .end local v1           #toast:Ljava/lang/CharSequence;
    :cond_19
    const v2, 0x7f0d0025

    goto :goto_9
.end method

.method public setRead(Landroid/database/Cursor;Z)V
    .registers 5
    .parameter "cursor"
    .parameter "read"

    .prologue
    .line 263
    if-eqz p2, :cond_f

    const v1, 0x7f0d0029

    :goto_5
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, toast:Ljava/lang/CharSequence;
    const-string v1, "read"

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startUpdate(Landroid/database/Cursor;Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 265
    return-void

    .line 263
    .end local v0           #toast:Ljava/lang/CharSequence;
    :cond_f
    const v1, 0x7f0d002a

    goto :goto_5
.end method

.method public setShared(Landroid/database/Cursor;Z)V
    .registers 8
    .parameter "cursor"
    .parameter "shared"

    .prologue
    .line 268
    if-eqz p2, :cond_1a

    const v3, 0x7f0d0026

    move v0, v3

    .line 269
    .local v0, resId:I
    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, title:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getString(I[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 271
    .local v2, toast:Ljava/lang/CharSequence;
    const-string v3, "shared"

    invoke-direct {p0, p1, v3, p2, v2}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startUpdate(Landroid/database/Cursor;Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 272
    return-void

    .line 268
    .end local v0           #resId:I
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #toast:Ljava/lang/CharSequence;
    :cond_1a
    const v3, 0x7f0d0027

    move v0, v3

    goto :goto_6
.end method

.method public setSilent(Z)V
    .registers 2
    .parameter "silent"

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mSilent:Z

    .line 752
    return-void
.end method

.method public setStarred(Landroid/database/Cursor;Z)V
    .registers 6
    .parameter "cursor"
    .parameter "starred"

    .prologue
    .line 281
    if-eqz p2, :cond_10

    const v2, 0x7f0d0022

    move v0, v2

    .line 282
    .local v0, resId:I
    :goto_6
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 283
    .local v1, toast:Ljava/lang/CharSequence;
    const-string v2, "starred"

    invoke-direct {p0, p1, v2, p2, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startUpdate(Landroid/database/Cursor;Ljava/lang/String;ZLjava/lang/CharSequence;)V

    .line 284
    return-void

    .line 281
    .end local v0           #resId:I
    .end local v1           #toast:Ljava/lang/CharSequence;
    :cond_10
    const v2, 0x7f0d0023

    move v0, v2

    goto :goto_6
.end method

.method public shareItem(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    .line 324
    return-void
.end method

.method public shareWithNote(Landroid/database/Cursor;)Z
    .registers 6
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->createSendIntent(Landroid/database/Cursor;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_41

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getItemHtmlAsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 219
    if-eqz v1, :cond_11

    .line 220
    const-string v2, "com.google.android.reader.intent.extra.SNIPPET"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    :cond_11
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 224
    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    if-eqz v2, :cond_23

    .line 226
    const-string v3, "source_title_plaintext"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_23
    const/16 v2, 0x1a

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_30

    .line 230
    const-string v3, "source_alternate_href"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_30
    const-string v2, "android.intent.extra.TEMPLATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/reader/app/NoteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivity(Landroid/content/Intent;)V

    .line 237
    const/4 v0, 0x1

    .line 239
    :goto_40
    return v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public showAllAsRead()V
    .registers 5

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/widget/ModifiedCursor;

    .line 467
    .local v0, cursor:Lcom/google/android/apps/reader/widget/ModifiedCursor;
    if-eqz v0, :cond_23

    .line 468
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 470
    const-string v2, "locked"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 471
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/apps/reader/widget/ModifiedCursor;->fill(Landroid/content/ContentValues;IILandroid/widget/BaseAdapter;)V

    .line 473
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_23
    return-void
.end method

.method public syncChanges()Z
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mUnsynchronizedAccount:Lcom/google/android/accounts/Account;

    if-eqz v0, :cond_10

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mUnsynchronizedAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->requestSyncUpload(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mUnsynchronizedAccount:Lcom/google/android/accounts/Account;

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public tagItem(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->itemUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 258
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "org.openintents.action.TAG"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivity(Landroid/content/Intent;)V

    .line 260
    return-void
.end method

.method public toggleLike(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_11

    move v0, v3

    .line 293
    .local v0, liked:Z
    :goto_a
    if-nez v0, :cond_13

    move v1, v3

    :goto_d
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    .line 294
    return-void

    .end local v0           #liked:Z
    :cond_11
    move v0, v2

    .line 292
    goto :goto_a

    .restart local v0       #liked:Z
    :cond_13
    move v1, v2

    .line 293
    goto :goto_d
.end method

.method public toggleRead(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_11

    move v0, v3

    .line 298
    .local v0, read:Z
    :goto_a
    if-nez v0, :cond_13

    move v1, v3

    :goto_d
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    .line 299
    return-void

    .end local v0           #read:Z
    :cond_11
    move v0, v2

    .line 297
    goto :goto_a

    .restart local v0       #read:Z
    :cond_13
    move v1, v2

    .line 298
    goto :goto_d
.end method

.method public toggleShare(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_12

    move v0, v3

    .line 288
    .local v0, shared:Z
    :goto_b
    if-nez v0, :cond_14

    move v1, v3

    :goto_e
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    .line 289
    return-void

    .end local v0           #shared:Z
    :cond_12
    move v0, v2

    .line 287
    goto :goto_b

    .restart local v0       #shared:Z
    :cond_14
    move v1, v2

    .line 288
    goto :goto_e
.end method

.method public toggleStar(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 302
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_11

    move v0, v3

    .line 303
    .local v0, starred:Z
    :goto_a
    if-nez v0, :cond_13

    move v1, v3

    :goto_d
    invoke-virtual {p0, p1, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setStarred(Landroid/database/Cursor;Z)V

    .line 304
    return-void

    .end local v0           #starred:Z
    :cond_11
    move v0, v2

    .line 302
    goto :goto_a

    .restart local v0       #starred:Z
    :cond_13
    move v1, v2

    .line 303
    goto :goto_d
.end method

.method public unlikeItem(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setLiked(Landroid/database/Cursor;Z)V

    .line 320
    return-void
.end method

.method public unshareItem(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setShared(Landroid/database/Cursor;Z)V

    .line 328
    return-void
.end method

.method public viewOriginal(Landroid/database/Cursor;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 343
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    if-nez v0, :cond_b

    .line 345
    const/4 v0, 0x0

    .line 356
    :goto_a
    return v0

    .line 347
    :cond_b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->startActivitySafely(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 352
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->isUnread(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 353
    invoke-virtual {p0, p1, v3}, Lcom/google/android/apps/reader/widget/BaseItemsAdapter;->setRead(Landroid/database/Cursor;Z)V

    :cond_30
    move v0, v3

    .line 356
    goto :goto_a
.end method
