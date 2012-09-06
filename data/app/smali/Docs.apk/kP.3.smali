.class public LkP;
.super Ljava/lang/Object;
.source "DatabaseModelLoader.java"

# interfaces
.implements Llu;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final a:LMb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMk;->n:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=? and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LMk;->x:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LkP;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LMb;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, LkP;->a:LMb;

    .line 67
    invoke-virtual {p0}, LkP;->d()V

    .line 68
    return-void
.end method

.method private a(LkT;Z)Ljava/util/Map;
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkT;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Llc;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 296
    new-instance v0, LnL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LLU;->a:LLU;

    invoke-virtual {v3}, LLU;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LkT;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    if-nez p2, :cond_8c

    .line 299
    sget-object v1, LnO;->a:LnO;

    new-instance v3, LnL;

    const-string v4, "root"

    invoke-static {v5, v4}, LLR;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, LnL;->a(LnO;LnL;)LnL;

    move-result-object v0

    move-object v4, v0

    .line 303
    :goto_40
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLT;->a()LLT;

    move-result-object v1

    invoke-virtual {v1}, LLT;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 307
    :try_start_61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 308
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 310
    :cond_6c
    iget-object v2, p0, LkP;->a:LMb;

    invoke-static {v2, v1}, Llc;->a(LMb;Landroid/database/Cursor;)Llc;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Llc;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_87

    move-result v2

    if-nez v2, :cond_6c

    .line 316
    :cond_83
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_87
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_8c
    move-object v4, v0

    goto :goto_40
.end method


# virtual methods
.method public a(J)I
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 148
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-ltz v0, :cond_4a

    move v0, v1

    :goto_9
    const-string v3, "Invalid timestamp: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLP;->a()LLP;

    move-result-object v3

    invoke-virtual {v3}, LLP;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LLQ;->c:LLQ;

    invoke-virtual {v5}, LLQ;->a()LLV;

    move-result-object v5

    invoke-virtual {v5}, LLV;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v0, v3, v4, v1}, LMb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_4a
    move v0, v2

    .line 148
    goto :goto_9
.end method

.method public a(LkS;)I
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 589
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "DocumentView"

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {}, LMh;->a()LMh;

    move-result-object v3

    invoke-virtual {v3}, LMh;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMi;->c:LMi;

    invoke-virtual {v4}, LMi;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1}, LkS;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 595
    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4a

    move-result v1

    .line 597
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_4a
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public a()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 455
    new-instance v0, LnL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v3

    invoke-virtual {v3}, LMf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IN ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " SELECT DISTINCT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, LMi;->c:LMi;

    invoke-virtual {v3}, LMi;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " FROM "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "DocumentView"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, LMi;->c:LMi;

    invoke-virtual {v3}, LMi;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IS NOT NULL "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, LMk;->u:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " = ? ) "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v1, LnO;->b:LnO;

    new-instance v3, LnL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v5

    invoke-virtual {v5}, LMf;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SELECT DISTINCT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, LMi;->d:LMi;

    invoke-virtual {v5}, LMi;->a()LLV;

    move-result-object v5

    invoke-virtual {v5}, LLV;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DocumentView"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, LMi;->d:LMi;

    invoke-virtual {v5}, LMi;->a()LLV;

    move-result-object v5

    invoke-virtual {v5}, LLV;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS NOT NULL )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, LnL;->a(LnO;LnL;)LnL;

    move-result-object v4

    .line 470
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMf;->a()LMf;

    move-result-object v1

    invoke-virtual {v1}, LMf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LMg;->f:LMg;

    invoke-virtual {v6}, LMg;->a()LLV;

    move-result-object v6

    invoke-virtual {v6}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ASC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(LkG;LnL;I)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 354
    sget-object v0, LnO;->a:LnO;

    new-instance v1, LnL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->x:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [LnL;

    if-eqz p2, :cond_69

    :goto_33
    aput-object p2, v3, v6

    const/4 v4, 0x1

    sget-object v5, LnL;->a:LnL;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v4

    .line 362
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "CollectionView"

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v5, LMk;->a:LMk;

    invoke-virtual {v5}, LMk;->a()LLV;

    move-result-object v5

    invoke-virtual {v5}, LLV;->a()Ljava/lang/String;

    move-result-object v7

    if-lez p3, :cond_6c

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    :goto_62
    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v8}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 354
    :cond_69
    sget-object p2, LnL;->b:LnL;

    goto :goto_33

    :cond_6c
    move-object v8, v2

    .line 362
    goto :goto_62
