.class public Lcom/google/googlenav/suggest/android/b;
.super LaI/d;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, LaI/d;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/b;->b:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private static a(Landroid/database/Cursor;IIII)LaI/w;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 77
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/b;->a(II)Lat/B;

    move-result-object v0

    .line 81
    new-instance v1, LaI/y;

    invoke-direct {v1}, LaI/y;-><init>()V

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaI/y;->a(Ljava/lang/String;)LaI/y;

    move-result-object v1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaI/y;->c(Ljava/lang/String;)LaI/y;

    move-result-object v1

    invoke-virtual {v1, v4}, LaI/y;->a(I)LaI/y;

    move-result-object v1

    invoke-virtual {v1, p2}, LaI/y;->b(I)LaI/y;

    move-result-object v1

    invoke-virtual {v1, p3}, LaI/y;->c(I)LaI/y;

    move-result-object v1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaI/y;->d(Ljava/lang/String;)LaI/y;

    move-result-object v1

    invoke-virtual {v1, v0}, LaI/y;->a(Lat/B;)LaI/y;

    move-result-object v0

    invoke-virtual {v0, p4}, LaI/y;->d(I)LaI/y;

    move-result-object v0

    invoke-virtual {v0}, LaI/y;->a()LaI/w;

    move-result-object v0

    return-object v0
.end method

.method private a(LaI/s;Landroid/database/Cursor;I)LaI/z;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 58
    new-instance v1, LaI/z;

    invoke-direct {v1, p1}, LaI/z;-><init>(LaI/s;)V

    .line 59
    if-nez p2, :cond_a

    move-object v0, v1

    .line 72
    :goto_9
    return-object v0

    .line 62
    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2a

    .line 63
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/b;->c()I

    move-result v2

    add-int v3, p3, v0

    invoke-virtual {p0, v5}, Lcom/google/googlenav/suggest/android/b;->a(I)I

    move-result v4

    invoke-static {p2, v5, v2, v3, v4}, Lcom/google/googlenav/suggest/android/b;->a(Landroid/database/Cursor;IIII)LaI/w;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_27

    .line 68
    invoke-virtual {v1, v2}, LaI/z;->b(LaI/w;)V

    .line 62
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 71
    :cond_2a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v1

    .line 72
    goto :goto_9
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 113
    const/16 v0, 0x8

    return v0
.end method

.method protected a_(LaI/s;)LaI/z;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 34
    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, LaI/s;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "History"

    aput-object v7, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_2e

    move-result-object v0

    .line 42
    :goto_20
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/b;->i()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/suggest/android/b;->a(LaI/s;Landroid/database/Cursor;I)LaI/z;

    move-result-object v1

    .line 43
    if-eqz v0, :cond_2d

    .line 44
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_2d
    return-object v1

    .line 38
    :catch_2e
    move-exception v0

    .line 39
    const-string v1, "AndroidLocalHistorySuggestProvider"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_20
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string v0, "h"

    return-object v0
.end method

.method public b(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 95
    invoke-static {p1}, Lcom/google/googlenav/suggest/android/b;->e(LaI/s;)Z

    move-result v0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x3

    return v0
.end method

.method public d()[I
    .registers 4

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8

    aput v2, v0, v1

    return-object v0
.end method
