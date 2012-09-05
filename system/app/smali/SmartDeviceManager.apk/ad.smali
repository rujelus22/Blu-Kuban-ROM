.class public final Lad;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Ljava/util/TimeZone;


# instance fields
.field private h:Landroid/content/Context;

.field private i:Lw;

.field private j:Landroid/database/ContentObserver;

.field private k:Landroid/database/ContentObserver;

.field private l:Landroid/database/ContentObserver;

.field private m:J

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    sput-object v0, Lad;->a:Landroid/net/Uri;

    const-string v1, "sent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lad;->b:Landroid/net/Uri;

    .line 43
    sget-object v0, Lad;->a:Landroid/net/Uri;

    const-string v1, "inbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lad;->c:Landroid/net/Uri;

    .line 45
    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 46
    sput-object v0, Lad;->d:Landroid/net/Uri;

    const-string v1, "inbox"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lad;->e:Landroid/net/Uri;

    .line 47
    sget-object v0, Lad;->d:Landroid/net/Uri;

    const-string v1, "sent"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lad;->f:Landroid/net/Uri;

    .line 392
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lad;->g:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lad;->n:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lad;->h:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    iput-object v0, p0, Lad;->i:Lw;

    .line 62
    invoke-virtual {p0}, Lad;->a()V

    .line 63
    return-void
.end method

.method static synthetic a(Lad;)J
    .registers 3
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lad;->m:J

    return-wide v0
.end method

.method private a(Landroid/net/Uri;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 197
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v6

    .line 198
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "date DESC"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 202
    const-wide/16 v1, 0x0

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 204
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 206
    :cond_23
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 208
    iget-object v3, p0, Lad;->n:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 210
    return-void
.end method

.method static synthetic b(Lad;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Landroid/database/ContentObserver;
    .registers 5
    .parameter

    .prologue
    .line 216
    new-instance v0, Lad$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p1}, Lad$2;-><init>(Lad;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 225
    iget-object v1, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 228
    return-object v0
.end method

.method static synthetic c(Lad;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lad;->n:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 67
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->e:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->h:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->i:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 71
    :cond_39
    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v6

    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lad;->b:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lad;->m:J

    :goto_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lad;->a:Landroid/net/Uri;

    new-instance v2, Lad$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lad$1;-><init>(Lad;Landroid/os/Handler;)V

    iput-object v2, p0, Lad;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 79
    :cond_74
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->h:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 81
    sget-object v0, Lad;->f:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lad;->b(Landroid/net/Uri;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lad;->k:Landroid/database/ContentObserver;

    .line 85
    :cond_8e
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->i:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 87
    sget-object v0, Lad;->e:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lad;->b(Landroid/net/Uri;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lad;->l:Landroid/database/ContentObserver;

    .line 92
    :cond_a8
    sget-object v0, Lad;->f:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lad;->a(Landroid/net/Uri;)V

    .line 93
    sget-object v0, Lad;->e:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lad;->a(Landroid/net/Uri;)V

    .line 94
    return-void

    .line 71
    :cond_b3
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lad;->m:J

    goto :goto_5a
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->h:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 301
    sget-object v0, Lad;->f:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lad;->a(Landroid/net/Uri;JZ)V

    .line 305
    :cond_18
    return-void
.end method

.method public final a(Landroid/net/Uri;JZ)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date > "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 253
    :cond_2a
    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 254
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inbox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_cd

    .line 258
    const/4 v5, 0x1

    .line 266
    :goto_4c
    iget-object v6, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v3, v4, v5}, Ldw;->a(Landroid/content/ContentResolver;JZ)Ljava/lang/String;

    move-result-object v6

    .line 270
    iget-object v7, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v3, v4}, Ldw;->a(Landroid/content/ContentResolver;J)J

    move-result-wide v3

    .line 273
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_c3

    .line 275
    iget-object v7, p0, Lad;->n:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v1, v7

    if-lez v7, :cond_88

    .line 276
    if-eqz v5, :cond_e3

    .line 277
    iget-object v7, p0, Lad;->n:Ljava/util/Map;

    sget-object v8, Lad;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lad;->i:Lw;

    invoke-interface {v7, v1, v2}, Lw;->d(J)V

    .line 282
    :cond_88
    :goto_88
    if-eqz v6, :cond_c3

    .line 283
    const-wide/16 v7, 0x3e8

    mul-long/2addr v1, v7

    new-instance v7, Lcf;

    invoke-direct {v7}, Lcf;-><init>()V

    invoke-virtual {v7, v6}, Lcf;->setNumber(Ljava/lang/String;)V

    const-wide/16 v8, 0x3e8

    div-long v8, v1, v8

    invoke-virtual {v7, v8, v9}, Lcf;->setTime(J)V

    if-eqz v5, :cond_f4

    const-string v5, "incoming"

    invoke-virtual {v7, v5}, Lcf;->setType(Ljava/lang/String;)V

    :goto_a3
    invoke-virtual {v7, v3, v4}, Lcf;->setSize(J)V

    new-instance v3, Lcg;

    invoke-direct {v3}, Lcg;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Lcg;->setTime(J)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcf;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcg;->mergeMMSNotifications(Ljava/util/Collection;)V

    .line 287
    iget-object v1, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v1, v3, p4}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 290
    :cond_c3
    :goto_c3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 292
    :cond_c9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 293
    return-void

    .line 259
    :cond_cd
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_dd

    .line 260
    const/4 v5, 0x0

    goto/16 :goto_4c

    .line 262
    :cond_dd
    const-string v1, "not notifying: MMS content URI with unknown format"

    invoke-static {v1}, Li;->e(Ljava/lang/String;)V

    goto :goto_c3

    .line 279
    :cond_e3
    iget-object v7, p0, Lad;->n:Ljava/util/Map;

    sget-object v8, Lad;->f:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lad;->i:Lw;

    invoke-interface {v7, v1, v2}, Lw;->c(J)V

    goto :goto_88

    .line 283
    :cond_f4
    const-string v5, "outgoing"

    invoke-virtual {v7, v5}, Lcf;->setType(Ljava/lang/String;)V

    goto :goto_a3
.end method

.method public final b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lad;->j:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 103
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lad;->j:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    iput-object v2, p0, Lad;->j:Landroid/database/ContentObserver;

    .line 106
    :cond_12
    iget-object v0, p0, Lad;->k:Landroid/database/ContentObserver;

    if-eqz v0, :cond_23

    .line 107
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lad;->k:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 108
    iput-object v2, p0, Lad;->k:Landroid/database/ContentObserver;

    .line 110
    :cond_23
    iget-object v0, p0, Lad;->l:Landroid/database/ContentObserver;

    if-eqz v0, :cond_34

    .line 111
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lad;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 112
    iput-object v2, p0, Lad;->l:Landroid/database/ContentObserver;

    .line 114
    :cond_34
    return-void
.end method

.method public final b(J)V
    .registers 5
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->i:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 312
    sget-object v0, Lad;->e:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lad;->a(Landroid/net/Uri;JZ)V

    .line 316
    :cond_18
    return-void
.end method

.method public final c()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->h:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 179
    iget-object v0, p0, Lad;->n:Ljava/util/Map;

    sget-object v1, Lad;->f:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 180
    sget-object v2, Lad;->f:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0, v1, v3}, Lad;->a(Landroid/net/Uri;JZ)V

    .line 184
    :cond_26
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->i:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 185
    iget-object v0, p0, Lad;->n:Ljava/util/Map;

    sget-object v1, Lad;->e:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 186
    sget-object v2, Lad;->e:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0, v1, v3}, Lad;->a(Landroid/net/Uri;JZ)V

    .line 190
    :cond_4b
    return-void
