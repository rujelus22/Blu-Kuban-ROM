.class abstract LkQ;
.super Ljava/lang/Object;
.source "DatabaseRow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "LMa;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:J

.field private final a:LMa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected final a:LMb;

.field private final a:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(LMb;LMa;Landroid/net/Uri;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMb;",
            "TT;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LkQ;->a:J

    .line 28
    iput-object p1, p0, LkQ;->a:LMb;

    .line 29
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LMa;

    iput-object v0, p0, LkQ;->a:LMa;

    .line 30
    iput-object p3, p0, LkQ;->a:Landroid/net/Uri;

    .line 31
    return-void
.end method


# virtual methods
.method final a()Landroid/content/ContentValues;
    .registers 8

    .prologue
    .line 47
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 49
    :try_start_5
    invoke-virtual {p0, v1}, LkQ;->a(Landroid/content/ContentValues;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_9

    .line 63
    return-object v1

    .line 50
    :catch_9
    move-exception v2

    .line 51
    const-string v0, ""

    .line 53
    :try_start_c
    invoke-virtual {p0}, LkQ;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_25

    move-result-object v0

    .line 59
    :goto_10
    const-string v3, "DatabaseRow"

    const-string v4, "Error in fillContentValues() on %s; partial result: "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    throw v2

    .line 54
    :catch_25
    move-exception v0

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[additional RuntimeException thrown by toString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method final a(J)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    cmp-long v0, p1, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkQ;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    iget-wide v0, p0, LkQ;->a:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_19

    :cond_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, LafQ;->b(Z)V

    .line 39
    iput-wide p1, p0, LkQ;->a:J

    .line 40
    return-void

    .line 38
    :cond_19
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected abstract a(Landroid/content/ContentValues;)V
.end method

.method public b()V
    .registers 6

    .prologue
    .line 82
    invoke-virtual {p0}, LkQ;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    const/4 v0, 0x1

    :goto_b
    invoke-static {v0}, LafQ;->b(Z)V

    .line 83
    iget-object v0, p0, LkQ;->a:LMb;

    invoke-virtual {p0}, LkQ;->c()J

    move-result-wide v1

    iget-object v3, p0, LkQ;->a:LMa;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, LMb;->a(JLMa;Landroid/net/Uri;)V

    .line 84
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, LkQ;->a(J)V

    .line 85
    return-void

    .line 82
    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 34
    iget-wide v0, p0, LkQ;->a:J

    return-wide v0
.end method

.method public c()V
    .registers 7

    .prologue
    .line 70
    iget-object v0, p0, LkQ;->a:LMb;

    invoke-virtual {p0}, LkQ;->c()J

    move-result-wide v1

    iget-object v3, p0, LkQ;->a:LMa;

    invoke-virtual {p0}, LkQ;->a()Landroid/content/ContentValues;

    move-result-object v4

    iget-object v5, p0, LkQ;->a:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, LMb;->a(JLMa;Landroid/content/ContentValues;Landroid/net/Uri;)J

    move-result-wide v0

    .line 72
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_31

    .line 73
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error saving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_31
    invoke-virtual {p0, v0, v1}, LkQ;->a(J)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 89
    const-string v0, "DatabaseRow[%s, sqlId=%s, values=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LkQ;->a:LMa;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, LkQ;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, LkQ;->a()Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
