.class public Lcom/google/android/apps/reader/widget/StreamListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "StreamListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/StreamListAdapter$1;
    }
.end annotation


# static fields
.field protected static final COLUMN_ACCOUNT_NAME:I = 0x7

.field protected static final COLUMN_ACCOUNT_TYPE:I = 0x8

.field protected static final COLUMN_HTML_URL:I = 0x4

.field protected static final COLUMN_LABEL:I = 0x2

.field protected static final COLUMN_MAX_UNREAD_COUNT:I = 0xa

.field protected static final COLUMN_SORT_KEY_ALPHA:I = 0x5

.field protected static final COLUMN_SORT_KEY_MANUAL:I = 0x6

.field protected static final COLUMN_STREAM_ID:I = 0x1

.field protected static final COLUMN_SUBSCRIPTION_COUNT:I = 0x3

.field protected static final COLUMN_UNREAD_COUNT:I = 0x9

.field protected static final PROJECTION:[Ljava/lang/String; = null

.field protected static final SELECTION:Ljava/lang/String; = "id LIKE \'feed/%\' OR id LIKE \'webfeed/%\' OR id LIKE \'%/label/%\'"

.field protected static final SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "StreamListAdapter"


# instance fields
.field private mCustomFaviconsEnabled:Z

.field private final mImageLoader:Lcom/google/android/imageloader/ImageLoader;

.field private mShowUnreadCounts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subscription_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "html_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sort_key_alpha"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sort_key_manual"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 168
    invoke-static {p1}, Lcom/google/android/imageloader/ImageLoader;->get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 169
    return-void
.end method

.method private static getIcon(Ljava/lang/String;I)I
    .registers 3
    .parameter "streamId"
    .parameter "subscriptionCount"

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 107
    if-nez p1, :cond_c

    const v0, 0x7f02007d

    .line 113
    :goto_b
    return v0

    .line 107
    :cond_c
    const v0, 0x7f020020

    goto :goto_b

    .line 108
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isSubscriptionOrWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 109
    const v0, 0x7f02007b

    goto :goto_b

    .line 110
    :cond_1a
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 111
    const v0, 0x7f020079

    goto :goto_b

    .line 113
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getReadItemsVisible(Lcom/google/android/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 304
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->READ_ITEMS_VISIBLE:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method protected static isSubscriptionOrWebFeed(Ljava/lang/String;)Z
    .registers 2
    .parameter "streamId"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isWebFeed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method protected bindImageView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11
    .parameter "view"
    .parameter "streamId"
    .parameter "htmlUrl"
    .parameter "subscriptionCount"

    .prologue
    .line 215
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 216
    .local v0, icon:Landroid/widget/ImageView;
    iget-boolean v4, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mCustomFaviconsEnabled:Z

    if-eqz v4, :cond_32

    if-eqz p3, :cond_32

    .line 217
    invoke-static {p3}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->faviconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 218
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, url:Ljava/lang/String;
    sget-object v4, Lcom/google/android/apps/reader/widget/StreamListAdapter$1;->$SwitchMap$com$google$android$imageloader$ImageLoader$BindResult:[I

    iget-object v5, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    invoke-virtual {v5, p0, v0, v3}, Lcom/google/android/imageloader/ImageLoader;->bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/imageloader/ImageLoader$BindResult;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3e

    .line 228
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #url:Ljava/lang/String;
    :goto_28
    invoke-static {p2, p4}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getIcon(Ljava/lang/String;I)I

    move-result v1

    .line 229
    .local v1, resId:I
    if-eqz v1, :cond_38

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 234
    .end local v1           #resId:I
    :goto_31
    :pswitch_31
    return-void

    .line 226
    :cond_32
    iget-object v4, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    invoke-virtual {v4, v0}, Lcom/google/android/imageloader/ImageLoader;->unbind(Landroid/widget/ImageView;)V

    goto :goto_28

    .line 232
    .restart local v1       #resId:I
    :cond_38
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_31

    .line 219
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_31
    .end packed-switch
.end method

.method protected bindTextViews(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .parameter "view"
    .parameter "streamId"
    .parameter "label"
    .parameter "unreadCount"
    .parameter "maxUnreadCount"

    .prologue
    const v8, 0x1030042

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    const v5, 0x1020014

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 239
    .local v3, text1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 241
    .local v4, text2:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v3, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 245
    invoke-virtual {v4, v0, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 248
    if-eqz p4, :cond_47

    move v2, v7

    .line 249
    .local v2, style:I
    :goto_24
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 250
    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 252
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-boolean v5, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mShowUnreadCounts:Z

    if-eqz v5, :cond_41

    if-eqz p4, :cond_41

    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderStream;->hasReadState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 255
    :cond_41
    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_46
    return-void

    .end local v2           #style:I
    :cond_47
    move v2, v6

    .line 248
    goto :goto_24

    .line 256
    .restart local v2       #style:I
    :cond_49
    if-lt p4, p5, :cond_5e

    .line 257
    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    .line 258
    .local v1, formatArgs:[Ljava/lang/Object;
    const v5, 0x7f0d0107

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 260
    .end local v1           #formatArgs:[Ljava/lang/Object;
    :cond_5e
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, streamId:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, htmlUrl:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, label:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 208
    .local v7, subscriptionCount:I
    const/16 v0, 0x9

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 209
    .local v4, unreadCount:I
    const/16 v0, 0xa

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 210
    .local v5, maxUnreadCount:I
    invoke-virtual {p0, p1, v2, v6, v7}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->bindImageView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    .line 211
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->bindTextViews(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;II)V

    .line 212
    return-void
.end method

.method public createDeleteConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 7
    .parameter "cursor"

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 146
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 147
    .local v2, streamId:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, label:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 149
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;

    invoke-direct {v4, v3, v1}, Lcom/google/android/apps/reader/dialog/DeleteConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method protected final createItemsUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 282
    if-nez p1, :cond_c

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Account is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_c
    if-nez p2, :cond_14

    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 289
    :cond_14
    const-string v0, "user/-/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 291
    if-nez v0, :cond_33

    .line 292
    const-string v0, "StreamListAdapter"

    const-string v1, "Cannot open %s without user ID"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .line 300
    :goto_32
    return-object v0

    .line 295
    :cond_33
    invoke-static {p2, v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->setUserId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    :goto_37
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getReadItemsVisible(Lcom/google/android/accounts/Account;)Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->getReadItemsVisible(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f

    move v1, v2

    .line 299
    :goto_44
    iget-object v2, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/google/android/apps/reader/preference/StreamPreferences;->getRanking(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_32

    :cond_4f
    move v1, v3

    .line 297
    goto :goto_44

    :cond_51
    move-object v0, p2

    goto :goto_37
.end method

.method public createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;
    .registers 9
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    sget-object v3, Lcom/google/android/apps/reader/widget/StreamListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 190
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "id LIKE \'feed/%\' OR id LIKE \'webfeed/%\' OR id LIKE \'%/label/%\'"

    .line 191
    .local v4, selection:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/reader/widget/StreamListAdapter;->SELECTION_ARGS:[Ljava/lang/String;

    .line 192
    .local v5, selectionArgs:[Ljava/lang/String;
    const-string v6, "sort_key_alpha"

    .line 193
    .local v6, orderBy:Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRenameLabelDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 8
    .parameter "cursor"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 129
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, tagId:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, label:Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 132
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isFolder(Landroid/database/Cursor;)Z

    move-result v1

    .line 133
    .local v1, isFolder:Z
    new-instance v5, Lcom/google/android/apps/reader/dialog/RenameLabelDialog;

    invoke-direct {v5, v4, v2, v1}, Lcom/google/android/apps/reader/dialog/RenameLabelDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;Z)V

    return-object v5
.end method

.method public createRenameSubscriptionDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 7
    .parameter "cursor"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 138
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, subscriptionId:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, title:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 141
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;

    invoke-direct {v4, v3, v2}, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method public createUnsubscribeConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 7
    .parameter "cursor"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 154
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, subscriptionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 156
    .local v3, uri:Landroid/net/Uri;
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, title:Ljava/lang/String;
    new-instance v4, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;

    invoke-direct {v4, v3, v2}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    return-object v4
.end method

.method protected getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 118
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, accountName:Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected final getUserId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 266
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_11

    .line 267
    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 268
    .local v1, extras:Landroid/os/Bundle;
    const-string v2, "com.google.reader.cursor.extra.USER_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    .end local v1           #extras:Landroid/os/Bundle;
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method protected isFolder(Landroid/database/Cursor;)Z
    .registers 3
    .parameter "cursor"

    .prologue
    .line 124
    const/4 v0, 0x3

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

.method public newStreamIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 309
    if-eqz p2, :cond_29

    if-ne p2, v0, :cond_29

    .line 310
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 311
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 312
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 315
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v3

    .line 318
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public newSubscriptionIntent(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 324
    if-eqz p2, :cond_29

    if-ne p2, v0, :cond_29

    .line 325
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v1

    .line 326
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 327
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 330
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v3

    .line 333
    :goto_28
    return-object v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 198
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 199
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 338
    instance-of v7, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v7, :cond_3c

    .line 339
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0

    .line 340
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView;

    .line 341
    .local v1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v7, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v7}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    .line 342
    .local v5, item:Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 343
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_3c

    if-ne v5, v2, :cond_3c

    .line 344
    new-instance v3, Landroid/view/MenuInflater;

    iget-object v7, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 345
    .local v3, inflater:Landroid/view/MenuInflater;
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, streamId:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 347
    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isFolder(Landroid/database/Cursor;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 348
    const v7, 0x7f100004

    invoke-virtual {v3, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 357
    .end local v1           #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #inflater:Landroid/view/MenuInflater;
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v5           #item:Ljava/lang/Object;
    .end local v6           #streamId:Ljava/lang/String;
    :cond_3c
    :goto_3c
    return-void

    .line 350
    .restart local v1       #adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #inflater:Landroid/view/MenuInflater;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v5       #item:Ljava/lang/Object;
    .restart local v6       #streamId:Ljava/lang/String;
    :cond_3d
    const v7, 0x7f100012

    invoke-virtual {v3, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3c

    .line 352
    :cond_44
    invoke-static {v6}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isSubscriptionOrWebFeed(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 353
    const v7, 0x7f100010

    invoke-virtual {v3, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3c
.end method

.method public setCustomFaviconsEnabled(Z)V
    .registers 3
    .parameter "customFaviconsEnabled"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mCustomFaviconsEnabled:Z

    .line 180
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 181
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->notifyDataSetChanged()V

    .line 183
    :cond_b
    return-void
.end method

.method public setShowUnreadCounts(Z)V
    .registers 3
    .parameter "showUnreadCounts"

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/StreamListAdapter;->mShowUnreadCounts:Z

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/StreamListAdapter;->notifyDataSetChanged()V

    .line 176
    :cond_b
    return-void
.end method
