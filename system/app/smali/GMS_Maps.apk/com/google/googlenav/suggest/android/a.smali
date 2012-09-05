.class public Lcom/google/googlenav/suggest/android/a;
.super LaV/d;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, LaV/d;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/suggest/android/a;->b:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/database/Cursor;II)LaV/q;
    .registers 12

    const/4 v5, 0x2

    new-instance v0, LaV/q;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/database/Cursor;I)LaV/r;
    .registers 8

    new-instance v1, LaV/r;

    invoke-direct {v1, p1}, LaV/r;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->c()I

    move-result v2

    add-int v3, p3, v0

    invoke-static {p2, v2, v3}, Lcom/google/googlenav/suggest/android/a;->b(Landroid/database/Cursor;II)LaV/q;

    move-result-object v2

    :goto_28
    if-eqz v2, :cond_2d

    invoke-virtual {v1, v2}, LaV/r;->b(LaV/q;)V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_30
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->c()I

    move-result v2

    add-int v3, p3, v0

    invoke-static {p2, v2, v3}, Lcom/google/googlenav/suggest/android/a;->a(Landroid/database/Cursor;II)LaV/q;

    move-result-object v2

    goto :goto_28

    :cond_3b
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v1

    goto :goto_8
.end method

.method private static b(Landroid/database/Cursor;II)LaV/q;
    .registers 12

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/suggest/android/a;->a(II)LaJ/B;

    move-result-object v8

    new-instance v0, LaV/q;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v8}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "a"

    return-object v0
.end method

.method protected b_(Ljava/lang/String;)LaV/r;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_25

    move-result-object v0

    :goto_17
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/a;->g()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/suggest/android/a;->a(Ljava/lang/String;Landroid/database/Cursor;I)LaV/r;

    move-result-object v1

    if-eqz v0, :cond_24

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_24
    return-object v1

    :catch_25
    move-exception v0

    const-string v1, "AndroidLocalSuggestProvider"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_17
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method
