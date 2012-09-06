.class public LkM;
.super LkT;
.source "Collection.java"


# instance fields
.field private a:J


# direct methods
.method private constructor <init>(LMb;LkG;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, LkT;-><init>(LMb;LkG;Landroid/database/Cursor;)V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LkM;->a:J

    .line 26
    invoke-virtual {p0}, LkM;->o()Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 27
    invoke-static {}, LLR;->a()LLR;

    move-result-object v0

    invoke-virtual {v0}, LLR;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, LkM;->b(J)V

    .line 29
    return-void
.end method

.method public constructor <init>(LMb;LkG;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    sget-object v0, LkU;->h:LkU;

    invoke-virtual {v0}, LkU;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, LkT;-><init>(LMb;LkG;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LkM;->a:J

    .line 33
    return-void
.end method

.method private a(J)Landroid/content/ContentValues;
    .registers 6
    .parameter

    .prologue
    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    sget-object v1, LLS;->c:LLS;

    invoke-virtual {v1}, LLS;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    return-object v0
.end method

.method public static a(LMb;LkG;Landroid/database/Cursor;)LkM;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    new-instance v0, LkM;

    invoke-direct {v0, p0, p1, p2}, LkM;-><init>(LMb;LkG;Landroid/database/Cursor;)V

    .line 84
    return-object v0
.end method

.method private b(J)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    cmp-long v0, p1, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkM;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkM;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_19

    :cond_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, LafQ;->b(Z)V

    .line 48
    iput-wide p1, p0, LkM;->a:J

    .line 49
    return-void

    .line 46
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 39
    iget-wide v0, p0, LkM;->a:J

    return-wide v0
.end method

.method protected a(LMb;)V
    .registers 6
    .parameter

    .prologue
    .line 98
    invoke-virtual {p0}, LkM;->a()J

    move-result-wide v0

    invoke-static {}, LLR;->a()LLR;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, LMb;->a(JLMa;Landroid/net/Uri;)V

    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, LkM;->b(J)V

    .line 100
    return-void
.end method

.method protected a(LMb;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, LkM;->a()J

    move-result-wide v1

    invoke-static {}, LLR;->a()LLR;

    move-result-object v3

    invoke-direct {p0, p2, p3}, LkM;->a(J)Landroid/content/ContentValues;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, LMb;->a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)J

    move-result-wide v0

    .line 108
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_20

    .line 109
    new-instance v0, Landroid/database/SQLException;

    const-string v1, "Error saving document"

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_20
    invoke-direct {p0, v0, v1}, LkM;->b(J)V

    .line 112
    return-void
.end method

.method public a(LLz;)Z
    .registers 3
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
