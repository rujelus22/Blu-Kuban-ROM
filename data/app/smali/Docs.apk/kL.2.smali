.class public final LkL;
.super LkQ;
.source "CachedSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLN;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(LMb;JLjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {}, LLN;->a()LLN;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 25
    iput-wide p2, p0, LkL;->a:J

    .line 26
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LkL;->a:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 31
    sget-object v0, LLO;->b:LLO;

    invoke-virtual {v0}, LLO;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkL;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    sget-object v0, LLO;->a:LLO;

    invoke-virtual {v0}, LLO;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkL;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 33
    return-void
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

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, LkQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
