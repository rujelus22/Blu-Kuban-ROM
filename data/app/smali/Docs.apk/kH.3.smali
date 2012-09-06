.class public LkH;
.super LkQ;
.source "AccountMetadata.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LkQ",
        "<",
        "LLD;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/util/Date;


# instance fields
.field private final a:J

.field private a:Ljava/lang/String;

.field private b:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, LkH;->a:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(LMb;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-static {}, LLD;->a()LLD;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, LkQ;-><init>(LMb;LMa;Landroid/net/Uri;)V

    .line 24
    sget-object v0, LkH;->a:Ljava/util/Date;

    iput-object v0, p0, LkH;->b:Ljava/util/Date;

    .line 35
    iput-wide p2, p0, LkH;->a:J

    .line 36
    return-void
.end method

.method public static a(LMb;Landroid/database/Cursor;)LkH;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 64
    sget-object v0, LLE;->a:LLE;

    invoke-virtual {v0}, LLE;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 65
    new-instance v2, LkH;

    invoke-direct {v2, p0, v0, v1}, LkH;-><init>(LMb;J)V

    .line 66
    invoke-static {}, LLD;->a()LLD;

    move-result-object v0

    invoke-virtual {v0}, LLD;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, LLV;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, LkH;->a(J)V

    .line 68
    sget-object v0, LLE;->b:LLE;

    invoke-virtual {v0}, LLE;->a()LLV;

    move-result-object v0

    invoke-virtual {v0, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_48

    .line 71
    new-instance v1, Ljava/util/Date;

    sget-object v3, LLE;->c:LLE;

    invoke-virtual {v3}, LLE;->a()LLV;

    move-result-object v3

    invoke-virtual {v3, p1}, LLV;->a(Landroid/database/Cursor;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 73
    invoke-virtual {v2, v0, v1}, LkH;->a(Ljava/lang/String;Ljava/util/Date;)V

    .line 76
    :cond_48
    return-object v2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, LkH;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/Date;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, LkH;->b:Ljava/util/Date;

    return-object v0
.end method

.method protected a(Landroid/content/ContentValues;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    sget-object v0, LLE;->a:LLE;

    invoke-virtual {v0}, LLE;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, LkH;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    sget-object v0, LLE;->b:LLE;

    invoke-virtual {v0}, LLE;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkH;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v0, LLE;->c:LLE;

    invoke-virtual {v0}, LLE;->a()LLV;

    move-result-object v0

    invoke-virtual {v0}, LLV;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LkH;->b:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/Date;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, LkH;->a:Ljava/lang/String;

    .line 43
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, LkH;->b:Ljava/util/Date;

    .line 44
    return-void
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

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, LkQ;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
