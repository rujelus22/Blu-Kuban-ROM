.class Lvl;
.super Ldd;
.source "JsCacheImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Lvh;

.field final synthetic a:Lvi;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lvi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lvl;->a:Lvi;

    .line 73
    invoke-direct {p0}, Ldd;-><init>()V

    .line 74
    iput-object p2, p0, Lvl;->a:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lvl;->b:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lvl;->c:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lvl;->d:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lvl;->a:Lvh;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lvi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;Lvj;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lvl;-><init>(Lvi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;)V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 9

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lvl;->a:Lvi;

    iget-object v1, p0, Lvl;->a:Ljava/lang/String;

    iget-object v2, p0, Lvl;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lvi;->a(Lvi;Ljava/lang/String;Ljava/lang/String;)Lvk;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_3c

    move-result-object v7

    .line 86
    if-nez v7, :cond_4a

    .line 88
    :try_start_c
    iget-object v0, p0, Lvl;->a:Lvh;

    iget-object v1, p0, Lvl;->a:Lvi;

    iget-object v2, p0, Lvl;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lvi;->a(Lvi;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvh;->a([BLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_3c

    .line 128
    :goto_1a
    return-void

    .line 90
    :catch_1b
    move-exception v0

    .line 91
    :try_start_1c
    const-string v1, "JsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvl;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object v0, p0, Lvl;->a:Lvh;

    invoke-interface {v0}, Lvh;->a()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_1a

    .line 121
    :catch_3c
    move-exception v0

    .line 125
    const-string v1, "JsCache"

    const-string v2, "Failed fetching the JS."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v0, p0, Lvl;->a:Lvh;

    invoke-interface {v0}, Lvh;->a()V

    goto :goto_1a

    .line 97
    :cond_4a
    :try_start_4a
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const-string v1, "%s_%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lvl;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v7}, Lvk;->a(Lvk;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "JsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manifest points to appCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lvk;->b(Lvk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with TTL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Lvk;->a(Lvk;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, LkF;

    invoke-static {v7}, Lvk;->a(Lvk;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    invoke-static {v7}, Lvk;->a(Lvk;)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, LkF;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;Ljava/lang/String;J)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_b4} :catch_3c

    .line 106
    :try_start_b4
    iget-object v1, p0, Lvl;->a:Lvi;

    invoke-static {v1}, Lvi;->a(Lvi;)Lkm;

    move-result-object v1

    iget-object v2, p0, Lvl;->b:Ljava/lang/String;

    invoke-static {v7}, Lvk;->b(Lvk;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lvl;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lkm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LkE;)Ljava/util/List;
    :try_end_c5
    .catch Lkj; {:try_start_b4 .. :try_end_c5} :catch_e6
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_c5} :catch_3c

    move-result-object v0

    .line 115
    :try_start_c6
    iget-object v1, p0, Lvl;->a:Lvh;

    iget-object v2, p0, Lvl;->a:Lvi;

    invoke-static {v2, v0}, Lvi;->a(Lvi;Ljava/util/List;)[B

    move-result-object v0

    invoke-static {v7}, Lvk;->c(Lvk;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lvh;->a([BLjava/lang/String;)V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_d5} :catch_d7
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d5} :catch_3c

    goto/16 :goto_1a

    .line 116
    :catch_d7
    move-exception v0

    .line 117
    :try_start_d8
    const-string v1, "JsCache"

    const-string v2, "Failed reading from appCached local file."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    iget-object v0, p0, Lvl;->a:Lvh;

    invoke-interface {v0}, Lvh;->a()V

    goto/16 :goto_1a

    .line 108
    :catch_e6
    move-exception v0

    .line 109
    const-string v1, "JsCache"

    const-string v2, "Failed to retrieve appCache"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    iget-object v0, p0, Lvl;->a:Lvh;

    invoke-interface {v0}, Lvh;->a()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_f3} :catch_3c

    goto/16 :goto_1a
.end method
