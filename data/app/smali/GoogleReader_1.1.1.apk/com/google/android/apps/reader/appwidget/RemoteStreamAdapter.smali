.class final Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;
.super Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;
.source "RemoteStreamAdapter.java"


# static fields
.field private static final COLUMN_DATE:I = 0x3

.field private static final COLUMN_ITEM_ID:I = 0x4

.field private static final COLUMN_READ:I = 0x5

.field private static final COLUMN_SOURCE:I = 0x2

.field private static final COLUMN_TITLE:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RemoteStreamAdapter"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mData:Landroid/net/Uri;

.field private final mLayout:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title_plaintext"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "source_title_plaintext"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "layout"
    .parameter "data"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/reader/appwidget/RemoteCursorAdapter;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    .line 62
    iput p2, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mLayout:I

    .line 63
    iput-object p3, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mData:Landroid/net/Uri;

    .line 64
    return-void
.end method

.method private static bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 140
    .local v0, spannable:Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 141
    return-object v0
.end method

.method private static getListItemBackground(Z)I
    .registers 3
    .parameter "unread"

    .prologue
    .line 118
    const/16 v0, 0xb

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_16

    .line 120
    if-eqz p0, :cond_12

    .line 121
    const v0, 0x7f020083

    .line 130
    :goto_11
    return v0

    .line 123
    :cond_12
    const v0, 0x7f020082

    goto :goto_11

    .line 127
    :cond_16
    if-eqz p0, :cond_1c

    .line 128
    const v0, 0x7f02000f

    goto :goto_11

    .line 130
    :cond_1c
    const v0, 0x7f02000e

    goto :goto_11
.end method


# virtual methods
.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, packageName:Ljava/lang/String;
    new-instance v1, Landroid/widget/RemoteViews;

    const v2, 0x1090003

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 13
    .parameter

    .prologue
    const v10, 0x7f0b0012

    const/4 v9, 0x1

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Landroid/widget/RemoteViews;

    iget v2, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mLayout:I

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 90
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 91
    const/4 v8, 0x5

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_69

    move v0, v9

    .line 92
    :goto_30
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v8

    packed-switch v8, :pswitch_data_78

    .line 98
    :goto_37
    iget-object v8, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5}, Lcom/google/android/apps/reader/appwidget/ReaderAppWidget;->formatDateTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    .line 99
    const v5, 0x7f0b0013

    if-eqz v0, :cond_46

    invoke-static {v2}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_46
    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f0b0015

    if-eqz v0, :cond_75

    invoke-static {v3}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->bold(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_52
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 101
    const v0, 0x7f0b0014

    invoke-virtual {v1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string v2, "item_id"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    invoke-virtual {v1, v10, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 107
    return-object v1

    .line 91
    :cond_69
    const/4 v0, 0x0

    goto :goto_30

    .line 94
    :pswitch_6b
    const-string v8, "setBackgroundResource"

    invoke-static {v0}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->getListItemBackground(Z)I

    move-result v9

    invoke-virtual {v1, v10, v8, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_37

    :cond_75
    move-object v0, v3

    .line 100
    goto :goto_52

    .line 92
    nop

    :pswitch_data_78
    .packed-switch 0x7f030045
        :pswitch_6b
    .end packed-switch
.end method

.method public onDataSetChanged()V
    .registers 8

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mData:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->requery(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    const/4 v0, 0x1

    .line 70
    new-instance v6, Lcom/google/android/apps/reader/appwidget/UriPermission;

    iget-object v2, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v2, v1, v0}, Lcom/google/android/apps/reader/appwidget/UriPermission;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 71
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/apps/reader/appwidget/UriPermission;->grantToUid(I)V

    .line 73
    :try_start_15
    iget-object v0, p0, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/appwidget/RemoteStreamAdapter;->changeCursor(Landroid/database/Cursor;)V
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_37
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_27} :catch_2b

    .line 78
    invoke-virtual {v6}, Lcom/google/android/apps/reader/appwidget/UriPermission;->revoke()V

    .line 80
    :goto_2a
    return-void

    .line 74
    :catch_2b
    move-exception v0

    .line 76
    :try_start_2c
    const-string v1, "RemoteStreamAdapter"

    const-string v2, "Grant URI permission failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 78
    invoke-virtual {v6}, Lcom/google/android/apps/reader/appwidget/UriPermission;->revoke()V

    goto :goto_2a

    :catchall_37
    move-exception v0

    invoke-virtual {v6}, Lcom/google/android/apps/reader/appwidget/UriPermission;->revoke()V

    throw v0
.end method