.end method

.method public a(LnL;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 199
    sget-object v0, LnO;->a:LnO;

    sget-object v1, LnL;->a:LnL;

    invoke-virtual {p1, v0, v1}, LnL;->a(LnO;LnL;)LnL;

    move-result-object v4

    .line 200
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "EntryView"

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/lang/String;
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 526
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "EntryView"

    new-array v2, v6, [Ljava/lang/String;

    sget-object v3, LMk;->n:LMk;

    invoke-virtual {v3}, LMk;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMj;->a()LMj;

    move-result-object v4

    invoke-virtual {v4}, LMj;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 532
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_51

    move-result v0

    if-nez v0, :cond_48

    .line 537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_47
    return-object v5

    .line 535
    :cond_48
    const/4 v0, 0x0

    :try_start_49
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_51

    move-result-object v5

    .line 537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_47

    :catchall_51
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LkS;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 411
    .line 413
    :try_start_1
    sget-object v0, LnO;->a:LnO;

    new-instance v1, LnL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v3

    invoke-virtual {v3}, LMf;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NOT IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LMi;->c:LMi;

    invoke-virtual {v3}, LMi;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, LMh;->a()LMh;

    move-result-object v3

    invoke-virtual {v3}, LMh;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, LMi;->c:LMi;

    invoke-virtual {v3}, LMi;->a()LLV;

    move-result-object v3

    invoke-virtual {v3}, LLV;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NOT NULL)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [LnL;

    const/4 v3, 0x0

    new-instance v4, LnL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v6

    invoke-virtual {v6}, LMf;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NOT IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SELECT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, LLM;->b:LLM;

    invoke-virtual {v6}, LLM;->a()LLV;

    move-result-object v6

    invoke-virtual {v6}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, LLL;->a()LLL;

    move-result-object v6

    invoke-virtual {v6}, LLL;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, LLM;->b:LLM;

    invoke-virtual {v6}, LLM;->a()LLV;

    move-result-object v6

    invoke-virtual {v6}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IS NOT NULL)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v4

    .line 427
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMf;->a()LMf;

    move-result-object v1

    invoke-virtual {v1}, LMf;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f1
    .catchall {:try_start_1 .. :try_end_f1} :catchall_11d

    move-result-object v1

    .line 432
    :try_start_f2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_124

    move-result v0

    if-nez v0, :cond_ff

    .line 443
    if-eqz v1, :cond_fd

    .line 444
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_fd
    move-object v0, v8

    :cond_fe
    :goto_fe
    return-object v0

    .line 436
    :cond_ff
    :try_start_ff
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    :cond_108
    iget-object v2, p0, LkP;->a:LMb;

    invoke-static {v2, v1}, LkS;->a(LMb;Landroid/database/Cursor;)LkS;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_114
    .catchall {:try_start_ff .. :try_end_114} :catchall_124

    move-result v2

    if-nez v2, :cond_108

    .line 443
    if-eqz v1, :cond_fe

    .line 444
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_fe

    .line 443
    :catchall_11d
    move-exception v0

    :goto_11e
    if-eqz v8, :cond_123

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_123
    throw v0

    .line 443
    :catchall_124
    move-exception v0

    move-object v8, v1

    goto :goto_11e
.end method

.method public a(LkG;)Ljava/util/List;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            ")",
            "Ljava/util/List",
            "<",
            "Lly;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 773
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 774
    new-instance v4, LnL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMz;->a:LMz;

    invoke-virtual {v1}, LMz;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMy;->a()LMy;

    move-result-object v1

    invoke-virtual {v1}, LMy;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 786
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 788
    :cond_58
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {p1, v0, v1}, Lly;->a(LkG;LMb;Landroid/database/Cursor;)Lly;

    move-result-object v0

    .line 789
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_6b

    move-result v0

    if-nez v0, :cond_58

    .line 794
    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_6b
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkT;)Ljava/util/Map;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkT;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Llc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LkP;->a(LkT;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 243
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 244
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLF;->a()LLF;

    move-result-object v1

    invoke-virtual {v1}, LLF;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, LLG;->a:LLG;

    invoke-virtual {v5}, LLG;->a()LLV;

    move-result-object v5

    invoke-virtual {v5}, LLV;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 248
    :try_start_28
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 249
    sget-object v0, LLG;->a:LLG;

    invoke-virtual {v0}, LLG;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 252
    :cond_3c
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_4d

    move-result v2

    if-nez v2, :cond_3c

    .line 257
    :cond_49
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_4d
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;)Ljava/util/Set;
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 263
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 264
    sget-object v0, LMk;->n:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v10

    .line 265
    invoke-static {p1}, LnP;->a(LkG;)LnL;

    move-result-object v0

    sget-object v1, LnO;->a:LnO;

    sget-object v2, LnL;->a:LnL;

    invoke-virtual {v0, v1, v2}, LnL;->a(LnO;LnL;)LnL;

    move-result-object v4

    .line 267
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "EntryView"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v10, v2, v6

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 272
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 273
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 275
    :cond_47
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_58

    move-result v2

    if-nez v2, :cond_47

    .line 280
    :cond_54
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v9

    :catchall_58
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkI;)Ljava/util/Set;
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkI;",
            ")",
            "Ljava/util/Set",
            "<",
            "LkJ;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 675
    invoke-virtual {p1}, LkI;->c()J

    move-result-wide v3

    .line 676
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-ltz v0, :cond_5c

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, LafQ;->b(Z)V

    .line 677
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 678
    sget-object v0, LLM;->a:LLM;

    invoke-virtual {v0}, LLM;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v5

    .line 679
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLL;->a()LLL;

    move-result-object v1

    invoke-virtual {v1}, LLL;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 682
    :goto_47
    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 683
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkJ;->a(LMb;Landroid/database/Cursor;)LkJ;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_57

    goto :goto_47

    .line 686
    :catchall_57
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 676
    :cond_5c
    const/4 v0, 0x0

    goto :goto_c

    .line 686
    :cond_5e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 688
    return-object v8
