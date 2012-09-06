.class public LkJ;
.super LkQ;
.source "CacheListEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLL;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(LMb;JJ)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-static {}, LLL;->a()LLL;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 28
    iput-wide p2, p0, LkJ;->a:J

    .line 29
    iput-wide p4, p0, LkJ;->b:J

    .line 30
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)LkJ;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 40
    sget-object v0, LLM;->a:LLM;

    invoke-virtual {v0}, LLM;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 42
    sget-object v0, LLM;->b:LLM;

    invoke-virtual {v0}, LLM;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 44
    new-instance v0, LkJ;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LkJ;-><init>(LMb;JJ)V

    .line 45
    invoke-static {}, LLL;->a()LLL;

    move-result-object v1

    invoke-virtual {v1}, LLL;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LkJ;->a(J)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 33
    iget-wide v0, p0, LkJ;->b:J

    return-wide v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 52
    sget-object v0, LLM;->a:LLM;

    invoke-virtual {v0}, LLM;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkJ;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    sget-object v0, LLM;->b:LLM;

    invoke-virtual {v0}, LLM;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkJ;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    return-void
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 16
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 16
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, LkQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
