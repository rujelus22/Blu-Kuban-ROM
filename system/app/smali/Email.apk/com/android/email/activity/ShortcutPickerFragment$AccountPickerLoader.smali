.class final Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;
.super Landroid/content/CursorLoader;
.source "ShortcutPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ShortcutPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountPickerLoader"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 121
    invoke-direct/range {p0 .. p6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private addCombinedAccountRow(Landroid/database/MatrixCursor;I)V
    .registers 18
    .parameter "cursor"
    .parameter "accountCount"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 144
    .local v3, context:Landroid/content/Context;
    new-instance v1, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 145
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    const-wide/high16 v11, 0x1000

    iput-wide v11, v1, Lcom/android/emailcommon/provider/Account;->mId:J

    .line 146
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 147
    .local v7, res:Landroid/content/res/Resources;
    const v11, 0x7f0c0004

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move/from16 v0, p2

    invoke-virtual {v7, v11, v0, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, countString:Ljava/lang/String;
    const v11, 0x7f080045

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    invoke-virtual {v7, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v10

    .line 151
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 152
    .local v8, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_41
    if-ge v5, v6, :cond_72

    aget-object v9, v2, v5

    .line 154
    .local v9, rowName:Ljava/lang/String;
    const-string v11, "_id"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    .line 155
    const-wide/high16 v11, 0x1000

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 152
    :goto_56
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 157
    :cond_59
    const-string v11, "isDefault"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 158
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_56

    .line 161
    :cond_6a
    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_56

    .line 163
    .end local v9           #rowName:Ljava/lang/String;
    :cond_72
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 126
    invoke-super {p0}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v2

    .line 127
    .local v2, parentCursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 130
    .local v1, cursorCount:I
    if-le v1, v6, :cond_25

    .line 132
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;->getProjection()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 133
    .local v0, allAccountCursor:Landroid/database/MatrixCursor;
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;->addCombinedAccountRow(Landroid/database/MatrixCursor;I)V

    .line 134
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 138
    .end local v0           #allAccountCursor:Landroid/database/MatrixCursor;
    .local v3, returnCursor:Landroid/database/Cursor;
    :goto_24
    return-object v3

    .line 136
    .end local v3           #returnCursor:Landroid/database/Cursor;
    :cond_25
    move-object v3, v2

    .restart local v3       #returnCursor:Landroid/database/Cursor;
    goto :goto_24
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/email/activity/ShortcutPickerFragment$AccountPickerLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