.end method

.method a(Ljava/lang/String;)LkG;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLF;->a()LLF;

    move-result-object v1

    invoke-virtual {v1}, LLF;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LLG;->a:LLG;

    invoke-virtual {v4}, LLG;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 75
    :try_start_35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_49

    move-result v0

    if-nez v0, :cond_3f

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_3e
    return-object v2

    .line 78
    :cond_3f
    :try_start_3f
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkG;->a(LMb;Landroid/database/Cursor;)LkG;
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_49

    move-result-object v2

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    :catchall_49
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;)LkH;
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLD;->a()LLD;

    move-result-object v1

    invoke-virtual {v1}, LLD;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LLE;->a:LLE;

    invoke-virtual {v4}, LLE;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 101
    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_52

    .line 102
    new-instance v0, LkH;

    iget-object v2, p0, LkP;->a:LMb;

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, LkH;-><init>(LMb;J)V
    :try_end_4e
    .catchall {:try_start_3d .. :try_end_4e} :catchall_5c

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_51
    return-object v0

    .line 105
    :cond_52
    :try_start_52
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkH;->a(LMb;Landroid/database/Cursor;)LkH;
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_5c

    move-result-object v0

    .line 107
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_51

    :catchall_5c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LkI;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 638
    sget-object v0, LnO;->a:LnO;

    new-instance v1, LnL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LLK;->a:LLK;

    invoke-virtual {v4}, LLK;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [LnL;

    new-instance v4, LnL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LLK;->b:LLK;

    invoke-virtual {v6}, LLK;->a()LLV;

    move-result-object v6

    invoke-virtual {v6}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, p2}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v4

    .line 642
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v1

    invoke-virtual {v1}, LLJ;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 646
    :try_start_72
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_86

    move-result v0

    if-nez v0, :cond_7c

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_7b
    return-object v2

    .line 649
    :cond_7c
    :try_start_7c
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkI;->a(LMb;Landroid/database/Cursor;)LkI;
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_86

    move-result-object v2

    .line 651
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7b

    :catchall_86
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)LkI;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    new-instance v0, LkI;

    iget-object v1, p0, LkP;->a:LMb;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LkI;-><init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public a(LkI;LkS;)LkJ;
    .registers 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 715
    invoke-virtual {p1}, LkI;->c()J

    move-result-wide v2

    .line 716
    invoke-virtual {p2}, LkS;->c()J

    move-result-wide v4

    .line 717
    cmp-long v0, v2, v6

    if-ltz v0, :cond_1e

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, LafQ;->b(Z)V

    .line 718
    new-instance v0, LkJ;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-direct/range {v0 .. v5}, LkJ;-><init>(LMb;JJ)V

    return-object v0

    .line 717
    :cond_1e
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(LkG;Ljava/lang/String;J)LkK;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    new-instance v0, LkK;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v2

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, LkK;-><init>(LMb;JLjava/lang/String;J)V

    .line 158
    invoke-virtual {v0}, LkK;->c()V

    .line 159
    return-object v0
