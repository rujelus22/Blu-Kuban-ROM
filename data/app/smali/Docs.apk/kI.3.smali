.class public LkI;
.super LkQ;
.source "AppCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLJ;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Date;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/docs/providers/DocListProvider;->e:Landroid/net/Uri;

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 40
    iput-object p2, p0, LkI;->a:Ljava/lang/String;

    .line 41
    iput-object p3, p0, LkI;->b:Ljava/lang/String;

    .line 42
    iput-object p4, p0, LkI;->c:Ljava/lang/String;

    .line 43
    iput-object p5, p0, LkI;->a:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)LkI;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 66
    sget-object v0, LLK;->a:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 67
    sget-object v0, LLK;->b:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 68
    sget-object v0, LLK;->c:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 69
    sget-object v0, LLK;->d:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 70
    new-instance v0, LkI;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, LkI;-><init>(LMb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    .line 72
    invoke-static {}, LLJ;->a()LLJ;

    move-result-object v1

    invoke-virtual {v1}, LLJ;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, LkI;->a(J)V

    .line 73
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, LkI;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, LkI;->a:Ljava/util/Date;

    return-object v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 78
    invoke-virtual {p0}, LkI;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App name should not be null."

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {p0}, LkI;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App version should not be null."

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, LLK;->a:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkI;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, LLK;->b:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkI;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, LLK;->c:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkI;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, LLK;->d:LLK;

    invoke-virtual {v0}, LLK;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LkI;->a()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LkI;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b()V
    .registers 1

    .prologue
    .line 22
    invoke-super {p0}, LkQ;->b()V

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, LkI;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic c()V
    .registers 1

    .prologue
    .line 22
    invoke-super {p0}, LkQ;->c()V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    invoke-super {p0}, LkQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
