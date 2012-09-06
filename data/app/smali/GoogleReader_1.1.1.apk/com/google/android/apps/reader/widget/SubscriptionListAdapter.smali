.class public Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "SubscriptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/SubscriptionListAdapter$1;
    }
.end annotation


# static fields
.field private static final COLUMN_ACCOUNT_NAME:I = 0x1

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x2

.field private static final COLUMN_HTML_URL:I = 0x7

.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x6

.field private static final COLUMN_STREAM_ID:I = 0x3

.field private static final COLUMN_TITLE:I = 0x4

.field private static final COLUMN_UNREAD_COUNT:I = 0x5

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCustomFaviconsEnabled:Z

.field private final mImageLoader:Lcom/google/android/imageloader/ImageLoader;

.field private mShowUnreadCounts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "html_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key_alpha"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_manual"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 80
    invoke-static {p1}, Lcom/google/android/imageloader/ImageLoader;->get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 81
    return-void
.end method

.method private static getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 184
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getSubscriptionUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 191
    .local v0, account:Lcom/google/android/accounts/Account;
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, subscriptionId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 116
    const/16 v16, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, streamId:Ljava/lang/String;
    const/16 v16, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, htmlUrl:Ljava/lang/String;
    const/16 v16, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, label:Ljava/lang/String;
    const/16 v16, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 120
    .local v13, unreadCount:I
    const/16 v16, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 121
    .local v8, maxUnreadCount:I
    const v16, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 122
    .local v6, icon:Landroid/widget/ImageView;
    const v16, 0x1020014

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 123
    .local v11, text1:Landroid/widget/TextView;
    const v16, 0x1020015

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 125
    .local v12, text2:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mCustomFaviconsEnabled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_dd

    if-eqz v5, :cond_dd

    .line 126
    invoke-static {v5}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->faviconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 127
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 128
    .local v15, url:Ljava/lang/String;
    sget-object v16, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter$1;->$SwitchMap$com$google$android$imageloader$ImageLoader$BindResult:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/imageloader/ImageLoader;->bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/imageloader/ImageLoader$BindResult;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_128

    .line 132
    const v16, 0x7f02007b

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 141
    .end local v14           #uri:Landroid/net/Uri;
    .end local v15           #url:Ljava/lang/String;
    :goto_8f
    :pswitch_8f
    const v16, 0x1030042

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    const v16, 0x1030042

    move-object v0, v12

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    if-eqz v13, :cond_f3

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 146
    .local v10, style:I
    :goto_ab
    invoke-virtual {v11}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 147
    invoke-virtual {v12}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mShowUnreadCounts:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d4

    if-eqz v13, :cond_d4

    invoke-static {v9}, Lcom/google/android/apps/reader/provider/ReaderStream;->hasReadState(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_f8

    .line 152
    :cond_d4
    const-string v16, ""

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_dc
    return-void

    .line 136
    .end local v10           #style:I
    :cond_dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/imageloader/ImageLoader;->unbind(Landroid/widget/ImageView;)V

    .line 137
    const v16, 0x7f02007b

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8f

    .line 145
    :cond_f3
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_ab

    .line 153
    .restart local v10       #style:I
    :cond_f8
    if-lt v13, v8, :cond_11c

    .line 154
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object v4, v0

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v4, v16

    .line 157
    .local v4, formatArgs:[Ljava/lang/Object;
    const v16, 0x7f0d0107

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_dc

    .line 159
    .end local v4           #formatArgs:[Ljava/lang/Object;
    :cond_11c
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_dc

    .line 128
    nop

    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_8f
    .end packed-switch
.end method

.method public createLoader(Landroid/net/Uri;)Landroid/support/v4/content/Loader;
    .registers 12
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
    .line 98
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v7

    .line 99
    .local v7, account:Lcom/google/android/accounts/Account;
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_SUBSCRIPTIONS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v8

    .line 100
    .local v8, showAll:Z
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_SUBSCRIPTIONS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v9

    .line 101
    .local v9, sortAlpha:Z
    sget-object v3, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 102
    .local v3, projection:[Ljava/lang/String;
    if-eqz v8, :cond_29

    const/4 v0, 0x0

    move-object v4, v0

    .line 103
    .local v4, selection:Ljava/lang/String;
    :goto_1a
    const/4 v5, 0x0

    .line 104
    .local v5, selectionArgs:[Ljava/lang/String;
    if-eqz v9, :cond_2d

    const-string v0, "sort_key_alpha"

    move-object v6, v0

    .line 105
    .local v6, orderBy:Ljava/lang/String;
    :goto_20
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 102
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_29
    const-string v0, "unread_count != 0"

    move-object v4, v0

    goto :goto_1a

    .line 104
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :cond_2d
    const-string v0, "sort_key_manual"

    move-object v6, v0

    goto :goto_20
.end method

.method public createRenameDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 196
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getSubscriptionUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 197
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, title:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/reader/dialog/RenameSubscriptionDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public createUnsubscribeConfirmationDialog(Landroid/database/Cursor;)Landroid/support/v4/app/DialogFragment;
    .registers 5
    .parameter "cursor"

    .prologue
    .line 202
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getSubscriptionUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, title:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/reader/dialog/UnsubscribeConfirmationDialog;-><init>(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method public findStream(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "streamId"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 173
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    .line 174
    const/4 v1, 0x0

    .local v1, position:I
    :goto_7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 175
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v0

    .line 180
    .end local v1           #position:I
    :goto_19
    return-object v2

    .line 174
    .restart local v1       #position:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 180
    .end local v1           #position:I
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->getSubscriptionUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 168
    return-object v2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 111
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setCustomFaviconsEnabled(Z)V
    .registers 3
    .parameter "customFaviconsEnabled"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mCustomFaviconsEnabled:Z

    .line 85
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mDataValid:Z

    if-eqz v0, :cond_9

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_9
    return-void
.end method

.method public setShowUnreadCounts(Z)V
    .registers 3
    .parameter "showUnreadCounts"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mShowUnreadCounts:Z

    .line 92
    iget-boolean v0, p0, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->mDataValid:Z

    if-eqz v0, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/SubscriptionListAdapter;->notifyDataSetChanged()V

    .line 95
    :cond_9
    return-void
.end method