.end method

.method public a(LkG;J)LkM;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 543
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "CollectionView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMk;->x:LMk;

    invoke-virtual {v4}, LMk;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, LLR;->a()LLR;

    move-result-object v4

    invoke-virtual {v4}, LLR;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 549
    :try_start_50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_64

    move-result v0

    if-nez v0, :cond_5a

    .line 554
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_59
    return-object v2

    .line 552
    :cond_5a
    :try_start_5a
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, p1, v1}, LkM;->a(LMb;LkG;Landroid/database/Cursor;)LkM;
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_64

    move-result-object v2

    .line 554
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_59

    :catchall_64
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;Ljava/lang/String;)LkM;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "CollectionView"

    sget-object v3, LkP;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 328
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_33

    move-result v0

    if-nez v0, :cond_29

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_28
    return-object v2

    .line 331
    :cond_29
    :try_start_29
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, p1, v1}, LkM;->a(LMb;LkG;Landroid/database/Cursor;)LkM;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_33

    move-result-object v2

    .line 333
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_33
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;Ljava/lang/String;)LkR;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 213
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "DocumentView"

    sget-object v3, LkP;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 218
    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_33

    move-result v0

    if-nez v0, :cond_29

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_28
    return-object v2

    .line 221
    :cond_29
    :try_start_29
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, p1, v1}, LkR;->a(LMb;LkG;Landroid/database/Cursor;)LkR;
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_33

    move-result-object v2

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_28

    :catchall_33
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;Ljava/lang/String;Ljava/lang/String;)LkR;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0, p1, p3}, LkP;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 230
    if-nez v0, :cond_e

    .line 231
    new-instance v0, LkR;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-direct {v0, v1, p1, p2, p3}, LkR;-><init>(LMb;LkG;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_d
    :goto_d
    return-object v0

    .line 233
    :cond_e
    invoke-virtual {v0}, LkR;->a()LkU;

    move-result-object v1

    invoke-static {p2}, LkT;->a(Ljava/lang/String;)LkU;

    move-result-object v2

    invoke-virtual {v1, v2}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 234
    const-string v1, "DatabaseModelLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LkR;->a()LkU;

    move-result-object v3

    invoke-virtual {v3}, LkU;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public a(J)LkS;
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    .line 583
    :goto_7
    return-object v2

    .line 572
    :cond_8
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMf;->a()LMf;

    move-result-object v1

    invoke-virtual {v1}, LMf;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LMf;->a()LMf;

    move-result-object v4

    invoke-virtual {v4}, LMf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 578
    :try_start_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_52

    move-result v0

    if-nez v0, :cond_48

    .line 583
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 581
    :cond_48
    :try_start_48
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkS;->a(LMb;Landroid/database/Cursor;)LkS;
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_52

    move-result-object v2

    .line 583
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_52
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)LkS;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 614
    new-instance v0, LkS;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-direct {v0, v1, p1, p2, p3}, LkS;-><init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method

