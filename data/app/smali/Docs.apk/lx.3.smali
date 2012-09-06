.class public final Llx;
.super LkQ;
.source "PartialFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LMw;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final a:Ljava/lang/Long;

.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Long;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(LMb;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {}, LMw;->a()LMw;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->h:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 46
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    :goto_10
    invoke-static {v0}, LafQ;->a(Z)V

    .line 47
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-static {p5, p6}, Llx;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    iput-wide p2, p0, Llx;->a:J

    .line 50
    iput-object p4, p0, Llx;->a:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Llx;->b:Ljava/lang/String;

    .line 52
    iput-object p6, p0, Llx;->b:Ljava/lang/Long;

    .line 53
    iput-object p7, p0, Llx;->a:Ljava/lang/Long;

    .line 54
    return-void

    .line 46
    :cond_24
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static a(LMb;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Llx;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Llx;

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Llx;-><init>(LMb;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static a(LMb;Landroid/database/Cursor;)Llx;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 141
    sget-object v0, LMx;->a:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 142
    sget-object v0, LMx;->b:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 143
    sget-object v0, LMx;->c:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    .line 144
    sget-object v0, LMx;->d:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v6

    .line 146
    if-nez v5, :cond_3e

    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, v0, v7

    if-nez v0, :cond_3e

    .line 147
    const/4 v6, 0x0

    .line 150
    :cond_3e
    sget-object v0, LMx;->e:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v7

    .line 152
    new-instance v0, Llx;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Llx;-><init>(LMb;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 154
    invoke-static {}, LMw;->a()LMw;

    move-result-object v1

    invoke-virtual {v1}, LMw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llx;->a(J)V

    .line 155
    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-nez p0, :cond_2b

    move v3, v0

    :goto_5
    if-nez p1, :cond_2d

    move v2, v0

    :goto_8
    if-ne v3, v2, :cond_2f

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid nextUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clipTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 41
    return-void

    :cond_2b
    move v3, v1

    .line 39
    goto :goto_5

    :cond_2d
    move v2, v1

    goto :goto_8

    :cond_2f
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Llx;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Llx;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    sget-object v0, LMx;->a:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Llx;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    sget-object v0, LMx;->b:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    sget-object v0, LMx;->c:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llx;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v0, LMx;->d:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llx;->b:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    sget-object v0, LMx;->e:LMx;

    invoke-virtual {v0}, LMx;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 128
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-static {p1, p2}, Llx;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    iput-object p1, p0, Llx;->b:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Llx;->b:Ljava/lang/Long;

    .line 111
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Llx;->a:Ljava/lang/String;

    iget-object v1, p0, Llx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Llx;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Llx;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 132
    const-string v0, "PartialFeed[accountSqlId=%s, initialUri=%s, nextUri=%s, clipTime=%s, cachedSearchId=%s, sqlId=%s]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Llx;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Llx;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Llx;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Llx;->b:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Llx;->a:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p0}, Llx;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
