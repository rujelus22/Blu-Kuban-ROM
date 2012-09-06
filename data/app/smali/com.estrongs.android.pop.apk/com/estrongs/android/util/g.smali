.class public Lcom/estrongs/android/util/g;
.super Ljava/lang/Object;


# static fields
.field public static b:Z

.field public static c:Z

.field public static d:Lcom/estrongs/android/util/g;


# instance fields
.field public a:Lcom/estrongs/android/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/util/g;->b:Z

    sput-boolean v0, Lcom/estrongs/android/util/g;->c:Z

    new-instance v0, Lcom/estrongs/android/util/g;

    invoke-direct {v0}, Lcom/estrongs/android/util/g;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/estrongs/android/util/h;

    const-string v1, "root"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    return-void
.end method

.method private a(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    const/16 v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I

    aput-byte v2, v0, p2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p2}, Ljava/lang/String;-><init>([BII)V

    return-object v1
.end method

.method private a(Lcom/estrongs/android/util/h;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/util/h;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/util/i;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x2

    if-nez p3, :cond_43

    iget-object v3, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    :goto_5
    const/4 v4, 0x0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_79

    iget-object v0, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_28
    :goto_28
    iget-boolean v0, p1, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v0, :cond_36

    new-instance v0, Lcom/estrongs/android/util/i;

    iget-boolean v1, p1, Lcom/estrongs/android/util/h;->c:Z

    invoke-direct {v0, v3, v1, v4}, Lcom/estrongs/android/util/i;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    iget-object v0, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    iget-object v0, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e6

    :cond_42
    return-void

    :cond_43
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_79
    if-ne p5, v2, :cond_c9

    if-eqz p4, :cond_b6

    iget-object v0, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_28

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_28

    :cond_b6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_28

    :cond_c9
    if-le p5, v2, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_28

    :cond_e6
    const/4 v0, 0x0

    move v6, v0

    :goto_e8
    iget-object v0, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_42

    iget-object v0, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/util/h;

    add-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_e8
.end method

.method public static a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    move v1, v2

    :goto_1b
    iget-object v0, p0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    iget-boolean v3, v0, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v3, :cond_39

    iget-object v0, v0, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    goto :goto_7

    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b
.end method

.method private a(Ljava/io/InputStream;)Z
    .registers 4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private b(Ljava/io/InputStream;)I
    .registers 7

    const/4 v1, 0x0

    const/16 v0, 0x200

    new-array v2, v0, [B

    move v0, v1

    :goto_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    aget-byte v3, v2, v0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_21

    aput-byte v1, v2, v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1, v0}, Ljava/lang/String;-><init>([BII)V

    :try_start_1c
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_24

    move-result v1

    :goto_20
    return v1

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_24
    move-exception v0

    goto :goto_20
.end method

.method public static b()V
    .registers 2

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    invoke-virtual {v0}, Lcom/estrongs/android/util/g;->a()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/util/g;->a(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static b(Ljava/lang/String;Z)V
    .registers 4

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    invoke-virtual {v0, p0, p1}, Lcom/estrongs/android/util/g;->a(Ljava/lang/String;Z)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static c(Ljava/lang/String;)Lcom/estrongs/android/util/h;
    .registers 4

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;Z)Lcom/estrongs/android/util/h;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 5

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_20

    :try_start_b
    invoke-static {p0}, Lcom/estrongs/android/pop/fs/f;->d(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_20
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1d

    :try_start_1b
    monitor-exit v1

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    monitor-exit v1

    goto :goto_1c

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v0
.end method

.method public static d()[Lcom/estrongs/android/util/i;
    .registers 2

    sget-boolean v0, Lcom/estrongs/android/util/g;->c:Z

    if-nez v0, :cond_c

    const-string v0, "/sdcard/.estrongs/hide2.txt"

    invoke-static {v0}, Lcom/estrongs/android/util/g;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/util/g;->c:Z

    :cond_c
    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_f
    sget-object v0, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    invoke-virtual {v0}, Lcom/estrongs/android/util/g;->c()[Lcom/estrongs/android/util/i;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v0
.end method

.method public static e(Ljava/lang/String;)V
    .registers 5

    sget-object v1, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    const/4 v0, 0x0

    :try_start_9
    invoke-static {v0, p0}, Lcom/estrongs/android/pop/fs/f;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_1f

    move-result-object v0

    if-nez v0, :cond_11

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1c

    :goto_10
    return-void

    :cond_11
    :try_start_11
    sget-object v2, Lcom/estrongs/android/util/g;->d:Lcom/estrongs/android/util/g;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1a} :catch_1f

    :try_start_1a
    monitor-exit v1

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1c

    throw v0

    :catch_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1c

    goto :goto_10
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "local"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_19

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1d

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_1d
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private h(Ljava/lang/String;)Lcom/estrongs/android/util/h;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    :cond_10
    move v1, v2

    :goto_11
    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_29

    new-instance v0, Lcom/estrongs/android/util/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v1}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    iget-object v1, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    iget-object v1, v1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    iget-object v3, v0, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/util/g;->b:Z

    return-void
.end method

.method public a(Lcom/estrongs/android/util/h;Ljava/io/InputStream;)V
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_3

    :cond_3
    if-nez p1, :cond_7

    :try_start_5
    iget-object p1, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    :cond_7
    invoke-direct {p0, p2}, Lcom/estrongs/android/util/g;->b(Ljava/io/InputStream;)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/estrongs/android/util/g;->a(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/g;->a(Ljava/io/InputStream;)Z

    move-result v2

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/g;->a(Ljava/io/InputStream;)Z

    move-result v3

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/g;->b(Ljava/io/InputStream;)I

    move-result v4

    iput-object v1, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/estrongs/android/util/h;->b:Z

    iput-boolean v3, p1, Lcom/estrongs/android/util/h;->c:Z

    if-lez v4, :cond_2e

    iget-object v1, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_2e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    :cond_2e
    :goto_2e
    if-lt v0, v4, :cond_31

    :goto_30
    return-void

    :cond_31
    new-instance v1, Lcom/estrongs/android/util/h;

    const-string v2, ""

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, v1, p2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/io/InputStream;)V

    iget-object v2, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_41} :catch_44

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catch_44
    move-exception v0

    goto :goto_30
.end method

.method public a(Lcom/estrongs/android/util/h;Ljava/io/OutputStream;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :try_start_3
    iget-object p1, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    :cond_5
    iget-object v1, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_53

    move v2, v0

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p1, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v1, :cond_5b

    const-string v1, "1"

    :goto_2c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p1, Lcom/estrongs/android/util/h;->c:Z

    if-eqz v1, :cond_5e

    const-string v1, "1"

    :goto_36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/OutputStream;->write([B)V

    move v1, v0

    :goto_50
    if-lt v1, v2, :cond_61

    :goto_52
    return-void

    :cond_53
    iget-object v1, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v1

    goto :goto_a

    :cond_5b
    const-string v1, "0"

    goto :goto_2c

    :cond_5e
    const-string v1, "0"

    goto :goto_36

    :cond_61
    iget-object v0, p1, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/io/OutputStream;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6c} :catch_70

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_50

    :catch_70
    move-exception v0

    goto :goto_52
.end method

.method public a(Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    move v1, v2

    move-object v3, v0

    :goto_b
    array-length v0, v5

    if-lt v1, v0, :cond_f

    :cond_e
    return-void

    :cond_f
    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    move v4, v0

    :goto_1b
    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_29

    :goto_23
    if-ge v4, v6, :cond_e

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_29
    aget-object v7, v5, v1

    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_48

    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sput-boolean v2, Lcom/estrongs/android/util/g;->b:Z

    goto :goto_23

    :cond_48
    iget-object v0, v3, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    move-object v3, v0

    goto :goto_23

    :cond_52
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1b
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-direct {p0, p1}, Lcom/estrongs/android/util/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v1

    if-eqz v0, :cond_31

    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_70

    :cond_31
    move v0, v2

    :goto_32
    invoke-direct {p0, v3}, Lcom/estrongs/android/util/g;->h(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v3

    move-object v4, v3

    move v3, v0

    :goto_38
    array-length v0, v7

    if-ge v3, v0, :cond_12

    iget-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    :cond_46
    iget-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v1

    :goto_4d
    iget-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_72

    move-object v6, v4

    :goto_56
    if-lt v5, v8, :cond_9d

    new-instance v4, Lcom/estrongs/android/util/h;

    aget-object v5, v7, v3

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_9b

    move v0, v2

    :goto_62
    invoke-direct {v4, v5, v0, p2}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, v6, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sput-boolean v2, Lcom/estrongs/android/util/g;->b:Z

    :goto_6c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_38

    :cond_70
    move v0, v1

    goto :goto_32

    :cond_72
    aget-object v6, v7, v3

    iget-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, v4, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    array-length v4, v7

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_9f

    iput-boolean v2, v0, Lcom/estrongs/android/util/h;->b:Z

    sput-boolean v2, Lcom/estrongs/android/util/g;->b:Z

    move-object v6, v0

    goto :goto_56

    :cond_97
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4d

    :cond_9b
    move v0, v1

    goto :goto_62

    :cond_9d
    move-object v4, v6

    goto :goto_6c

    :cond_9f
    move-object v6, v0

    goto :goto_56
.end method

.method public c(Ljava/lang/String;Z)Lcom/estrongs/android/util/h;
    .registers 13

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return-object v4

    :cond_6
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v3}, Lcom/estrongs/android/util/g;->h(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->J(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    :cond_20
    move-object v4, v0

    goto :goto_5

    :cond_22
    invoke-direct {p0, p1}, Lcom/estrongs/android/util/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v1

    if-eqz v0, :cond_3a

    aget-object v0, v7, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    :cond_3a
    move v0, v2

    :goto_3b
    invoke-direct {p0, v3}, Lcom/estrongs/android/util/g;->h(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v5

    move v3, v0

    move-object v0, v4

    :goto_41
    array-length v6, v7

    if-lt v3, v6, :cond_4c

    if-eqz v0, :cond_9f

    iput-boolean p2, v0, Lcom/estrongs/android/util/h;->e:Z

    :cond_48
    move-object v4, v0

    goto :goto_5

    :cond_4a
    move v0, v1

    goto :goto_3b

    :cond_4c
    iget-boolean v0, v5, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v0, :cond_51

    move p2, v2

    :cond_51
    iget-object v0, v5, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_5f

    if-eqz p2, :cond_5

    new-instance v4, Lcom/estrongs/android/util/h;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_5f
    iget-object v0, v5, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v6, v1

    :goto_66
    iget-object v0, v5, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_7a

    :goto_6e
    if-lt v6, v8, :cond_9a

    if-eqz p2, :cond_5

    new-instance v4, Lcom/estrongs/android/util/h;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    goto :goto_5

    :cond_7a
    iget-object v0, v5, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    iget-object v0, v0, Lcom/estrongs/android/util/h;->a:Ljava/lang/String;

    aget-object v9, v7, v3

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, v5, Lcom/estrongs/android/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/h;

    move-object v5, v0

    goto :goto_6e

    :cond_96
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_66

    :cond_9a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto :goto_41

    :cond_9f
    if-eqz p2, :cond_48

    new-instance v4, Lcom/estrongs/android/util/h;

    const-string v0, ""

    invoke-direct {v4, v0, v2, v2}, Lcom/estrongs/android/util/h;-><init>(Ljava/lang/String;ZZ)V

    goto/16 :goto_5
.end method

.method public c()[Lcom/estrongs/android/util/i;
    .registers 7

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/util/g;->a:Lcom/estrongs/android/util/h;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lcom/estrongs/android/util/i;

    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_1b

    return-object v1

    :cond_1b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/i;

    aput-object v0, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_14
.end method
