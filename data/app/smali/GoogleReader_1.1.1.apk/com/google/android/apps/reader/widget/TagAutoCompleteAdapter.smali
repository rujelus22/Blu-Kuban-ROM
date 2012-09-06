.class public Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "TagAutoCompleteAdapter.java"


# static fields
.field private static final FROM:[Ljava/lang/String; = null

.field private static final LAYOUT:I = 0x109000a

.field private static final TO:[I


# instance fields
.field private mAccount:Lcom/google/android/accounts/Account;

.field private final mContext:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "label"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->FROM:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [I

    const v1, 0x1020014

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->TO:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 8
    .parameter "context"

    .prologue
    .line 50
    const v2, 0x109000a

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->FROM:[Ljava/lang/String;

    sget-object v5, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->TO:[I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 51
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->mContext:Landroid/app/Activity;

    .line 52
    return-void
.end method


# virtual methods
.method public changeAccount(Lcom/google/android/accounts/Account;)V
    .registers 2
    .parameter "account"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->mAccount:Lcom/google/android/accounts/Account;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->notifyDataSetChanged()V

    .line 57
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 61
    if-eqz p1, :cond_d

    .line 62
    const-string v1, "label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 63
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .end local v0           #columnIndex:I
    :goto_c
    return-object v1

    :cond_d
    const-string v1, ""

    goto :goto_c
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 15
    .parameter "constraint"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 71
    iget-object v8, p0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->mAccount:Lcom/google/android/accounts/Account;

    if-nez v8, :cond_a

    move-object v8, v12

    .line 93
    :goto_9
    return-object v8

    .line 74
    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v8, v12

    .line 75
    goto :goto_9

    .line 79
    :cond_12
    iget-object v8, p0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v8}, Lcom/google/android/apps/reader/provider/ReaderContract$Tags;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, uri:Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v2, v10

    const-string v8, "label"

    aput-object v8, v2, v11

    .line 83
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "label LIKE ? AND id LIKE ?"

    .line 84
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    const-string v8, "%/label/%"

    aput-object v8, v4, v11

    .line 87
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v5, "label COLLATE NOCASE ASC"

    .line 89
    .local v5, sortOrder:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/reader/widget/TagAutoCompleteAdapter;->mContext:Landroid/app/Activity;

    .line 90
    .local v6, activity:Landroid/app/Activity;
    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 92
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {v6, v7}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    move-object v8, v7

    .line 93
    goto :goto_9
.end method
