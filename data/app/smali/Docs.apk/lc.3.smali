.class public Llc;
.super LkQ;
.source "EntryInCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLT;",
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
    .line 29
    invoke-static {}, LLT;->a()LLT;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 30
    iput-wide p2, p0, Llc;->a:J

    .line 31
    iput-wide p4, p0, Llc;->b:J

    .line 32
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)Llc;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 62
    sget-object v0, LLU;->a:LLU;

    invoke-virtual {v0}, LLU;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 64
    sget-object v0, LLU;->b:LLU;

    invoke-virtual {v0}, LLU;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 66
    new-instance v0, Llc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llc;-><init>(LMb;JJ)V

    .line 67
    invoke-static {}, LLT;->a()LLT;

    move-result-object v1

    invoke-virtual {v1}, LLT;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Llc;->a(J)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Llc;->a:J

    return-wide v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 54
    sget-object v0, LLU;->a:LLU;

    invoke-virtual {v0}, LLU;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Llc;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    sget-object v0, LLU;->b:LLU;

    invoke-virtual {v0}, LLU;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Llc;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 56
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 45
    iget-wide v0, p0, Llc;->b:J

    return-wide v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 18
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 18
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, LkQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
