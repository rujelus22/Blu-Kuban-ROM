.class public LG/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, LG/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LG/j;->a:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, LG/j;->b:Ljava/io/Writer;

    const-string v1, "</%s>\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "event-log"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/g;

    iget-object v2, p0, LG/j;->b:Ljava/io/Writer;

    invoke-virtual {v0, v2}, LG/g;->a(Ljava/io/Writer;)V

    goto :goto_4

    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, LG/j;->b()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_10

    :try_start_3
    iget-object v0, p0, LG/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    :goto_8
    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    iget-object v1, p0, LG/j;->b:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_19

    :goto_f
    throw v0

    :catch_10
    move-exception v0

    :try_start_11
    iget-object v0, p0, LG/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_8

    :catch_17
    move-exception v0

    goto :goto_8

    :catch_19
    move-exception v1

    goto :goto_f
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, LG/j;->b(Ljava/util/List;)V

    iget-object v0, p0, LG/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method
