.class Lcom/estrongs/android/util/z;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/util/aa;

.field b:Lcom/estrongs/android/util/aa;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iput-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/estrongs/android/util/ae;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/estrongs/android/util/ae;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/util/aa;

    invoke-direct {v1, v0}, Lcom/estrongs/android/util/aa;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    invoke-interface {v0}, Lcom/estrongs/android/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    invoke-direct {p0, v0}, Lcom/estrongs/android/util/z;->a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iput-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    goto :goto_3a
.end method

.method private a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;
    .registers 4

    iget v0, p1, Lcom/estrongs/android/util/aa;->c:I

    :try_start_2
    iget-object v1, p1, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    invoke-interface {v0}, Lcom/estrongs/android/util/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/z;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_24

    new-instance v0, Lcom/estrongs/android/util/aa;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/aa;-><init>(Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/aa;Lcom/estrongs/android/util/aa;)V

    invoke-static {v0, p1}, Lcom/estrongs/android/util/aa;->b(Lcom/estrongs/android/util/aa;Lcom/estrongs/android/util/aa;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_25

    move-object p1, v0

    :cond_24
    :goto_24
    return-object p1

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/util/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_f
    array-length v3, v1

    if-lt v0, v3, :cond_13

    return-object v2

    :cond_13
    new-instance v3, Lcom/estrongs/android/util/ae;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/estrongs/android/util/ae;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method


# virtual methods
.method public a()Lcom/estrongs/android/util/k;
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    if-nez v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iget-boolean v0, v0, Lcom/estrongs/android/util/aa;->b:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iput-boolean v6, v0, Lcom/estrongs/android/util/aa;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    goto :goto_8

    :cond_1e
    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget v2, v0, Lcom/estrongs/android/util/aa;->c:I

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_45

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0, v1}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/aa;Lcom/estrongs/android/util/aa;)V

    :cond_39
    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    invoke-static {v0}, Lcom/estrongs/android/util/aa;->a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;

    move-result-object v0

    if-nez v0, :cond_1e

    iput-object v1, p0, Lcom/estrongs/android/util/z;->a:Lcom/estrongs/android/util/aa;

    move-object v0, v1

    goto :goto_8

    :cond_45
    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-boolean v0, v0, Lcom/estrongs/android/util/aa;->b:Z

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    invoke-interface {v0}, Lcom/estrongs/android/util/k;->c()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    iget-object v1, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iput-boolean v6, v1, Lcom/estrongs/android/util/aa;->b:Z

    iget-object v1, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    invoke-direct {p0, v1}, Lcom/estrongs/android/util/z;->a(Lcom/estrongs/android/util/aa;)Lcom/estrongs/android/util/aa;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    goto :goto_8

    :cond_72
    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-boolean v3, v0, Lcom/estrongs/android/util/aa;->b:Z

    iget-object v0, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget-object v0, v0, Lcom/estrongs/android/util/aa;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/k;

    iget-object v2, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iget v4, v2, Lcom/estrongs/android/util/aa;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/estrongs/android/util/aa;->c:I

    iget-object v2, p0, Lcom/estrongs/android/util/z;->b:Lcom/estrongs/android/util/aa;

    iput-boolean v5, v2, Lcom/estrongs/android/util/aa;->b:Z

    if-nez v3, :cond_39

    goto/16 :goto_8
.end method
