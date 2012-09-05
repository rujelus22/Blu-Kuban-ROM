.class public Lcom/vlingo/client/typedrequests/provider/ContactSuggestionProvider;
.super Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;
.source "ContactSuggestionProvider.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "ContactSuggestionProvider"

.field private static final SCORE_CONTACTS:F = 0.5f


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "maxResults"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;-><init>(I)V

    .line 33
    return-void
.end method

.method private buildContacts(Landroid/database/Cursor;Ljava/util/ArrayList;ILandroid/content/Context;)V
    .registers 22
    .parameter "cur"
    .parameter
    .parameter "maxResults"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;I",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    invoke-static/range {p1 .. p1}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 90
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9c

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 91
    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 92
    .local v14, idxName:I
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 94
    .local v13, idxContactId:I
    :cond_22
    const-string v9, ""

    .line 95
    .local v9, photoUri:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 96
    .local v12, contactId:I
    int-to-long v1, v12

    move-object/from16 v0, p4

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ContactUtil;->getPhotoUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v16

    .line 97
    .local v16, photo:Landroid/net/Uri;
    if-eqz v16, :cond_37

    .line 98
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    .line 100
    :cond_37
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3f

    .line 101
    const-string v9, "android.resource://com.vlingo.client.samsung/2130837664"

    .line 103
    :cond_3f
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v12

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, actionString:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, name:Ljava/lang/String;
    const-string v8, ""

    .line 108
    .local v8, company:Ljava/lang/String;
    const-string v4, "contact_id = ? AND mimetype = ?"

    .line 109
    .local v4, orgWhere:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v5, v1

    .line 112
    .local v5, orgWhereParams:[Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 114
    .local v15, orgCur:Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 115
    const-string v1, "data1"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 117
    :cond_7f
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 119
    new-instance v6, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    const/high16 v11, 0x3f00

    invoke-direct/range {v6 .. v11}, Lcom/vlingo/client/typedrequests/provider/Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)V

    .line 120
    .local v6, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v1, v0, :cond_22

    .line 124
    .end local v4           #orgWhere:Ljava/lang/String;
    .end local v5           #orgWhereParams:[Ljava/lang/String;
    .end local v6           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #company:Ljava/lang/String;
    .end local v9           #photoUri:Ljava/lang/String;
    .end local v10           #actionString:Ljava/lang/String;
    .end local v12           #contactId:I
    .end local v13           #idxContactId:I
    .end local v14           #idxName:I
    .end local v15           #orgCur:Landroid/database/Cursor;
    .end local v16           #photo:Landroid/net/Uri;
    :cond_9c
    return-void
.end method


# virtual methods
.method public bridge synthetic executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/typedrequests/provider/SuggestionProvider;->executeQuery(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string v0, "ContactSuggestionProvider"

    return-object v0
.end method

.method protected query(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, cur:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    const/4 v0, 0x4

    :try_start_7
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "last_time_contacted"

    aput-object v3, v2, v0

    .line 54
    .local v2, projection:[Ljava/lang/String;
    invoke-static {p2}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 56
    const/4 p3, 0x2

    .line 57
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, uri:Landroid/net/Uri;
    :goto_38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "display_name <> \'\' AND in_visible_group=1"

    const/4 v4, 0x0

    const-string v5, "last_time_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    invoke-direct {p0, v6, v7, p3, p1}, Lcom/vlingo/client/typedrequests/provider/ContactSuggestionProvider;->buildContacts(Landroid/database/Cursor;Ljava/util/ArrayList;ILandroid/content/Context;)V
    :try_end_48
    .catchall {:try_start_7 .. :try_end_48} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_48} :catch_68

    .line 82
    if-eqz v6, :cond_4d

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_4d
    :goto_4d
    return-object v7

    .line 61
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_4e
    const/4 p3, 0x2

    .line 62
    :try_start_4f
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "limit"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_66
    .catchall {:try_start_4f .. :try_end_66} :catchall_6f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_66} :catch_68

    move-result-object v1

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_38

    .line 76
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :catch_68
    move-exception v0

    .line 82
    if-eqz v6, :cond_4d

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4d

    .line 82
    :catchall_6f
    move-exception v0

    if-eqz v6, :cond_75

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_75
    throw v0
.end method
