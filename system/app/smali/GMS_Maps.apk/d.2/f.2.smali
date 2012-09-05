.class Ld/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field private final d:Ljava/util/Set;

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/util/Set;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Ld/f;->b:Z

    iput-boolean p3, p0, Ld/f;->c:Z

    iput-object p4, p0, Ld/f;->d:Ljava/util/Set;

    iput-boolean p5, p0, Ld/f;->e:Z

    return-void
.end method

.method static synthetic a(Ld/f;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ld/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_23

    move-result v1

    if-eqz v1, :cond_21

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20

    :catch_23
    move-exception v1

    goto :goto_20
.end method


# virtual methods
.method public a(Ld/W;)Z
    .registers 4

    invoke-interface {p1}, Ld/W;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ld/f;->e:Z

    if-eqz v0, :cond_18

    :cond_a
    iget-object v0, p0, Ld/f;->d:Ljava/util/Set;

    invoke-interface {p1}, Ld/W;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public a(Ld/w;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ld/w;->c()Ld/x;

    move-result-object v0

    sget-object v3, Ld/x;->c:Ld/x;

    if-ne v0, v3, :cond_3d

    move v0, v1

    :goto_b
    invoke-interface {p1}, Ld/w;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-interface {p1}, Ld/w;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ld/f;->a(Ljava/lang/String;)Z

    move-result v3

    :goto_19
    if-eqz v3, :cond_1f

    iget-boolean v3, p0, Ld/f;->b:Z

    if-eqz v3, :cond_3c

    :cond_1f
    if-eqz v0, :cond_25

    iget-boolean v0, p0, Ld/f;->c:Z

    if-eqz v0, :cond_3c

    :cond_25
    invoke-interface {p1}, Ld/w;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Ld/f;->e:Z

    if-eqz v0, :cond_3c

    :cond_2f
    iget-object v0, p0, Ld/f;->d:Ljava/util/Set;

    invoke-interface {p1}, Ld/w;->b()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v2, v1

    :cond_3c
    return v2

    :cond_3d
    move v0, v2

    goto :goto_b

    :cond_3f
    move v3, v2

    goto :goto_19
.end method
