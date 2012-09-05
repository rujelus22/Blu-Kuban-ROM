.class public Lcom/coremobility/integration/app/CM_VnotesContentProvider;
.super Landroid/content/ContentProvider;

# interfaces
.implements Lcom/coremobility/integration/app/k;


# static fields
.field private static final c:Landroid/content/UriMatcher;


# instance fields
.field private a:Lcom/coremobility/integration/b/d;

.field private b:Lcom/coremobility/integration/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0xb

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_no_delete_folder"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_no_delete_folder/#"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_inbox"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_join"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_list/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_query/*"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "search_suggest_query/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_guid"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_empty_directory/*"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_restore_to_inbx/*"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_external"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_external/#"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_external"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_external/#"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes_external"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "changes_external/#"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_join_external"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_list_external/*"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_delete_bulk_query_external/*"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_mime_guid_external"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.coremobility.provider"

    const-string v2, "vnotes_sdcard_mounted_external"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    iput-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    return-void
.end method

.method private a([Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17

    const-string v0, ""

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v0, 0x0

    :try_start_14
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_21} :catch_14a

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_147

    const/4 v0, 0x0

    :goto_27
    move v7, v0

    :goto_28
    if-eqz v8, :cond_1da

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1d7

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1d7

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    new-instance v4, Landroid/database/MatrixCursor;

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_5c
    const-string v0, "sender_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "out_timestamp"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v2, ""

    const-string v1, ""

    const/4 v3, 0x0

    invoke-static {v8}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v6

    if-eqz v6, :cond_98

    invoke-static {v6}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/integration/f/b;)Ljava/lang/String;

    move-result-object v1

    :cond_98
    const-string v6, "unknown@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1dd

    const/4 v3, 0x1

    move v6, v3

    :goto_a2
    if-eqz v0, :cond_159

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v3

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_f5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    const/4 v9, 0x3

    invoke-static {v11, v12, v9}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    aget-wide v11, v3, v9

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    invoke-static {v11, v12, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_113

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_106

    move-object v1, v5

    :cond_106
    if-eqz v6, :cond_14e

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_113
    :goto_113
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    const/4 v3, 0x1

    const-string v5, "_-1"

    aput-object v5, v0, v3

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x7f02007c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5c

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    :goto_146
    return-object v0

    :cond_147
    const/4 v0, 0x1

    goto/16 :goto_27

    :catch_14a
    move-exception v1

    move v7, v0

    goto/16 :goto_28

    :cond_14e
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_113

    :cond_159
    if-eqz v11, :cond_1ab

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_16b

    invoke-virtual {v0}, Lcom/coremobility/k/de;->c()J

    move-result-wide v2

    :cond_16b
    mul-int/lit16 v0, v11, 0x3e8

    int-to-long v12, v0

    invoke-static {v12, v13, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit16 v12, v11, 0x3e8

    int-to-long v12, v12

    const/4 v14, 0x3

    invoke-static {v12, v13, v14}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    invoke-static {v11, v12, v7}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " ("

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1ab
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    move-object v1, v5

    :cond_1bc
    if-eqz v6, :cond_1cb

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_113

    :cond_1cb
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_113

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_113

    :cond_1d7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1da
    const/4 v0, 0x0

    goto/16 :goto_146

    :cond_1dd
    move v6, v3

    goto/16 :goto_a2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    const/16 v6, 0x29

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_2d2

    const/16 v0, 0x1c

    const-string v2, "Unknown Uri For DELETE %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    return v1

    :sswitch_1d
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    :goto_25
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move v1, v0

    goto :goto_1c

    :sswitch_33
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    move v3, v1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    goto :goto_25

    :sswitch_3e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_89

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v3, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v5, v3, v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_25

    :cond_89
    const-string v1, ""

    goto :goto_74

    :sswitch_8c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_c2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v6, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v9, v5

    invoke-static/range {v4 .. v9}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;Z)I

    move-result v0

    goto/16 :goto_25

    :cond_d9
    const-string v1, ""

    goto :goto_c2

    :sswitch_dc
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes_mime"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_e6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_132

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_11c
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes_mime"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :cond_132
    const-string v2, ""

    goto :goto_11c

    :sswitch_135
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v2, "changes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_13f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_187

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_175
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const-string v3, "changes"

    invoke-static {v2, v1, v3, v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :cond_187
    const-string v0, ""

    goto :goto_175

    :sswitch_18a
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_196
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_1a2
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;I)I

    move-result v0

    goto/16 :goto_25

    :sswitch_1b2
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_1bc
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_208

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1f2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :cond_208
    const-string v2, ""

    goto :goto_1f2

    :sswitch_20b
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "vnotes_mime"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_215
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "record_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_261

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_24b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v4, "vnotes_mime"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v1, v4, v0, v2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :cond_261
    const-string v2, ""

    goto :goto_24b

    :sswitch_264
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v2, "changes"

    invoke-static {v0, v1, v2, v1, p2}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_26e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2a4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const-string v3, "changes"

    invoke-static {v2, v1, v3, v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :cond_2b6
    const-string v0, ""

    goto :goto_2a4

    :sswitch_2b9
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    :sswitch_2c5
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/k/b;->c(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_25

    nop

    :sswitch_data_2d2
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_dc
        0x5 -> :sswitch_e6
        0x6 -> :sswitch_135
        0x7 -> :sswitch_13f
        0x9 -> :sswitch_18a
        0xa -> :sswitch_196
        0xd -> :sswitch_1a2
        0xf -> :sswitch_33
        0x10 -> :sswitch_8c
        0x65 -> :sswitch_1b2
        0x66 -> :sswitch_1bc
        0x67 -> :sswitch_20b
        0x68 -> :sswitch_215
        0x69 -> :sswitch_264
        0x6a -> :sswitch_26e
        0x6c -> :sswitch_2b9
        0x6d -> :sswitch_2c5
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_2a

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    :goto_1c
    return-object v0

    :sswitch_1d
    const-string v0, "vnd.coremobility.cursor.vnotes/vnd.coremobility.vnotes"

    goto :goto_1c

    :sswitch_20
    const-string v0, "vnd.android.cursor.vnotes_mime/vnd.coremobility.vnotes"

    goto :goto_1c

    :sswitch_23
    const-string v0, "vnd.coremobility.cursor.vnotes/vnd.coremobility.vnotes"

    goto :goto_1c

    :sswitch_26
    const-string v0, "vnd.android.cursor.vnotes_mime/vnd.coremobility.vnotes"

    goto :goto_1c

    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_20
        0x5 -> :sswitch_20
        0x65 -> :sswitch_23
        0x66 -> :sswitch_23
        0x67 -> :sswitch_26
        0x68 -> :sswitch_26
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x0

    new-instance v0, Lcom/coremobility/integration/b/a;

    invoke-direct {v0}, Lcom/coremobility/integration/b/a;-><init>()V

    iput-object p2, v0, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_e4

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri For INSERT %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    :goto_26
    return-object v0

    :sswitch_27
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v3, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_39

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_26

    :cond_39
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_26

    :sswitch_4c
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_5e

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mimes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_26

    :cond_5e
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_26

    :sswitch_71
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->b(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_83

    const-string v0, "VNOTES PROVIDER - Insert Vnotes Mimes Inbox Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->k:Landroid/net/Uri;

    goto :goto_26

    :cond_83
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->n:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_26

    :sswitch_96
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v4, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_a9

    const-string v0, "VNOTES PROVIDER - (External) Insert Vnotes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    goto/16 :goto_26

    :cond_a9
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->x:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_26

    :sswitch_bd
    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v1, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Lcom/coremobility/integration/b/a;)I

    move-result v0

    if-gtz v0, :cond_d0

    const-string v0, "VNOTES PROVIDER - (External) Insert Vnotes Mimes Failed!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->w:Landroid/net/Uri;

    goto/16 :goto_26

    :cond_d0
    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->y:Landroid/net/Uri;

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_26

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_27
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_71
        0x65 -> :sswitch_96
        0x67 -> :sswitch_bd
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v5, 0x6

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/integration/b/d;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    :cond_15
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_23

    const/4 v1, 0x6

    const-string v2, "CM_VnotesContentProvider::onCreate DB Create failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    return v0

    :cond_23
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    :cond_2e
    iget-object v2, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_47

    const/4 v1, 0x6

    const-string v2, "CM_VnotesContentProvider::onCreate DB External Create failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3b} :catch_3c

    goto :goto_22

    :catch_3c
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_47
    const/4 v2, 0x6

    :try_start_48
    const-string v3, "VNOTES Provider DB Open..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_50} :catch_3c

    move v0, v1

    goto :goto_22
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    const/4 v1, 0x0

    const/16 v8, 0x1c

    const/4 v2, 0x0

    const/16 v7, 0x29

    const/4 v3, 0x1

    sget-object v0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_274

    const-string v0, "Uknown Uri For QUERY %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v8, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    :goto_1e
    return-object v0

    :sswitch_1f
    const-string v0, "vnotes"

    move-object v3, v0

    move v0, v2

    :goto_23
    if-eqz v0, :cond_251

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v3, p2, p3, p5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    :goto_2b
    if-eqz v0, :cond_259

    iget-object v0, v0, Lcom/coremobility/integration/b/b;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1e

    :sswitch_3b
    const-string v4, "vnotes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_73
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v2

    move-object v3, v4

    goto :goto_23

    :cond_7e
    const-string v0, ""

    goto :goto_73

    :sswitch_81
    const-string v0, "vnotes_mime"

    const-string p5, "file_order"

    move-object v3, v0

    move v0, v2

    goto :goto_23

    :sswitch_88
    const-string v4, "vnotes_mime"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "file_order"

    move v0, v2

    move-object v3, v4

    goto/16 :goto_23

    :cond_ce
    const-string v0, ""

    goto :goto_c0

    :sswitch_d1
    const-string v0, "changes"

    move-object v3, v0

    move v0, v2

    goto/16 :goto_23

    :sswitch_d7
    const-string v4, "changes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v2

    move-object v3, v4

    goto/16 :goto_23

    :cond_11b
    const-string v0, ""

    goto :goto_10f

    :sswitch_11e
    const-string v0, "vnotes,vnotes_mime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "file_order"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object v3, v0

    move v0, v2

    goto/16 :goto_23

    :sswitch_13d
    invoke-direct {p0, p4}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1e

    :sswitch_143
    const-string v0, "vnotes"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_23

    :sswitch_14a
    const-string v4, "vnotes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_182
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v3

    move-object v3, v4

    goto/16 :goto_23

    :cond_18e
    const-string v0, ""

    goto :goto_182

    :sswitch_191
    const-string v0, "vnotes_mime"

    const-string p5, "file_order"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_23

    :sswitch_19a
    const-string v4, "vnotes_mime"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "record_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p5, "file_order"

    move v0, v3

    move-object v3, v4

    goto/16 :goto_23

    :cond_1e0
    const-string v0, ""

    goto :goto_1d2

    :sswitch_1e3
    const-string v0, "changes"

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_23

    :sswitch_1ea
    const-string v4, "changes"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_222
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move v0, v3

    move-object v3, v4

    goto/16 :goto_23

    :cond_22e
    const-string v0, ""

    goto :goto_222

    :sswitch_231
    const-string v0, "vnotes,vnotes_mime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "file_order"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move v9, v3

    move-object v3, v0

    move v0, v9

    goto/16 :goto_23

    :cond_251
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v0, v3, p2, p3, p5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/integration/b/b;

    move-result-object v0

    goto/16 :goto_2b

    :cond_259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null cursor: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_1e

    :sswitch_data_274
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_3b
        0x3 -> :sswitch_81
        0x5 -> :sswitch_88
        0x6 -> :sswitch_d1
        0x7 -> :sswitch_d7
        0x8 -> :sswitch_11e
        0xb -> :sswitch_13d
        0x65 -> :sswitch_143
        0x66 -> :sswitch_14a
        0x67 -> :sswitch_191
        0x68 -> :sswitch_19a
        0x69 -> :sswitch_1e3
        0x6a -> :sswitch_1ea
        0x6b -> :sswitch_231
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11

    const/4 v0, 0x0

    new-instance v4, Lcom/coremobility/integration/b/a;

    invoke-direct {v4}, Lcom/coremobility/integration/b/a;-><init>()V

    iput-object p2, v4, Lcom/coremobility/integration/b/a;->a:Landroid/content/ContentValues;

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_204

    const/16 v0, 0x1c

    const-string v1, "Uknown Uri For UPDATE %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_23
    return v0

    :sswitch_24
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_23

    :sswitch_3c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x1

    const-string v2, "vnotes"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto :goto_2f

    :cond_8c
    const-string v0, ""

    goto :goto_76

    :sswitch_8f
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto :goto_2f

    :sswitch_9b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :cond_ec
    const-string v0, ""

    goto :goto_d5

    :sswitch_ef
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x1

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :sswitch_fc
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :sswitch_109
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :cond_15a
    const-string v0, ""

    goto :goto_143

    :sswitch_15d
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :sswitch_16a
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :cond_1bb
    const-string v0, ""

    goto :goto_1a4

    :sswitch_1be
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    const/4 v1, 0x0

    const-string v2, "vnotes_mime"

    const/4 v3, 0x0

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILcom/coremobility/integration/b/a;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    :sswitch_1cb
    const-string v1, "mounted"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_1e8

    iget-object v3, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-eqz v3, :cond_1e8

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/k/b;->b(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    goto/16 :goto_2f

    :cond_1e8
    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    if-nez v1, :cond_2f

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v1

    iput-object v1, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->b:Lcom/coremobility/integration/b/d;

    goto/16 :goto_2f

    :sswitch_1fb
    iget-object v0, p0, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->a:Lcom/coremobility/integration/b/d;

    invoke-static {v0, p3}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_2f

    nop

    :sswitch_data_204
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_8f
        0x5 -> :sswitch_9b
        0xc -> :sswitch_ef
        0xe -> :sswitch_1fb
        0x65 -> :sswitch_fc
        0x66 -> :sswitch_109
        0x67 -> :sswitch_15d
        0x68 -> :sswitch_16a
        0xc9 -> :sswitch_1be
        0xca -> :sswitch_1cb
    .end sparse-switch
.end method
