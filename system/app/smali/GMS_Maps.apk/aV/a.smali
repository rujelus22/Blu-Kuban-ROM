.class public LaV/a;
.super LaV/d;


# static fields
.field private static c:LaV/a;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, LaV/d;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, LaV/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a()LaV/a;
    .registers 1

    sget-object v0, LaV/a;->c:LaV/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/database/Cursor;III)LaV/r;
    .registers 16

    new-instance v10, LaV/r;

    invoke-direct {v10, p0}, LaV/r;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_9

    move-object v0, v10

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    move v9, v0

    :goto_b
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v9, v0, :cond_69

    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_40
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v0, v2}, LaV/a;->a(II)LaJ/B;

    move-result-object v8

    new-instance v0, LaV/q;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    add-int v6, p4, v9

    move v4, p2

    move v5, p3

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, LaV/q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;LaJ/B;)V

    invoke-virtual {v10, v0}, LaV/r;->b(LaV/q;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_b

    :cond_69
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object v0, v10

    goto :goto_8
.end method

.method static synthetic a(LaV/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, LaV/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(LaM/m;)V
    .registers 5

    const-string v0, "name=? AND address=?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, LaM/m;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, LaM/m;->c()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, LaV/b;

    invoke-direct {v1, p0, v0, p1}, LaV/b;-><init>(LaV/a;[Ljava/lang/String;LaM/m;)V

    new-instance v0, Lap/b;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lap/b;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lap/b;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    new-instance v0, LaV/a;

    invoke-direct {v0, p0}, LaV/a;-><init>(Landroid/content/Context;)V

    sput-object v0, LaV/a;->c:LaV/a;

    return-void
.end method

.method private static b(Lcom/google/googlenav/ah;J)LaM/m;
    .registers 9

    const/4 v4, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v4

    :cond_4
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v2

    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v3

    :goto_18
    new-instance v0, LaM/m;

    const-string v1, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, LaM/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lam/b;Z)V

    invoke-virtual {v0, p1, p2}, LaM/m;->a(J)V

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0, v1}, LaM/m;->a(LaJ/B;)V

    move-object v4, v0

    goto :goto_3

    :cond_2c
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->D()Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    :cond_3b
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v3

    goto :goto_18
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Landroid/database/Cursor;
    .registers 10

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name like ? OR name like ? OR address like ? OR address like ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_d6

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-static {v0}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d6

    :cond_73
    const-string v2, " OR ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9f

    const-string v2, "name like ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9f
    invoke-static {v0}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    invoke-static {v4}, Las/b;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, " AND "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b0
    const-string v2, "address like ?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d1
    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d6
    new-array v0, v6, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastUpdated desc LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, LaV/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ah;J)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->v()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, LaV/a;->d()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {p1, p2, p3}, LaV/a;->b(Lcom/google/googlenav/ah;J)LaM/m;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, LaV/a;->a(LaM/m;)V

    goto :goto_d
.end method

.method public b(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, LaV/a;->a(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "p"

    return-object v0
.end method

.method protected declared-synchronized b_(Ljava/lang/String;)LaV/r;
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->v()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, LaV/a;->d()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_29

    :cond_f
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    invoke-virtual {p0, p1}, LaV/a;->b(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_14} :catch_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_14} :catch_36

    move-result-object v0

    move-object v1, v0

    :goto_16
    const/4 v0, 0x1

    :try_start_17
    invoke-virtual {p0}, LaV/a;->c()I

    move-result v2

    invoke-virtual {p0}, LaV/a;->g()I

    move-result v3

    invoke-static {p1, v1, v0, v2, v3}, LaV/a;->a(Ljava/lang/String;Landroid/database/Cursor;III)LaV/r;

    move-result-object v0

    if-eqz v1, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_29

    goto :goto_f

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {p0}, LaV/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_16

    :catch_36
    move-exception v1

    invoke-virtual {p0}, LaV/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_29

    move-object v1, v0

    goto :goto_16
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public d()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, LaV/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/LocalActivePlacesProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
