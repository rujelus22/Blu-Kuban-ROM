.class final enum Lcom/dropbox/android/provider/x;
.super Lcom/dropbox/android/provider/w;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/provider/w;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/v;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    invoke-static {p6}, Ldbxyzptlk/j/a;->b(Landroid/content/Context;)Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->h()J

    move-result-wide v1

    .line 29
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_12

    .line 30
    const/4 v0, 0x0

    .line 35
    :goto_11
    return-object v0

    .line 33
    :cond_12
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "uid"

    aput-object v4, v3, v5

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 34
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public final a(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/Context;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method
