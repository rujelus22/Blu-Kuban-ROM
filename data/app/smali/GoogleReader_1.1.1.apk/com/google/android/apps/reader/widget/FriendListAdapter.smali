.class public Lcom/google/android/apps/reader/widget/FriendListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/FriendListAdapter$1;
    }
.end annotation


# static fields
.field private static final COLUMN_ACCOUNT_NAME:I = 0x7

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x8

.field private static final COLUMN_DISPLAY_NAME:I = 0x2

.field private static final COLUMN_EMAIL_ADDRESS:I = 0x6

.field private static final COLUMN_MAX_UNREAD_COUNT:I = 0x5

.field private static final COLUMN_PHOTO_URI:I = 0x1

.field private static final COLUMN_STREAM:I = 0x3

.field private static final COLUMN_UNREAD_COUNT:I = 0x4

.field private static final ORDER_ALPHA:Ljava/lang/String; = "display_name COLLATE NOCASE ASC"

.field private static final ORDER_DATE:Ljava/lang/String; = "newest_item_timestamp DESC"

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mImageLoader:Lcom/google/android/imageloader/ImageLoader;

.field private mShowUnreadCounts:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "stream"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "max_unread_count"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 79
    invoke-static {p1}, Lcom/google/android/imageloader/ImageLoader;->get(Landroid/content/Context;)Lcom/google/android/imageloader/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    .line 80
    return-void
.end method

.method private static getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 171
    const/4 v2, 0x7

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, accountName:Ljava/lang/String;
    const/16 v2, 0x8

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 115
    const/4 v15, 0x1

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 116
    .local v9, photoUri:Ljava/lang/String;
    const/4 v15, 0x3

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, streamId:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, label:Ljava/lang/String;
    const/4 v15, 0x6

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, emailAddress:Ljava/lang/String;
    const/4 v15, 0x4

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 120
    .local v14, unreadCount:I
    const/4 v15, 0x5

    move-object/from16 v0, p3

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 121
    .local v8, maxUnreadCount:I
    const v15, 0x1020006

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/reader/widget/ContactView;

    .line 122
    .local v6, icon:Lcom/google/android/apps/reader/widget/ContactView;
    const v15, 0x1020014

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 123
    .local v12, text1:Landroid/widget/TextView;
    const v15, 0x1020015

    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 125
    .local v13, text2:Landroid/widget/TextView;
    if-eqz v9, :cond_b9

    .line 129
    sget-object v15, Lcom/google/android/apps/reader/widget/FriendListAdapter$1;->$SwitchMap$com$google$android$imageloader$ImageLoader$BindResult:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mImageLoader:Lcom/google/android/imageloader/ImageLoader;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/imageloader/ImageLoader;->bind(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;)Lcom/google/android/imageloader/ImageLoader$BindResult;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/imageloader/ImageLoader$BindResult;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_e6

    .line 138
    :goto_71
    invoke-virtual {v6, v4}, Lcom/google/android/apps/reader/widget/ContactView;->assignContactFromEmail(Ljava/lang/String;)V

    .line 141
    const v15, 0x1030042

    move-object v0, v12

    move-object/from16 v1, p2

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 142
    const v15, 0x1030042

    move-object v0, v13

    move-object/from16 v1, p2

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 145
    if-eqz v14, :cond_c0

    const/4 v15, 0x1

    move v11, v15

    .line 146
    .local v11, style:I
    :goto_8c
    invoke-virtual {v12}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v12, v15, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 147
    invoke-virtual {v13}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v13, v15, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mShowUnreadCounts:Z

    move v15, v0

    if-eqz v15, :cond_ac

    if-eqz v14, :cond_ac

    invoke-static {v10}, Lcom/google/android/apps/reader/provider/ReaderStream;->hasReadState(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_c3

    .line 152
    :cond_ac
    const-string v15, ""

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :goto_b1
    return-void

    .line 132
    .end local v11           #style:I
    :pswitch_b2
    const v15, 0x7f020028

    invoke-virtual {v6, v15}, Lcom/google/android/apps/reader/widget/ContactView;->setImageResource(I)V

    goto :goto_71

    .line 136
    :cond_b9
    const v15, 0x7f020028

    invoke-virtual {v6, v15}, Lcom/google/android/apps/reader/widget/ContactView;->setImageResource(I)V

    goto :goto_71

    .line 145
    :cond_c0
    const/4 v15, 0x0

    move v11, v15

    goto :goto_8c

    .line 153
    .restart local v11       #style:I
    :cond_c3
    if-lt v14, v8, :cond_de

    .line 154
    const/4 v15, 0x1

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v15

    .line 157
    .local v5, formatArgs:[Ljava/lang/Object;
    const v15, 0x7f0d0107

    move-object/from16 v0, p2

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b1

    .line 159
    .end local v5           #formatArgs:[Ljava/lang/Object;
    :cond_de
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b1

    .line 129
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_b2
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
    .line 97
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v7

    .line 98
    .local v7, account:Lcom/google/android/accounts/Account;
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SHOW_ALL_FRIENDS:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v8

    .line 99
    .local v8, showAll:Z
    sget-object v0, Lcom/google/android/apps/reader/preference/ReaderPreference;->SORT_FRIENDS_ALPHA:Lcom/google/android/apps/reader/preference/ReaderPreference;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/google/android/apps/reader/preference/ReaderPreference;->getBoolean(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z

    move-result v9

    .line 100
    .local v9, sortAlpha:Z
    sget-object v3, Lcom/google/android/apps/reader/widget/FriendListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 101
    .local v3, projection:[Ljava/lang/String;
    if-eqz v8, :cond_29

    const/4 v0, 0x0

    move-object v4, v0

    .line 102
    .local v4, selection:Ljava/lang/String;
    :goto_1a
    const/4 v5, 0x0

    .line 103
    .local v5, selectionArgs:[Ljava/lang/String;
    if-eqz v9, :cond_2d

    const-string v0, "display_name COLLATE NOCASE ASC"

    move-object v6, v0

    .line 104
    .local v6, orderBy:Ljava/lang/String;
    :goto_20
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mContext:Landroid/content/Context;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 101
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_29
    const-string v0, "unread_count != 0"

    move-object v4, v0

    goto :goto_1a

    .line 103
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    :cond_2d
    const-string v0, "newest_item_timestamp DESC"

    move-object v6, v0

    goto :goto_20
.end method

.method public findStream(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5
    .parameter "streamId"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 178
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1d

    .line 179
    const/4 v1, 0x0

    .local v1, position:I
    :goto_7
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 180
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move-object v2, v0

    .line 185
    .end local v1           #position:I
    :goto_19
    return-object v2

    .line 179
    .restart local v1       #position:I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 185
    .end local v1           #position:I
    :cond_1d
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public newStreamIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 88
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 109
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 110
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030015

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public setShowUnreadCounts(Z)V
    .registers 3
    .parameter "showUnreadCounts"

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/google/android/apps/reader/widget/FriendListAdapter;->mShowUnreadCounts:Z

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/FriendListAdapter;->notifyDataSetChanged()V

    .line 168
    :cond_b
    return-void
.end method
