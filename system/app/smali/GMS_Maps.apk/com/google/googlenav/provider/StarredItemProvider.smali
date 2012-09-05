.class public Lcom/google/googlenav/provider/StarredItemProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "address"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->b:[Ljava/lang/String;

    const-string v0, "content://com.google.android.maps.StarredItemProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const-wide/16 v0, -0x1388

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    return-void
.end method

.method private static a(LaM/i;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    invoke-interface {p0, p1}, LaM/i;->b(Ljava/lang/String;)LaM/n;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v1}, LaM/n;->b()Lam/b;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lam/b;->l(I)I

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v5, v3}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v2, v4, :cond_41

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3a

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3a
    invoke-virtual {v1, v5, v4}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private a()V
    .registers 6

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->u()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v1

    invoke-virtual {v1}, LaM/e;->c()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->d()V

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/provider/StarredItemProvider;->c:J

    goto :goto_a
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deletion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, "vnd.android.cursor.dir/vnd.gmm.starreditem"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Insertion not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/login/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;

    :cond_1c
    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-static {v1}, LaM/e;->a(Lcom/google/googlenav/ui/wizard/hM;)LaM/e;

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-eqz v0, :cond_40

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->E_()V

    :cond_40
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/provider/StarredItemProvider;->a()V

    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v0

    invoke-interface {v0}, LaM/f;->g()LaM/i;

    move-result-object v3

    invoke-interface {v3}, LaM/i;->b()Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/google/googlenav/provider/StarredItemProvider;->b:[Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    move v1, v2

    :goto_20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_84

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, LaM/i;->a(Ljava/lang/String;)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v0}, LaM/m;->h()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-virtual {v0}, LaM/m;->d()LaJ/B;

    move-result-object v6

    if-eqz v6, :cond_80

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    invoke-virtual {v0}, LaM/m;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v0}, LaM/m;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v0}, LaM/m;->c()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-virtual {v6}, LaJ/B;->c()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-virtual {v6}, LaJ/B;->e()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    const/4 v6, 0x6

    invoke-virtual {v0}, LaM/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/googlenav/provider/StarredItemProvider;->a(LaM/i;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    :cond_84
    return-object v5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
