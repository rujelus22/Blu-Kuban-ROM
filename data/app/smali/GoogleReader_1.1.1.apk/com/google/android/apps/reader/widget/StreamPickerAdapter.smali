.class public Lcom/google/android/apps/reader/widget/StreamPickerAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "StreamPickerAdapter.java"


# static fields
.field private static final COLUMN_ACCOUNT_NAME:I = 0x4

.field private static final COLUMN_ACCOUNT_TYPE:I = 0x5

.field private static final COLUMN_LABEL:I = 0x2

.field private static final COLUMN_STREAM_ID:I = 0x1

.field private static final COLUMN_SUBSCRIPTION_COUNT:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/4 v0, 0x6

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

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 63
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 64
    return-void
.end method

.method private bindIcon(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 8
    .parameter "view"
    .parameter "cursor"

    .prologue
    const v4, 0x7f02007b

    .line 135
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 136
    .local v0, icon:Landroid/widget/ImageView;
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, streamId:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 138
    .local v2, subscriptionCount:I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 140
    if-nez v2, :cond_29

    .line 141
    const v3, 0x7f02007d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    :goto_28
    return-void

    .line 143
    :cond_29
    const v3, 0x7f020020

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 145
    :cond_30
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->isSubscriptionOrWebFeed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 146
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 147
    :cond_3a
    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 148
    const v3, 0x7f020079

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28

    .line 150
    :cond_47
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_28
.end method

.method private bindText(Landroid/view/View;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 156
    const v2, 0x1020014

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, text1:Landroid/widget/TextView;
    const v2, 0x1020015

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, text2:Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getLabel(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method private static getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 199
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, accountName:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, accountType:Ljava/lang/String;
    new-instance v2, Lcom/google/android/accounts/Account;

    invoke-direct {v2, v0, v1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getLabel(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 112
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->isLocalized(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 113
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :goto_b
    return-object v1

    .line 115
    :cond_c
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, streamId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isReadingList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 117
    const v1, 0x7f0d010a

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 118
    :cond_1f
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 119
    const v1, 0x7f0d010b

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 120
    :cond_2d
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isMyStuff(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 121
    const v1, 0x7f0d010c

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 122
    :cond_3b
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isBroadcast(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 123
    const v1, 0x7f0d010d

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 124
    :cond_49
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isNotes(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 125
    const v1, 0x7f0d010e

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    .line 126
    :cond_57
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isFollowing(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 127
    const v1, 0x7f0d010f

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_b

    :cond_65
    move-object v1, v0

    .line 129
    goto :goto_b
.end method

.method private getText(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static isLocalized(Landroid/database/Cursor;)Z
    .registers 5
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 209
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, streamId:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, label:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v3

    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method private static isSubscriptionOrWebFeed(Ljava/lang/String;)Z
    .registers 2
    .parameter "streamId"

    .prologue
    .line 215
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
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 92
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->bindIcon(Landroid/view/View;Landroid/database/Cursor;)V

    .line 93
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->bindText(Landroid/view/View;Landroid/database/Cursor;)V

    .line 94
    return-void
.end method

.method public configureAppWidget(ILandroid/database/Cursor;)Z
    .registers 7
    .parameter "appWidgetId"
    .parameter "cursor"

    .prologue
    .line 163
    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, streamId:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getShortcutLabel(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, label:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0, v2, v1}, Lcom/google/android/apps/reader/preference/AppWidgetPreferences;->configure(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public createLoader(Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/support/v4/content/Loader;
    .registers 14
    .parameter "uri"
    .parameter "constraint"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v4, 0x0

    .line 68
    .local v4, selection:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 73
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, escapedConstraint:Ljava/lang/String;
    const-string v8, "(^1 LIKE (^2 || \'%\') OR ^1 LIKE (\'% \' || ^2 || \'%\'))"

    .line 75
    .local v8, template:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v9, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "label"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    aput-object v7, v9, v0

    .line 78
    .local v9, values:[Ljava/lang/CharSequence;
    invoke-static {v8, v9}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 80
    .end local v7           #escapedConstraint:Ljava/lang/String;
    .end local v8           #template:Ljava/lang/String;
    .end local v9           #values:[Ljava/lang/CharSequence;
    :cond_24
    const/4 v5, 0x0

    .line 81
    .local v5, selectionArgs:[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getShortcutIcon(Landroid/database/Cursor;)I
    .registers 6
    .parameter "cursor"

    .prologue
    const v3, 0x7f02002b

    .line 179
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, streamId:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 181
    .local v1, subscriptionCount:I
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isLabel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 182
    if-nez v1, :cond_19

    const v2, 0x7f02002e

    .line 189
    :goto_18
    return v2

    :cond_19
    move v2, v3

    .line 182
    goto :goto_18

    .line 184
    :cond_1b
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isStarred(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 185
    const v2, 0x7f02002c

    goto :goto_18

    .line 186
    :cond_25
    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isSubscription(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 187
    const v2, 0x7f02002d

    goto :goto_18

    :cond_2f
    move v2, v3

    .line 189
    goto :goto_18
.end method

.method public getShortcutIconResource(Landroid/database/Cursor;)Landroid/content/Intent$ShortcutIconResource;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getShortcutIcon(Landroid/database/Cursor;)I

    move-result v0

    .line 195
    .local v0, resId:I
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    return-object v1
.end method

.method public getShortcutLabel(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 170
    invoke-static {p1}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->isLocalized(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 171
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    :goto_b
    return-object v1

    .line 173
    :cond_c
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, streamId:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/apps/reader/res/ReaderResources;->getShortcutLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public newIntent(Ljava/lang/String;Landroid/database/Cursor;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-static {p2}, Lcom/google/android/apps/reader/widget/StreamPickerAdapter;->getAccount(Landroid/database/Cursor;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 98
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v3, Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    if-eqz v2, :cond_1e

    .line 102
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 104
    :cond_1e
    return-object v3
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
