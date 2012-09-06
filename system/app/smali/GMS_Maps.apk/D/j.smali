.class public LD/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, LD/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LD/j;->a:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 92
    iget-object v0, p0, LD/j;->b:Ljava/io/Writer;

    const-string v1, "</%s>\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "event-log"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/g;

    .line 97
    iget-object v2, p0, LD/j;->b:Ljava/io/Writer;

    invoke-virtual {v0, v2}, LD/g;->a(Ljava/io/Writer;)V

    goto :goto_4

    .line 99
    :cond_16
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 73
    :try_start_0
    invoke-direct {p0}, LD/j;->b()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_9

    .line 78
    :try_start_3
    iget-object v0, p0, LD/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_1b

    .line 83
    :goto_8
    return-void

    .line 74
    :catch_9
    move-exception v0

    .line 78
    :try_start_a
    iget-object v0, p0, LD/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_8

    .line 79
    :catch_10
    move-exception v0

    goto :goto_8

    .line 77
    :catchall_12
    move-exception v0

    .line 78
    :try_start_13
    iget-object v1, p0, LD/j;->b:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_19

    .line 81
    :goto_18
    throw v0

    .line 79
    :catch_19
    move-exception v1

    goto :goto_18

    :catch_1b
    move-exception v0

    goto :goto_8
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    :try_start_0
    invoke-direct {p0, p1}, LD/j;->b(Ljava/util/List;)V

    .line 65
    iget-object v0, p0, LD/j;->b:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 69
    :goto_8
    return-void

    .line 66
    :catch_9
    move-exception v0

    goto :goto_8
.end method
