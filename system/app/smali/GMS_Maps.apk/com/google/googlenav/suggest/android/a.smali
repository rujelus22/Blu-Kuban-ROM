.class public Lcom/google/googlenav/suggest/android/a;
.super LaI/d;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, LaI/d;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/googlenav/suggest/android/a;->b:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private a(LaI/s;Landroid/database/Cursor;I)LaI/z;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 69
    new-instance v1, LaI/z;

    invoke-direct {v1, p1}, LaI/z;-><init>(LaI/s;)V

    .line 70
    if-nez p2, :cond_b

    move-object v0, v1

    .line 92
    :goto_a
    return-object v0

    .line 74
    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_64

    if-ge v0, v4, :cond_64

    .line 75
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 76
    new-instance v2, LaI/y;

    invoke-direct {v2}, LaI/y;-><init>()V

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaI/y;->a(Ljava/lang/String;)LaI/y;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaI/y;->b(Ljava/lang/String;)LaI/y;

    move-result-object v2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaI/y;->c(Ljava/lang/String;)LaI/y;

    move-result-object v2

    invoke-virtual {v2, v5}, LaI/y;->a(I)LaI/y;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->c()I

    move-result v3

    invoke-virtual {v2, v3}, LaI/y;->b(I)LaI/y;

    move-result-object v2

    add-int v3, p3, v0

    invoke-virtual {v2, v3}, LaI/y;->c(I)LaI/y;

    move-result-object v2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LaI/y;->d(Ljava/lang/String;)LaI/y;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/google/googlenav/suggest/android/a;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, LaI/y;->d(I)LaI/y;

    move-result-object v2

    invoke-virtual {v2}, LaI/y;->a()LaI/w;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_61

    .line 88
    invoke-virtual {v1, v2}, LaI/z;->b(LaI/w;)V

    .line 74
    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 91
    :cond_64
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v1

    .line 92
    goto :goto_a
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 126
    const/16 v0, 0x9

    return v0
.end method

.method protected a_(LaI/s;)LaI/z;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 45
    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->b:Landroid/content/Context;

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

    const-string v7, "Contact"

    aput-object v7, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_2e

    move-result-object v0

    .line 53
    :goto_20
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->i()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/suggest/android/a;->a(LaI/s;Landroid/database/Cursor;I)LaI/z;

    move-result-object v1

    .line 54
    if-eqz v0, :cond_2d

    .line 55
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_2d
    return-object v1

    .line 49
    :catch_2e
    move-exception v0

    .line 50
    const-string v1, "AndroidLocalHistorySuggestProvider"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_20
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const-string v0, "c"

    return-object v0
.end method

.method public b(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x7

    return v0
.end method

.method public c(LaI/s;)Z
    .registers 3
    .parameter

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public d()[I
    .registers 4

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x9

    aput v2, v0, v1

    return-object v0
.end method
