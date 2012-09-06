.class public final LkK;
.super LkQ;
.source "CachedSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLP;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;

.field private a:Z

.field private final b:J


# direct methods
.method public constructor <init>(LMb;JLjava/lang/String;J)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-static {}, LLP;->a()LLP;

    move-result-object v0

    sget-object v3, Lcom/google/android/apps/docs/providers/DocListProvider;->g:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v3}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 22
    iput-boolean v2, p0, LkK;->a:Z

    .line 31
    iput-wide p2, p0, LkK;->a:J

    .line 32
    cmp-long v0, p2, v5

    if-ltz v0, :cond_53

    move v0, v1

    :goto_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not persisted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 33
    const-string v0, "null query"

    invoke-static {p4, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LkK;->a:Ljava/lang/String;

    .line 34
    cmp-long v0, p5, v5

    if-ltz v0, :cond_55

    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid timestamp: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LafQ;->a(ZLjava/lang/Object;)V

    .line 35
    iput-wide p5, p0, LkK;->b:J

    .line 36
    return-void

    :cond_53
    move v0, v2

    .line 32
    goto :goto_16

    :cond_55
    move v1, v2

    .line 34
    goto :goto_3a
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, LkK;->b:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LkK;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, LkK;->a:Z

    .line 48
    return-void
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 40
    sget-object v0, LLQ;->a:LLQ;

    invoke-virtual {v0}, LLQ;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkK;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    sget-object v0, LLQ;->b:LLQ;

    invoke-virtual {v0}, LLQ;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkK;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object v0, LLQ;->c:LLQ;

    invoke-virtual {v0}, LLQ;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkK;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    sget-object v0, LLQ;->d:LLQ;

    invoke-virtual {v0}, LLQ;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, p0, LkK;->a:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    :goto_44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 44
    return-void

    .line 43
    :cond_4c
    const/4 v0, 0x0

    goto :goto_44
.end method

.method public b()J
    .registers 3

    .prologue
    .line 59
    iget-wide v0, p0, LkK;->a:J

    return-wide v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 21
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 64
    const-string v0, "CachedSearch[accountSqlId=%s, query=%s, timestamp=%s, completed=%s, sqlId=%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, LkK;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LkK;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LkK;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, LkK;->a:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, LkK;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