.method public a(LkG;Ljava/lang/String;)LkT;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 517
    invoke-virtual {p0, p1, p2}, LkP;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v0

    .line 518
    if-nez v0, :cond_a

    .line 519
    invoke-virtual {p0, p1, p2}, LkP;->a(LkG;Ljava/lang/String;)LkM;

    move-result-object v0

    .line 521
    :cond_a
    return-object v0
.end method

.method public a(LkT;LkM;)Llc;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 723
    new-instance v0, Llc;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-virtual {p1}, LkT;->c()J

    move-result-wide v2

    invoke-virtual {p2}, LkM;->a()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Llc;-><init>(LMb;JJ)V

    return-object v0
.end method

.method public a(LkG;Ljava/lang/String;J)Llx;
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 114
    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_ab

    move v0, v1

    :goto_e
    const-string v3, "Not persisted: %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {v0, v3, v5}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, LnO;->a:LnO;

    new-instance v3, LnL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LMx;->b:LMx;

    invoke-virtual {v6}, LMx;->a()LLV;

    move-result-object v6

    invoke-virtual {v6}, LLV;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, p2}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v1, [LnL;

    new-instance v5, LnL;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LMx;->a:LMx;

    invoke-virtual {v7}, LMx;->a()LLV;

    move-result-object v7

    invoke-virtual {v7}, LLV;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    invoke-virtual {v0, v3, v1}, LnO;->a(LnL;[LnL;)LnL;

    move-result-object v5

    .line 122
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMw;->a()LMw;

    move-result-object v1

    invoke-virtual {v1}, LMw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, LnL;->a()Ljava/util/List;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 126
    :try_start_91
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 128
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Llx;->a(LMb;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Llx;
    :try_end_a6
    .catchall {:try_start_91 .. :try_end_a6} :catchall_b8

    move-result-object v0

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_aa
    return-object v0

    :cond_ab
    move v0, v4

    .line 114
    goto/16 :goto_e

    .line 131
    :cond_ae
    :try_start_ae
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v6}, Llx;->a(LMb;Landroid/database/Cursor;)Llx;
    :try_end_b3
    .catchall {:try_start_ae .. :try_end_b3} :catchall_b8

    move-result-object v0

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_aa

    :catchall_b8
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(LkG;Ljava/lang/String;J)Lly;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 766
    new-instance v0, Lly;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v2

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lly;-><init>(LMb;JLjava/lang/String;J)V

    .line 768
    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->d()V

    .line 729
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 748
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0, p1}, LMb;->a(Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method public a(LkS;)V
    .registers 10
    .parameter

    .prologue
    .line 603
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 604
    sget-object v1, LMi;->c:LMi;

    invoke-virtual {v1}, LMi;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, LkP;->a:LMb;

    invoke-static {}, LMh;->a()LMh;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LMi;->c:LMi;

    invoke-virtual {v4}, LMi;->a()LLV;

    move-result-object v4

    invoke-virtual {v4}, LLV;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, LkS;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, LMb;->a(LMa;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 610
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->b()Z

    move-result v0

    return v0
.end method

.method public a(JLjava/util/Set;)Z
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 164
    const-string v0, "null resourceIds"

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_85

    move v0, v8

    :goto_e
    const-string v1, "Invalid cachedSearchId: %s"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->d()V

    .line 168
    :try_start_20
    invoke-static {}, LLP;->a()LLP;

    move-result-object v0

    .line 169
    new-instance v4, LnL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, LLP;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLP;->a()LLP;

    move-result-object v1

    invoke-virtual {v1}, LLP;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_75
    .catchall {:try_start_20 .. :try_end_75} :catchall_8c

    move-result-object v0

    .line 177
    :try_start_76
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_87

    move-result v1

    .line 179
    :try_start_7a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8c

    .line 181
    if-nez v1, :cond_93

    .line 193
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->e()V

    :goto_84
    return v9

    :cond_85
    move v0, v9

    .line 165
    goto :goto_e

    .line 179
    :catchall_87
    move-exception v1

    :try_start_88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_8c

    .line 193
    :catchall_8c
    move-exception v0

    iget-object v1, p0, LkP;->a:LMb;

    invoke-virtual {v1}, LMb;->e()V

    throw v0

    .line 184
    :cond_93
    :try_start_93
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    new-instance v2, LkL;

    iget-object v3, p0, LkP;->a:LMb;

    invoke-direct {v2, v3, p1, p2, v0}, LkL;-><init>(LMb;JLjava/lang/String;)V

    .line 186
    invoke-virtual {v2}, LkL;->c()V

    goto :goto_97

    .line 188
    :cond_ae
    iget-object v0, p0, LkP;->a:LMb;

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, p2}, LMb;->a(Landroid/net/Uri;J)V

    .line 189
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->f()V
    :try_end_ba
    .catchall {:try_start_93 .. :try_end_ba} :catchall_8c

    .line 193
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->e()V

    move v9, v8

    goto :goto_84
.end method

.method public a(Ljava/lang/String;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 478
    new-instance v4, LnL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LMg;->e:LMg;

    invoke-virtual {v1}, LMg;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p1}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LMf;->a()LMf;

    move-result-object v1

    invoke-virtual {v1}, LMf;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v8}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .line 486
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 487
    return v1
.end method

.method public b(LnL;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, LkP;->a:LMb;

    const-string v1, "DocumentView"

    invoke-virtual {p1}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LkI;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 800
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 802
    new-instance v4, LnL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LLK;->d:LLK;

    invoke-virtual {v1}, LLK;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, LnL;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v1

    invoke-virtual {v1}, LLJ;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 809
    :try_start_52
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 811
    :cond_58
    iget-object v0, p0, LkP;->a:LMb;

    invoke-static {v0, v1}, LkI;->a(LMb;Landroid/database/Cursor;)LkI;

    move-result-object v0

    .line 812
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_64
    .catchall {:try_start_52 .. :try_end_64} :catchall_6b

    move-result v0

    if-nez v0, :cond_58

    .line 817
    :cond_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v8

    :catchall_6b
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b(LkG;)Ljava/util/Set;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkG;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 493
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {p1}, LkG;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LMk;->u:LMk;

    invoke-virtual {v2}, LMk;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ? AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, LMk;->x:LMk;

    invoke-virtual {v2}, LMk;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LnL;->a(Ljava/lang/String;Ljava/util/Collection;)LnL;

    move-result-object v0

    .line 501
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 502
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, LkP;->b(LnL;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 504
    :goto_57
    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 505
    sget-object v0, LMk;->n:LMk;

    invoke-virtual {v0}, LMk;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, v2}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 506
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catchall {:try_start_57 .. :try_end_6a} :catchall_6b

    goto :goto_57

    .line 509
    :catchall_6b
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_70
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 512
    return-object v1
.end method

.method public b(Ljava/lang/String;)LkG;
    .registers 4
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, LkP;->a(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 87
    if-nez v0, :cond_10

    .line 88
    new-instance v0, LkG;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-direct {v0, v1, p1}, LkG;-><init>(LMb;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, LkG;->c()V

    .line 91
    :cond_10
    return-object v0
.end method

.method public b(LkG;Ljava/lang/String;)LkM;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 339
    invoke-virtual {p0, p1, p2}, LkP;->a(LkG;Ljava/lang/String;)LkM;

    move-result-object v0

    .line 340
    if-nez v0, :cond_d

    .line 341
    new-instance v0, LkM;

    iget-object v1, p0, LkP;->a:LMb;

    invoke-direct {v0, v1, p1, p2}, LkM;-><init>(LMb;LkG;Ljava/lang/String;)V

    .line 343
    :cond_d
    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->e()V

    .line 734
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->f()V

    .line 744
    return-void
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 760
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LkP;->a:LMb;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->a(Z)V

    .line 761
    iget-object v0, p0, LkP;->a:LMb;

    invoke-virtual {v0}, LMb;->g()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_12

    .line 762
    monitor-exit p0

    return-void

    .line 760
    :cond_10
    const/4 v0, 0x0

    goto :goto_6

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method
