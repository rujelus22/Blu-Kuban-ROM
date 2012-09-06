.class public LPk;
.super Ljava/lang/Object;
.source "ContactManagerImpl.java"

# interfaces
.implements LPj;


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)LPh;
    .registers 12
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v0, p0, LPk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v5

    const-string v3, "display_name"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string v5, "photo_id"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "lookup"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data1=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "is_super_primary DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 82
    :try_start_3f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 83
    const-string v0, "contact_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 84
    const-string v0, "display_name"

    invoke-static {v8, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string v0, "lookup"

    invoke-static {v8, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 87
    const-string v0, "photo_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 88
    new-instance v0, LPi;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, LPi;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V
    :try_end_78
    .catchall {:try_start_3f .. :try_end_78} :catchall_93

    .line 95
    :goto_78
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 97
    return-object v0

    .line 91
    :cond_7c
    :try_start_7c
    new-instance v0, LPi;

    const-wide/16 v1, 0x0

    const-string v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v0 .. v7}, LPi;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V
    :try_end_92
    .catchall {:try_start_7c .. :try_end_92} :catchall_93

    goto :goto_78

    .line 95
    :catchall_93
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ldx;)LPh;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 30
    sget-object v0, LPl;->a:[I

    invoke-virtual {p2}, Ldx;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_38

    .line 39
    invoke-direct {p0, p1}, LPk;->a(Ljava/lang/String;)LPh;

    move-result-object v0

    :goto_12
    return-object v0

    .line 32
    :pswitch_13
    new-instance v0, LPi;

    iget-object v3, p0, LPk;->a:Landroid/content/Context;

    sget v5, LcY;->default_scope_contact_name:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-wide v6, v1

    invoke-direct/range {v0 .. v7}, LPi;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V

    goto :goto_12

    .line 35
    :pswitch_23
    if-eqz p1, :cond_2e

    move-object v3, p1

    .line 37
    :goto_26
    new-instance v0, LPi;

    move-object v5, v4

    move-wide v6, v1

    invoke-direct/range {v0 .. v7}, LPi;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V

    goto :goto_12

    .line 35
    :cond_2e
    iget-object v0, p0, LPk;->a:Landroid/content/Context;

    sget v3, LcY;->domain_scope_contact_name:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    .line 30
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_13
        :pswitch_23
    .end packed-switch
.end method

.method public a()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LPh;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 45
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "contact_id"

    aput-object v0, v2, v1

    const-string v0, "display_name"

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v1, "photo_id"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "lookup"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 53
    iget-object v0, p0, LPk;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "data1 NOTNULL"

    const/4 v4, 0x0

    const-string v5, "UPPER(display_name), display_name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 57
    :goto_32
    :try_start_32
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 58
    const-string v0, "contact_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 59
    const-string v0, "display_name"

    invoke-static {v9, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    const-string v0, "lookup"

    invoke-static {v9, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    const-string v4, "data1"

    invoke-static {v9, v4}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 63
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 64
    const-string v0, "photo_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 65
    new-instance v0, LPi;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct/range {v0 .. v7}, LPi;-><init>(JLjava/lang/String;Ljava/util/List;Landroid/net/Uri;J)V

    .line 67
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_32 .. :try_end_7c} :catchall_7d

    goto :goto_32

    .line 70
    :catchall_7d
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_82
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 72
    return-object v8
.end method