.end method

.method public final c(J)V
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 322
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->e:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 324
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v7

    const-string v0, "body"

    aput-object v0, v2, v8

    const-string v0, "address"

    aput-object v0, v2, v9

    .line 325
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lad;->b:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 332
    :cond_4e
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 333
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-static {v1, v2, v3, v7}, Lam;->a(JLjava/lang/String;Z)Lcg;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v2, v1, v8}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 341
    :cond_65
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_68
    return-void
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 466
    iget-wide v0, p0, Lad;->m:J

    return-wide v0
.end method

.method public final d(J)V
    .registers 16
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 353
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    sget-object v1, Ldg;->f:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 356
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v2, v11

    const-string v0, "body"

    aput-object v0, v2, v10

    const-string v0, "address"

    aput-object v0, v2, v12

    .line 357
    iget-object v0, p0, Lad;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lad;->c:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "date > "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v5, p1

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 362
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADJUST_MT_SMS_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADJUST_MT_SMS_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v1, v0}, Ln;->a(Ljava/lang/String;Z)Z

    move-result v8

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 366
    :cond_92
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 367
    if-eqz v8, :cond_d4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v3, Lad;->g:Ljava/util/TimeZone;

    invoke-direct {v6, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v6, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    invoke-virtual {v6, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v6, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0xb

    invoke-virtual {v6, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v6, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/16 v9, 0xd

    invoke-virtual {v6, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    .line 369
    :cond_d4
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2, v10}, Lam;->a(JLjava/lang/String;Z)Lcg;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lad;->h:Landroid/content/Context;

    invoke-static {v1, v0, v10}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    .line 375
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_92

    .line 377
    :cond_e7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_ea
    return-void
.end method

.method public final e()J
    .registers 3

    .prologue
    .line 474
    iget-object v0, p0, Lad;->n:Ljava/util/Map;

    sget-object v1, Lad;->f:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 475
    if-nez p0, :cond_f

    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_e
.end method

.method public final e(J)V
    .registers 6
    .parameter

    .prologue
    .line 469
    iput-wide p1, p0, Lad;->m:J

    .line 470
    iget-object v0, p0, Lad;->i:Lw;

    iget-wide v1, p0, Lad;->m:J

    invoke-interface {v0, v1, v2}, Lw;->a(J)V

    .line 471
    return-void
.end method

.method public final f()J
    .registers 3

    .prologue
    .line 483
    iget-object v0, p0, Lad;->n:Ljava/util/Map;

    sget-object v1, Lad;->e:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 484
    if-nez p0, :cond_f

    const-wide/16 v0, 0x0

    :goto_e
    return-wide v0

    :cond_f
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_e
.end method
