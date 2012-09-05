.class public final Lcom/coremobility/integration/f/a;
.super Ljava/lang/Object;


# static fields
.field protected static A:I

.field protected static B:Ljava/lang/String;

.field protected static C:[Lcom/coremobility/integration/f/c;

.field protected static D:[Lcom/coremobility/integration/f/e;

.field protected static E:[Lcom/coremobility/integration/f/f;

.field protected static F:[Lcom/coremobility/integration/f/g;

.field protected static G:[Lcom/coremobility/integration/f/d;

.field private static H:Lcom/coremobility/integration/f/a;

.field protected static a:Ljava/lang/String;

.field protected static b:Ljava/lang/String;

.field protected static c:Ljava/lang/String;

.field protected static d:Ljava/lang/String;

.field protected static final e:[Ljava/lang/String;

.field protected static final f:[Ljava/lang/String;

.field protected static final g:[Ljava/lang/String;

.field protected static final h:[Ljava/lang/String;

.field protected static final i:[Ljava/lang/String;

.field protected static final j:[Ljava/lang/String;

.field protected static final k:[Ljava/lang/String;

.field protected static final l:[Ljava/lang/String;

.field protected static final m:[Ljava/lang/String;

.field protected static final n:[Ljava/lang/String;

.field protected static o:I

.field protected static final p:[Ljava/lang/String;

.field protected static final q:[Ljava/lang/String;

.field protected static final r:[Ljava/lang/String;

.field protected static final s:[Ljava/lang/String;

.field protected static final t:[Ljava/lang/String;

.field protected static final u:[Ljava/lang/String;

.field protected static final v:[Ljava/lang/String;

.field protected static final w:[Ljava/lang/String;

.field protected static final x:[Ljava/lang/String;

.field protected static final y:[Ljava/lang/String;

.field protected static z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v0, "action"

    sput-object v0, Lcom/coremobility/integration/f/a;->a:Ljava/lang/String;

    const-string v0, "pbtype"

    sput-object v0, Lcom/coremobility/integration/f/a;->b:Ljava/lang/String;

    const-string v0, "entrytype"

    sput-object v0, Lcom/coremobility/integration/f/a;->c:Ljava/lang/String;

    const-string v0, "entryid"

    sput-object v0, Lcom/coremobility/integration/f/a;->d:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/integration/f/a;->e:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "number_key"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/integration/f/a;->f:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "company"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->g:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "company"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/integration/f/a;->h:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "kind"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "isprimary"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->i:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "kind"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v3

    const-string v1, "label"

    aput-object v1, v0, v4

    const-string v1, "isprimary"

    aput-object v1, v0, v6

    const-string v1, "data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->j:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "group_id"

    aput-object v1, v0, v3

    const-string v1, "person"

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->k:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "group_id"

    aput-object v1, v0, v5

    const-string v1, "person"

    aput-object v1, v0, v3

    sput-object v0, Lcom/coremobility/integration/f/a;->l:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->m:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "should_sync"

    aput-object v1, v0, v6

    sput-object v0, Lcom/coremobility/integration/f/a;->n:[Ljava/lang/String;

    sput v5, Lcom/coremobility/integration/f/a;->o:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v6

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->p:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v6

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "extra_group"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->q:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "notes"

    aput-object v1, v0, v4

    const-string v1, "starred"

    aput-object v1, v0, v6

    const-string v1, "send_to_voicemail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "custom_ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sync_server_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->r:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/integration/f/a;->s:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v3

    sput-object v0, Lcom/coremobility/integration/f/a;->t:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    const-string v1, "number_key"

    aput-object v1, v0, v3

    sput-object v0, Lcom/coremobility/integration/f/a;->u:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/integration/f/a;->v:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/coremobility/integration/f/a;->w:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "is_primary"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/integration/f/a;->x:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "is_primary"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/integration/f/a;->y:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/f/a;->z:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/f/a;->H:Lcom/coremobility/integration/f/a;

    const/4 v0, -0x1

    sput v0, Lcom/coremobility/integration/f/a;->A:I

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/f/a;->B:Ljava/lang/String;

    new-array v0, v6, [Lcom/coremobility/integration/f/c;

    new-instance v1, Lcom/coremobility/integration/f/c;

    const-string v2, "sdk"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/integration/f/c;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/f/c;

    const-string v2, "HERO200"

    invoke-direct {v1, v2, v4}, Lcom/coremobility/integration/f/c;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/f/c;

    const-string v2, "SPH-M900"

    invoke-direct {v1, v2, v6}, Lcom/coremobility/integration/f/c;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->C:[Lcom/coremobility/integration/f/c;

    new-array v0, v6, [Lcom/coremobility/integration/f/e;

    new-instance v1, Lcom/coremobility/integration/f/e;

    sget-object v2, Lcom/coremobility/integration/f/a;->p:[Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/coremobility/integration/f/e;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/f/e;

    sget-object v2, Lcom/coremobility/integration/f/a;->q:[Ljava/lang/String;

    invoke-direct {v1, v4, v2}, Lcom/coremobility/integration/f/e;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/f/e;

    sget-object v2, Lcom/coremobility/integration/f/a;->r:[Ljava/lang/String;

    invoke-direct {v1, v6, v2}, Lcom/coremobility/integration/f/e;-><init>(I[Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->D:[Lcom/coremobility/integration/f/e;

    new-array v0, v6, [Lcom/coremobility/integration/f/f;

    new-instance v1, Lcom/coremobility/integration/f/f;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/coremobility/integration/f/f;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/f/f;

    const-string v2, "extra_group"

    invoke-direct {v1, v4, v2}, Lcom/coremobility/integration/f/f;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/f/f;

    const-string v2, "sync_server_id"

    invoke-direct {v1, v6, v2}, Lcom/coremobility/integration/f/f;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->E:[Lcom/coremobility/integration/f/f;

    new-array v0, v6, [Lcom/coremobility/integration/f/g;

    new-instance v1, Lcom/coremobility/integration/f/g;

    const-string v2, "Google"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/integration/f/g;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/f/g;

    const-string v2, "Exchange"

    invoke-direct {v1, v2, v4}, Lcom/coremobility/integration/f/g;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/f/g;

    const-string v2, "HtcPC"

    invoke-direct {v1, v2, v6}, Lcom/coremobility/integration/f/g;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/integration/f/a;->F:[Lcom/coremobility/integration/f/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/coremobility/integration/f/d;

    new-instance v1, Lcom/coremobility/integration/f/d;

    const-string v2, "0"

    invoke-direct {v1, v4, v2, v3}, Lcom/coremobility/integration/f/d;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/integration/f/d;

    const-string v2, "1"

    invoke-direct {v1, v4, v2, v4}, Lcom/coremobility/integration/f/d;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/integration/f/d;

    const-string v2, "2"

    invoke-direct {v1, v4, v2, v6}, Lcom/coremobility/integration/f/d;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/integration/f/d;

    const-string v2, "100"

    invoke-direct {v1, v6, v2, v3}, Lcom/coremobility/integration/f/d;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/integration/f/d;

    const-string v2, "101"

    invoke-direct {v1, v6, v2, v4}, Lcom/coremobility/integration/f/d;-><init>(ILjava/lang/String;I)V

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/integration/f/a;->G:[Lcom/coremobility/integration/f/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;ILcom/coremobility/integration/f/b;)I
    .registers 13

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/coremobility/integration/f/b;->e:Z

    if-eqz p0, :cond_8

    array-length v0, p0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x7

    :goto_9
    return v0

    :cond_a
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-wide/16 v7, 0x0

    const/16 v2, 0x1e

    if-ne p1, v2, :cond_d8

    const/4 v1, 0x0

    move-object v6, v0

    move v9, v1

    :goto_15
    :try_start_15
    array-length v0, p0

    if-ge v9, v0, :cond_53

    aget-object v0, p0, v9

    if-eqz v0, :cond_19a

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    aget-object v1, p0, v9

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/coremobility/integration/f/a;->x:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_38} :catch_191

    move-result-object v0

    if-eqz v0, :cond_45

    :try_start_3b
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_54

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_4a

    const/4 v0, 0x0

    :cond_45
    :goto_45
    add-int/lit8 v1, v9, 0x1

    move-object v6, v0

    move v9, v1

    goto :goto_15

    :catch_4a
    move-exception v1

    move-object v6, v0

    :goto_4c
    if-eqz v6, :cond_51

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    const/4 v0, 0x7

    goto :goto_9

    :cond_53
    move-object v0, v6

    :cond_54
    if-nez v0, :cond_58

    const/4 v0, 0x7

    goto :goto_9

    :cond_58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_197

    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data2"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "is_primary"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v5, "data3"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p2, Lcom/coremobility/integration/f/b;->d:J

    packed-switch v8, :pswitch_data_19e

    const/4 v1, 0x4

    :goto_96
    iput v1, p2, Lcom/coremobility/integration/f/b;->g:I

    iget v8, p2, Lcom/coremobility/integration/f/b;->g:I

    const/4 v1, 0x1

    if-ne v7, v1, :cond_d6

    const/4 v1, 0x1

    :goto_9e
    or-int/2addr v1, v8

    iput v1, p2, Lcom/coremobility/integration/f/b;->g:I

    iput-object v5, p2, Lcom/coremobility/integration/f/b;->b:Ljava/lang/String;

    iput-object v6, p2, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    move-wide v1, v2

    :goto_a6
    move-wide v7, v1

    move v1, v4

    :cond_a8
    :goto_a8
    if-eqz v1, :cond_187

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/coremobility/integration/f/b;->e:Z

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p2, Lcom/coremobility/integration/f/b;->c:Landroid/net/Uri;

    const/4 v1, 0x1

    iput v1, p2, Lcom/coremobility/integration/f/b;->f:I

    if-eqz v0, :cond_bd

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_bd
    const/4 v0, 0x0

    goto/16 :goto_9

    :pswitch_c0
    const/4 v1, 0x2

    goto :goto_96

    :pswitch_c2
    const/4 v1, 0x4

    goto :goto_96

    :pswitch_c4
    const/16 v1, 0x8

    goto :goto_96

    :pswitch_c7
    const/16 v1, 0x28

    goto :goto_96

    :pswitch_ca
    const/16 v1, 0x22

    goto :goto_96

    :pswitch_cd
    const/16 v1, 0x10

    goto :goto_96

    :pswitch_d0
    const/16 v1, 0x40

    goto :goto_96

    :pswitch_d3
    const/16 v1, 0x2000

    goto :goto_96

    :cond_d6
    const/4 v1, 0x0

    goto :goto_9e

    :cond_d8
    const/16 v2, 0x8

    if-ne p1, v2, :cond_a8

    const/4 v1, 0x0

    move-object v6, v0

    move v9, v1

    :goto_df
    :try_start_df
    array-length v0, p0

    if-ge v9, v0, :cond_122

    aget-object v0, p0, v9

    if-eqz v0, :cond_194

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    aget-object v1, p0, v9

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/coremobility/integration/f/a;->y:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_106} :catch_18f

    move-result-object v0

    if-eqz v0, :cond_113

    :try_start_109
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_123

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_118

    const/4 v0, 0x0

    :cond_113
    :goto_113
    add-int/lit8 v1, v9, 0x1

    move-object v6, v0

    move v9, v1

    goto :goto_df

    :catch_118
    move-exception v1

    move-object v6, v0

    :goto_11a
    if-eqz v6, :cond_11f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_11f
    const/4 v0, 0x7

    goto/16 :goto_9

    :cond_122
    move-object v0, v6

    :cond_123
    if-nez v0, :cond_128

    const/4 v0, 0x7

    goto/16 :goto_9

    :cond_128
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_177

    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "is_primary"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "data3"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "display_name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v7, v1

    iput-wide v7, p2, Lcom/coremobility/integration/f/b;->d:J

    packed-switch v3, :pswitch_data_1b2

    const/16 v1, 0x40

    :goto_168
    iput v1, p2, Lcom/coremobility/integration/f/b;->g:I

    iget v3, p2, Lcom/coremobility/integration/f/b;->g:I

    const/4 v1, 0x1

    if-ne v4, v1, :cond_185

    const/4 v1, 0x1

    :goto_170
    or-int/2addr v1, v3

    iput v1, p2, Lcom/coremobility/integration/f/b;->g:I

    iput-object v5, p2, Lcom/coremobility/integration/f/b;->b:Ljava/lang/String;

    iput-object v6, p2, Lcom/coremobility/integration/f/b;->a:Ljava/lang/String;

    :cond_177
    move v1, v2

    goto/16 :goto_a8

    :pswitch_17a
    const/4 v1, 0x2

    goto :goto_168

    :pswitch_17c
    const/16 v1, 0x8

    goto :goto_168

    :pswitch_17f
    const/16 v1, 0x2000

    goto :goto_168

    :pswitch_182
    const/16 v1, 0x40

    goto :goto_168

    :cond_185
    const/4 v1, 0x0

    goto :goto_170

    :cond_187
    if-eqz v0, :cond_18c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_18c
    const/4 v0, 0x7

    goto/16 :goto_9

    :catch_18f
    move-exception v0

    goto :goto_11a

    :catch_191
    move-exception v0

    goto/16 :goto_4c

    :cond_194
    move-object v0, v6

    goto/16 :goto_113

    :cond_197
    move-wide v1, v7

    goto/16 :goto_a6

    :cond_19a
    move-object v0, v6

    goto/16 :goto_45

    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_c0
        :pswitch_c2
        :pswitch_c4
        :pswitch_c7
        :pswitch_ca
        :pswitch_cd
        :pswitch_d0
    .end packed-switch

    :pswitch_data_1b2
    .packed-switch 0x0
        :pswitch_17f
        :pswitch_17a
        :pswitch_17c
        :pswitch_182
    .end packed-switch
.end method

.method public static a()Lcom/coremobility/integration/f/a;
    .registers 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/integration/f/a;->H:Lcom/coremobility/integration/f/a;

    if-nez v0, :cond_6f

    new-instance v0, Lcom/coremobility/integration/f/a;

    invoke-direct {v0}, Lcom/coremobility/integration/f/a;-><init>()V

    sput-object v0, Lcom/coremobility/integration/f/a;->H:Lcom/coremobility/integration/f/a;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/a;->d(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_75

    move v0, v1

    :goto_1a
    sget-object v4, Lcom/coremobility/integration/f/a;->C:[Lcom/coremobility/integration/f/c;

    array-length v4, v4

    if-ge v0, v4, :cond_75

    sget-object v4, Lcom/coremobility/integration/f/a;->C:[Lcom/coremobility/integration/f/c;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/coremobility/integration/f/c;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_72

    sget-object v2, Lcom/coremobility/integration/f/a;->C:[Lcom/coremobility/integration/f/c;

    aget-object v0, v2, v0

    iget v0, v0, Lcom/coremobility/integration/f/c;->b:I

    :goto_31
    sput v0, Lcom/coremobility/integration/f/a;->A:I

    move v2, v1

    :goto_34
    sget-object v4, Lcom/coremobility/integration/f/a;->D:[Lcom/coremobility/integration/f/e;

    array-length v4, v4

    if-ge v2, v4, :cond_7a

    sget-object v4, Lcom/coremobility/integration/f/a;->D:[Lcom/coremobility/integration/f/e;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/coremobility/integration/f/e;->a:I

    if-ne v4, v0, :cond_77

    sget-object v0, Lcom/coremobility/integration/f/a;->D:[Lcom/coremobility/integration/f/e;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/coremobility/integration/f/e;->b:[Ljava/lang/String;

    :goto_47
    sput-object v0, Lcom/coremobility/integration/f/a;->z:[Ljava/lang/String;

    if-nez v0, :cond_58

    const/16 v0, 0x22

    const-string v2, "pb projection not found"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/integration/f/a;->p:[Ljava/lang/String;

    sput-object v0, Lcom/coremobility/integration/f/a;->z:[Ljava/lang/String;

    :cond_58
    sget v0, Lcom/coremobility/integration/f/a;->A:I

    :goto_5a
    sget-object v2, Lcom/coremobility/integration/f/a;->E:[Lcom/coremobility/integration/f/f;

    array-length v2, v2

    if-ge v1, v2, :cond_6d

    sget-object v2, Lcom/coremobility/integration/f/a;->E:[Lcom/coremobility/integration/f/f;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/coremobility/integration/f/f;->a:I

    if-ne v2, v0, :cond_7c

    sget-object v0, Lcom/coremobility/integration/f/a;->E:[Lcom/coremobility/integration/f/f;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/coremobility/integration/f/f;->b:Ljava/lang/String;

    :cond_6d
    sput-object v3, Lcom/coremobility/integration/f/a;->B:Ljava/lang/String;

    :cond_6f
    sget-object v0, Lcom/coremobility/integration/f/a;->H:Lcom/coremobility/integration/f/a;

    return-object v0

    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_75
    const/4 v0, -0x1

    goto :goto_31

    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_7a
    move-object v0, v3

    goto :goto_47

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a
.end method
