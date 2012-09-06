.class public final Lly;
.super LkQ;
.source "PendingOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LMy;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private final a:J

.field private a:Ljava/lang/String;

.field private final b:J


# direct methods
.method public constructor <init>(LMb;JLjava/lang/String;J)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v7}, Lly;-><init>(LMb;JLjava/lang/String;JI)V

    .line 39
    return-void
.end method

.method public constructor <init>(LMb;JLjava/lang/String;JI)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {}, LMy;->a()LMy;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 28
    iput-wide p2, p0, Lly;->a:J

    .line 29
    cmp-long v0, p2, v5

    if-ltz v0, :cond_56

    move v0, v1

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not persisted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "null payload"

    invoke-static {p4, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lly;->a:Ljava/lang/String;

    .line 31
    cmp-long v0, p5, v5

    if-ltz v0, :cond_58

    :goto_3b
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

    .line 32
    iput-wide p5, p0, Lly;->b:J

    .line 33
    iput p7, p0, Lly;->a:I

    .line 34
    return-void

    :cond_56
    move v0, v2

    .line 29
    goto :goto_13

    :cond_58
    move v1, v2

    .line 31
    goto :goto_3b
.end method

.method public static a(LkG;LMb;Landroid/database/Cursor;)Lly;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    sget-object v0, LMz;->a:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 83
    sget-object v0, LMz;->b:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p2}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 84
    sget-object v0, LMz;->c:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 86
    sget-object v0, LMz;->d:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 88
    new-instance v0, Lly;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lly;-><init>(LMb;JLjava/lang/String;JI)V

    .line 90
    invoke-static {}, LMy;->a()LMy;

    move-result-object v1

    invoke-virtual {v1}, LMy;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lly;->a(J)V

    .line 92
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lly;->a:I

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lly;->b:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lly;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lly;->a:I

    .line 102
    return-void
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 43
    sget-object v0, LMz;->a:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lly;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 44
    sget-object v0, LMz;->b:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lly;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, LMz;->c:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lly;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 46
    sget-object v0, LMz;->d:LMz;

    invoke-virtual {v0}, LMz;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lly;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lly;->a:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lly;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lly;->a:I

    .line 67
    invoke-virtual {p0}, Lly;->c()V

    .line 68
    iget v0, p0, Lly;->a:I

    return v0
.end method

.method public b()J
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lly;->a:J

    return-wide v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 19
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 19
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 73
    const-string v0, "Operation[accountSqlId=%s, payload=%s, timestamp=%s, sqlId=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lly;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lly;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lly;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lly;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
