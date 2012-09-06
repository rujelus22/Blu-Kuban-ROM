.class public Lcom/estrongs/android/pop/fs/m;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lde/aflx/sardine/Sardine;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/estrongs/android/pop/d/e;
    .registers 16

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const-string v2, "80"

    :try_start_5
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_167
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_152

    move-result-object v3

    :try_start_9
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_18c

    move-result-object v4

    :try_start_11
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "webdavs://"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v3, :cond_1ae

    const-string v5, "fake"
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_178
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1f} :catch_191

    :goto_1f
    if-nez v0, :cond_1ab

    :try_start_21
    const-string v0, "fake"

    move-object v9, v0

    :goto_24
    if-nez v2, :cond_1a8

    if-eqz v10, :cond_38

    const-string v0, "443"
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_17d
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2a} :catch_197

    :goto_2a
    move-object v3, v0

    :goto_2b
    :try_start_2b
    invoke-static {v5, v9, v4, v3}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_181
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_19c

    move-result-object v6

    if-nez v6, :cond_3b

    if-eqz v6, :cond_36

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_36
    move-object v0, v1

    :goto_37
    return-object v0

    :cond_38
    :try_start_38
    const-string v0, "80"
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_17d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3a} :catch_197

    goto :goto_2a

    :cond_3b
    :try_start_3b
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v10, :cond_a1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "443"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const-string v0, ""

    :goto_56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "%2F"

    const-string v12, "/"

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "+"

    const-string v12, "%20"

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_77
    if-eqz p1, :cond_e8

    invoke-static {v5, v9, v11}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7d
    const/4 v9, 0x0

    invoke-interface {v6, v2, v9}, Lde/aflx/sardine/Sardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8a

    invoke-interface {v9}, Ljava/util/List;->size()I
    :try_end_87
    .catchall {:try_start_3b .. :try_end_87} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_87} :catch_1a2

    move-result v2

    if-nez v2, :cond_ea

    :cond_8a
    if-eqz v6, :cond_8f

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_8f
    move-object v0, v1

    goto :goto_37

    :cond_91
    :try_start_91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_56

    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "80"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d8

    const-string v0, ""

    :goto_b6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "%2F"

    const-string v12, "/"

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "+"

    const-string v12, "%20"

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_77

    :cond_d8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6

    :cond_e8
    move-object v0, v1

    goto :goto_7d

    :cond_ea
    new-instance v2, Lcom/estrongs/android/pop/d/e;

    if-eqz p1, :cond_14e

    :goto_ee
    invoke-direct {v2, v0}, Lcom/estrongs/android/pop/d/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/DavResource;

    invoke-virtual {v0}, Lde/aflx/sardine/DavResource;->isDirectory()Z

    move-result v0

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->d:Z

    iget-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->d:Z

    if-nez v0, :cond_117

    const-string v0, "File"

    iput-object v0, v2, Lcom/estrongs/android/pop/d/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/DavResource;

    invoke-virtual {v0}, Lde/aflx/sardine/DavResource;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v2, Lcom/estrongs/android/pop/d/e;->e:J

    :cond_117
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/DavResource;

    invoke-virtual {v0}, Lde/aflx/sardine/DavResource;->getModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/estrongs/android/pop/d/e;->j:J

    const-wide/16 v9, 0x0

    iput-wide v9, v2, Lcom/estrongs/android/pop/d/e;->h:J

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->l:Z

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_150

    const-string v9, "."

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_150

    move v0, v7

    :goto_141
    iput-boolean v0, v2, Lcom/estrongs/android/pop/d/e;->m:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_146
    .catchall {:try_start_91 .. :try_end_146} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_146} :catch_1a2

    if-eqz v6, :cond_14b

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_14b
    move-object v0, v2

    goto/16 :goto_37

    :cond_14e
    move-object v0, p0

    goto :goto_ee

    :cond_150
    move v0, v8

    goto :goto_141

    :catch_152
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    :goto_156
    :try_start_156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_15f
    .catchall {:try_start_156 .. :try_end_15f} :catchall_186

    if-eqz v5, :cond_164

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_164
    move-object v0, v1

    goto/16 :goto_37

    :catchall_167
    move-exception v0

    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    :goto_16c
    if-eqz v6, :cond_171

    invoke-static {v5, v4, v3, v6}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_171
    throw v0

    :catchall_172
    move-exception v0

    move-object v4, v1

    move-object v5, v3

    move-object v6, v1

    move-object v3, v2

    goto :goto_16c

    :catchall_178
    move-exception v0

    move-object v5, v3

    move-object v6, v1

    move-object v3, v2

    goto :goto_16c

    :catchall_17d
    move-exception v0

    move-object v3, v2

    move-object v6, v1

    goto :goto_16c

    :catchall_181
    move-exception v0

    move-object v6, v1

    goto :goto_16c

    :catchall_184
    move-exception v0

    goto :goto_16c

    :catchall_186
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_16c

    :catch_18c
    move-exception v0

    move-object v4, v3

    move-object v5, v1

    move-object v3, v1

    goto :goto_156

    :catch_191
    move-exception v0

    move-object v5, v1

    move-object v13, v3

    move-object v3, v4

    move-object v4, v13

    goto :goto_156

    :catch_197
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    goto :goto_156

    :catch_19c
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    goto :goto_156

    :catch_1a2
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_156

    :cond_1a8
    move-object v3, v2

    goto/16 :goto_2b

    :cond_1ab
    move-object v9, v0

    goto/16 :goto_24

    :cond_1ae
    move-object v5, v3

    goto/16 :goto_1f
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    .registers 10

    const-class v1, Lcom/estrongs/android/pop/fs/m;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_6f

    :try_start_6
    sget-object v0, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_5c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_6 .. :try_end_5d} :catchall_6c

    :try_start_5d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_72

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/aflx/sardine/Sardine;
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_6f

    :goto_6a
    monitor-exit v1

    return-object v0

    :catchall_6c
    move-exception v0

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    :try_start_6e
    throw v0

    :catch_6f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6a

    :cond_72
    invoke-static {p0, p1}, Lde/aflx/sardine/SardineFactory;->begin(Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_77
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_75} :catch_6f

    move-result-object v0

    goto :goto_6a

    :catchall_77
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;J)Ljava/io/InputStream;
    .registers 12

    const/4 v6, 0x0

    const-string v0, "22"

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v3, :cond_1d

    const-string v3, "fake"

    :cond_1d
    if-nez v0, :cond_de

    const-string v0, "fake"

    move-object v1, v0

    :goto_22
    if-nez v5, :cond_29

    if-eqz v7, :cond_31

    const-string v0, "443"

    :goto_28
    move-object v5, v0

    :cond_29
    invoke-static {v3, v1, v4, v5}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;

    move-result-object v2

    if-nez v2, :cond_34

    move-object v0, v6

    :goto_30
    return-object v0

    :cond_31
    const-string v0, "80"

    goto :goto_28

    :cond_34
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_98

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "443"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, ""

    :goto_4f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6f
    invoke-interface {v2, v0}, Lde/aflx/sardine/Sardine;->get(Ljava/lang/String;)Lde/aflx/sardine/impl/io/ConsumingInputStream;

    move-result-object v1

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/pop/fs/o;

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/fs/o;-><init>(Ljava/io/InputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7b} :catch_7c

    goto :goto_30

    :catch_7c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    move-object v0, v6

    goto :goto_30

    :cond_88
    :try_start_88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "80"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, ""

    :goto_ad
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6f

    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_dc} :catch_7c

    move-result-object v0

    goto :goto_ad

    :cond_de
    move-object v1, v0

    goto/16 :goto_22
.end method

.method private static a(Lde/aflx/sardine/DavResource;)Ljava/lang/String;
    .registers 11

    const-string v1, ""

    :try_start_2
    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_b8

    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    const/4 v0, 0x1

    :goto_15
    move v2, v0

    :goto_16
    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getModified()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/estrongs/android/pop/fs/m;->b:Ljava/lang/String;

    if-nez v0, :cond_98

    const-string v0, "MM/dd/yy"

    :goto_26
    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_9b

    const-string v0, ""

    :goto_36
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "rw"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_a8

    move-result-object v0

    const/4 v1, 0x0

    :try_start_92
    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_94} :catch_b6

    :goto_94
    return-object v0

    :cond_95
    const/4 v0, 0x0

    goto/16 :goto_15

    :cond_98
    :try_start_98
    sget-object v0, Lcom/estrongs/android/pop/fs/m;->b:Ljava/lang/String;

    goto :goto_26

    :cond_9b
    invoke-virtual {p0}, Lde/aflx/sardine/DavResource;->getContentLength()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/estrongs/android/util/a/b;->c(J)Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a6} :catch_a8

    move-result-object v0

    goto :goto_36

    :catch_a8
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_ac
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    goto :goto_94

    :catch_b6
    move-exception v1

    goto :goto_ac

    :cond_b8
    move v2, v0

    goto/16 :goto_16
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;ZZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/estrongs/android/pop/fs/m;->a(Landroid/content/Context;Ljava/lang/String;ZZZ)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZZ)Ljava/util/Map;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZZZ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, "80"

    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_37f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_3a1

    move-result-object v5

    :try_start_9
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_385
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_3a1

    move-result-object v6

    :try_start_11
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "webdavs://"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v5, :cond_3c7

    const-string v7, "fake"
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_38b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_3a5

    :goto_21
    if-nez v2, :cond_3c4

    :try_start_23
    const-string v2, "fake"

    move-object v4, v2

    :goto_26
    if-nez v3, :cond_3c1

    if-eqz v9, :cond_3a

    const-string v2, "443"
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_390
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_3aa

    :goto_2c
    move-object v5, v2

    :goto_2d
    :try_start_2d
    invoke-static {v7, v4, v6, v5}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_3b0

    move-result-object v8

    if-nez v8, :cond_3d

    if-eqz v8, :cond_38

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_38
    const/4 v2, 0x0

    :cond_39
    :goto_39
    return-object v2

    :cond_3a
    :try_start_3a
    const-string v2, "80"
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_390
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3c} :catch_3aa

    goto :goto_2c

    :cond_3d
    :try_start_3d
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v9, :cond_b0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "443"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const-string v2, ""

    :goto_58
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "%2F"

    const-string v11, "/"

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "+"

    const-string v11, "%20"

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_79
    if-eqz p4, :cond_f7

    invoke-static {v7, v4, v10}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_7f
    if-eqz p4, :cond_f9

    invoke-static {v11}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v2

    move-object/from16 v18, v2

    :goto_87
    if-eqz v18, :cond_100

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/estrongs/android/util/h;->e:Z

    if-nez v2, :cond_95

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/estrongs/android/util/h;->b:Z

    if-eqz v2, :cond_100

    :cond_95
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_9a
    .catchall {:try_start_3d .. :try_end_9a} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_9a} :catch_1e6

    if-eqz v8, :cond_39

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    goto :goto_39

    :cond_a0
    :try_start_a0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_58

    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v2, "80"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    const-string v2, ""

    :goto_c5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "%2F"

    const-string v11, "/"

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "+"

    const-string v11, "%20"

    invoke-virtual {v3, v9, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_79

    :cond_e7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c5

    :cond_f7
    const/4 v11, 0x0

    goto :goto_7f

    :cond_f9
    invoke-static/range {p1 .. p1}, Lcom/estrongs/android/util/g;->c(Ljava/lang/String;)Lcom/estrongs/android/util/h;

    move-result-object v2

    move-object/from16 v18, v2

    goto :goto_87

    :cond_100
    const/4 v2, 0x1

    invoke-interface {v8, v3, v2}, Lde/aflx/sardine/Sardine;->list(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v9

    const/4 v4, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->k()I

    move-result v19

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->l()I

    move-result v10

    const/4 v2, 0x0

    if-nez v19, :cond_18d

    new-instance v4, Lcom/estrongs/android/pop/b/d;

    invoke-direct {v4, v3, v10}, Lcom/estrongs/android/pop/b/d;-><init>(Ljava/util/Map;I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    :goto_128
    if-eqz v2, :cond_1df

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    :goto_12f
    if-nez p2, :cond_1fd

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->m()Z

    move-result v2

    if-nez v2, :cond_1fd

    const/4 v2, 0x0

    move v15, v2

    :goto_13d
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->b()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_201

    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->j()Z

    move-result v2

    if-nez v2, :cond_201

    const/4 v2, 0x0

    move v14, v2

    :goto_154
    invoke-static/range {p0 .. p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->V()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/m;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v9, :cond_182

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move v13, v2

    :cond_166
    :goto_166
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_205

    if-eqz v16, :cond_182

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_182

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_369

    :cond_182
    const/4 v2, 0x0

    sput-object v2, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_185
    .catchall {:try_start_a0 .. :try_end_185} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_185} :catch_1e6

    if-eqz v8, :cond_18a

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_18a
    move-object v2, v4

    goto/16 :goto_39

    :cond_18d
    const/4 v12, 0x1

    move/from16 v0, v19

    if-ne v0, v12, :cond_19d

    :try_start_192
    new-instance v4, Lcom/estrongs/android/pop/b/e;

    invoke-direct {v4, v3, v10}, Lcom/estrongs/android/pop/b/e;-><init>(Ljava/util/Map;I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    goto :goto_128

    :cond_19d
    const/4 v12, 0x2

    move/from16 v0, v19

    if-ne v0, v12, :cond_1ae

    new-instance v4, Lcom/estrongs/android/pop/b/c;

    invoke-direct {v4, v3, v10}, Lcom/estrongs/android/pop/b/c;-><init>(Ljava/util/Map;I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    goto/16 :goto_128

    :cond_1ae
    const/4 v12, 0x3

    move/from16 v0, v19

    if-ne v0, v12, :cond_1bf

    new-instance v4, Lcom/estrongs/android/pop/b/b;

    invoke-direct {v4, v3, v10}, Lcom/estrongs/android/pop/b/b;-><init>(Ljava/util/Map;I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    goto/16 :goto_128

    :cond_1bf
    const/4 v12, 0x4

    move/from16 v0, v19

    if-ne v0, v12, :cond_3ba

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/util/ah;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/estrongs/android/pop/b/f;

    invoke-direct {v4, v3, v10}, Lcom/estrongs/android/pop/b/f;-><init>(Ljava/util/Map;I)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    goto/16 :goto_128

    :cond_1df
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_1e4
    .catchall {:try_start_192 .. :try_end_1e4} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_1e4} :catch_1e6

    goto/16 :goto_12f

    :catch_1e6
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    :goto_1eb
    :try_start_1eb
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_394

    const/4 v8, 0x0

    :try_start_1ef
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_1f5
    .catchall {:try_start_1ef .. :try_end_1f5} :catchall_39b

    const/4 v2, 0x0

    if-eqz v8, :cond_39

    invoke-static {v5, v4, v3, v8}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    goto/16 :goto_39

    :cond_1fd
    const/4 v2, 0x1

    move v15, v2

    goto/16 :goto_13d

    :cond_201
    const/4 v2, 0x1

    move v14, v2

    goto/16 :goto_154

    :cond_205
    :try_start_205
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_166

    if-nez v13, :cond_211

    const/4 v2, 0x1

    move v13, v2

    goto/16 :goto_166

    :cond_211
    check-cast v2, Lde/aflx/sardine/DavResource;

    invoke-virtual {v2}, Lde/aflx/sardine/DavResource;->getName()Ljava/lang/String;

    move-result-object v9

    if-nez v15, :cond_224

    if-eqz v9, :cond_224

    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v10, 0x2e

    if-eq v3, v10, :cond_166

    :cond_224
    const-string v3, "."

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_166

    const-string v3, ".."

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_166

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/estrongs/android/util/g;->a(Lcom/estrongs/android/util/h;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_166

    invoke-virtual {v2}, Lde/aflx/sardine/DavResource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3b7

    invoke-virtual {v2}, Lde/aflx/sardine/DavResource;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29f

    const/4 v3, 0x1

    :goto_24f
    move v12, v3

    :goto_250
    new-instance v10, Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2a1

    move-object v3, v11

    :goto_255
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v12, :cond_2a4

    const-string v3, "/"

    :goto_264
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    if-eqz v19, :cond_273

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2a7

    :cond_273
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27e
    :goto_27e
    if-eqz v14, :cond_358

    invoke-static {v2}, Lcom/estrongs/android/pop/fs/m;->a(Lde/aflx/sardine/DavResource;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    aput-object v2, v3, v9

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_296
    .catchall {:try_start_205 .. :try_end_296} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_205 .. :try_end_296} :catch_1e6

    goto/16 :goto_166

    :catchall_298
    move-exception v2

    :goto_299
    if-eqz v8, :cond_29e

    invoke-static {v7, v6, v5, v8}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_29e
    throw v2

    :cond_29f
    const/4 v3, 0x0

    goto :goto_24f

    :cond_2a1
    move-object/from16 v3, p1

    goto :goto_255

    :cond_2a4
    :try_start_2a4
    const-string v3, ""

    goto :goto_264

    :cond_2a7
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_2d3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/16 v22, 0x1

    if-eqz v12, :cond_2ca

    const-wide/16 v9, 0x0

    :goto_2bc
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27e

    :cond_2ca
    invoke-virtual {v2}, Lde/aflx/sardine/DavResource;->getContentLength()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_2bc

    :cond_2d3
    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_2f9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    invoke-virtual {v2}, Lde/aflx/sardine/DavResource;->getModified()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27e

    :cond_2f9
    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v0, v3, :cond_27e

    if-nez v16, :cond_322

    const/4 v3, 0x0

    :goto_301
    if-eqz v3, :cond_33c

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    aput-object v22, v9, v10

    const/4 v10, 0x1

    iget v3, v3, Lcom/estrongs/android/util/aj;->e:I

    int-to-long v0, v3

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27e

    :cond_322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/estrongs/android/util/aj;

    goto :goto_301

    :cond_33c
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-wide/16 v22, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_27e

    :cond_358
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v2, v3

    move-object/from16 v0, v21

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_166

    :cond_369
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/util/aj;

    invoke-static {}, Lcom/estrongs/android/util/ah;->b()Lcom/estrongs/android/util/ah;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v2, v10}, Lcom/estrongs/android/util/ah;->a(Lcom/estrongs/android/util/aj;Z)V
    :try_end_37d
    .catchall {:try_start_2a4 .. :try_end_37d} :catchall_298
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_37d} :catch_1e6

    goto/16 :goto_17c

    :catchall_37f
    move-exception v2

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_299

    :catchall_385
    move-exception v2

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_299

    :catchall_38b
    move-exception v2

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_299

    :catchall_390
    move-exception v2

    move-object v5, v3

    goto/16 :goto_299

    :catchall_394
    move-exception v2

    move-object v7, v5

    move-object v8, v6

    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_299

    :catchall_39b
    move-exception v2

    move-object v6, v4

    move-object v7, v5

    move-object v5, v3

    goto/16 :goto_299

    :catch_3a1
    move-exception v2

    move-object v6, v8

    goto/16 :goto_1eb

    :catch_3a5
    move-exception v2

    move-object v4, v6

    move-object v6, v8

    goto/16 :goto_1eb

    :catch_3aa
    move-exception v2

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_1eb

    :catch_3b0
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    goto/16 :goto_1eb

    :cond_3b7
    move v12, v3

    goto/16 :goto_250

    :cond_3ba
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v4

    goto/16 :goto_128

    :cond_3c1
    move-object v5, v3

    goto/16 :goto_2d

    :cond_3c4
    move-object v4, v2

    goto/16 :goto_26

    :cond_3c7
    move-object v7, v5

    goto/16 :goto_21
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 15

    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_11e

    const/4 v2, 0x0

    const v1, 0x7f09017a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/pop/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->c(J)V

    :goto_1c
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "80"

    :try_start_21
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "webdavs://"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v6, :cond_3b

    const-string v6, "fake"

    :cond_3b
    if-nez v3, :cond_11b

    const-string v3, "fake"

    move-object v8, v3

    :goto_40
    if-nez v4, :cond_47

    if-eqz v9, :cond_5f

    const-string v3, "443"

    :goto_46
    move-object v4, v3

    :cond_47
    invoke-static {v6, v8, v5, v4}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4a} :catch_102

    move-result-object v7

    if-nez v7, :cond_62

    const/4 v3, 0x0

    :goto_4e
    if-eqz v7, :cond_53

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_53
    :goto_53
    const-wide/16 v4, -0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_5b

    if-nez v3, :cond_5e

    :cond_5b
    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/d/a;->a(JZ)V

    :cond_5e
    return v3

    :cond_5f
    :try_start_5f
    const-string v3, "80"

    goto :goto_46

    :cond_62
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_bc

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "https://"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v3, "443"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    const-string v3, ""

    :goto_7d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%2F"

    const-string v10, "/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "+"

    const-string v10, "%20"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9d
    invoke-interface {v7, v3}, Lde/aflx/sardine/Sardine;->delete(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/fs/m;->g(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-object v3, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_4e

    :cond_ac
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7d

    :cond_bc
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "http://"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v3, "80"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    const-string v3, ""

    :goto_d1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "%2F"

    const-string v10, "/"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "+"

    const-string v10, "%20"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9d

    :cond_f2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_100
    .catchall {:try_start_5f .. :try_end_100} :catchall_114
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_100} :catch_102

    move-result-object v3

    goto :goto_d1

    :catch_102
    move-exception v3

    :try_start_103
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_10c
    .catchall {:try_start_103 .. :try_end_10c} :catchall_114

    const/4 v3, 0x0

    if-eqz v7, :cond_53

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    goto/16 :goto_53

    :catchall_114
    move-exception v0

    if-eqz v7, :cond_11a

    invoke-static {v6, v5, v4, v7}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_11a
    throw v0

    :cond_11b
    move-object v8, v3

    goto/16 :goto_40

    :cond_11e
    move-wide v1, p2

    goto/16 :goto_1c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 6

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_184
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_197

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_18d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_19b

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "webdavs://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v5, :cond_1e

    const-string v5, "fake"

    :cond_1e
    if-nez v0, :cond_1a6

    const-string v0, "fake"

    move-object v6, v0

    :goto_23
    if-nez v2, :cond_2a

    if-eqz v7, :cond_37

    const-string v0, "443"

    :goto_29
    move-object v2, v0

    :cond_2a
    invoke-static {v5, v6, v3, v2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_1a1

    move-result-object v4

    if-nez v4, :cond_3a

    if-eqz v4, :cond_35

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_35
    move v0, v1

    :goto_36
    return v0

    :cond_37
    :try_start_37
    const-string v0, "80"
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_39} :catch_1a1

    goto :goto_29

    :cond_3a
    :try_start_3a
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_de

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "443"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, ""

    :goto_59
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v9, "/"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v9, "%20"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "443"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ce

    const-string v0, ""

    :goto_8e
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%2F"

    const-string v9, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_ae
    if-eqz p2, :cond_16a

    invoke-interface {v4, v6, v0}, Lde/aflx/sardine/Sardine;->copy(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b3
    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_b6
    .catchall {:try_start_3a .. :try_end_b6} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_b6} :catch_16f

    if-eqz v4, :cond_bb

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_bb
    const/4 v0, 0x1

    goto/16 :goto_36

    :cond_be
    :try_start_be
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8e

    :cond_de
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "80"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14a

    const-string v0, ""

    :goto_f3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v9, "/"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v9, "%20"

    invoke-virtual {v6, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "80"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15a

    const-string v0, ""

    :goto_128
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%2F"

    const-string v9, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_ae

    :cond_14a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f3

    :cond_15a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_128

    :cond_16a
    invoke-interface {v4, v6, v0}, Lde/aflx/sardine/Sardine;->move(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_be .. :try_end_16d} :catchall_190
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_16d} :catch_16f

    goto/16 :goto_b3

    :catch_16f
    move-exception v0

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    :goto_173
    :try_start_173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_17c
    .catchall {:try_start_173 .. :try_end_17c} :catchall_192

    if-eqz v5, :cond_181

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_181
    move v0, v1

    goto/16 :goto_36

    :catchall_184
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_187
    if-eqz v4, :cond_18c

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_18c
    throw v0

    :catchall_18d
    move-exception v0

    move-object v3, v4

    goto :goto_187

    :catchall_190
    move-exception v0

    goto :goto_187

    :catchall_192
    move-exception v0

    move-object v10, v4

    move-object v4, v5

    move-object v5, v10

    goto :goto_187

    :catch_197
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    goto :goto_173

    :catch_19b
    move-exception v0

    move-object v3, v4

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_173

    :catch_1a1
    move-exception v0

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_173

    :cond_1a6
    move-object v6, v0

    goto/16 :goto_23
.end method

.method public static b(Ljava/lang/String;)J
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_9

    const-wide/16 v0, -0x1

    :goto_8
    return-wide v0

    :cond_9
    iget-wide v0, v0, Lcom/estrongs/android/pop/d/e;->e:J

    goto :goto_8
.end method

.method public static b(Ljava/lang/String;J)Ljava/io/OutputStream;
    .registers 15

    const/4 v11, 0x0

    const-string v0, "80"

    :try_start_3
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "webdavs://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v8, :cond_1d

    const-string v8, "fake"

    :cond_1d
    if-nez v0, :cond_f7

    const-string v0, "fake"

    move-object v1, v0

    :goto_22
    if-nez v10, :cond_29

    if-eqz v2, :cond_31

    const-string v0, "443"

    :goto_28
    move-object v10, v0

    :cond_29
    invoke-static {v8, v1, v9, v10}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;

    move-result-object v4

    if-nez v4, :cond_34

    move-object v5, v11

    :goto_30
    return-object v5

    :cond_31
    const-string v0, "80"

    goto :goto_28

    :cond_34
    new-instance v6, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;

    invoke-direct {v6}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;-><init>()V

    new-instance v1, Ljava/io/PipedInputStream;

    invoke-direct {v1}, Ljava/io/PipedInputStream;-><init>()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_92

    :try_start_3e
    invoke-virtual {v1, v6}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_9e

    :try_start_41
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_b1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "443"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const-string v0, ""

    :goto_5c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%2F"

    const-string v5, "/"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v5, "%20"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7c
    new-instance v0, Lcom/estrongs/android/pop/fs/n;

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/fs/n;-><init>(Ljava/io/PipedInputStream;JLde/aflx/sardine/Sardine;Ljava/lang/String;Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;)V

    invoke-virtual {v6, v0, v1}, Lcom/estrongs/android/pop/netfs/utils/UploadOutputStream;->setTask(Ljava/lang/Thread;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    new-instance v5, Lcom/estrongs/android/pop/fs/p;

    move-object v7, v4

    invoke-direct/range {v5 .. v10}, Lcom/estrongs/android/pop/fs/p;-><init>(Ljava/io/OutputStream;Lde/aflx/sardine/Sardine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_91} :catch_92

    goto :goto_30

    :catch_92
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;

    move-object v5, v11

    goto :goto_30

    :catch_9e
    move-exception v0

    move-object v5, v11

    goto :goto_30

    :cond_a1
    :try_start_a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "80"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e7

    const-string v0, ""

    :goto_c6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%2F"

    const-string v5, "/"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "+"

    const-string v5, "%20"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7c

    :cond_e7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_f5} :catch_92

    move-result-object v0

    goto :goto_c6

    :cond_f7
    move-object v1, v0

    goto/16 :goto_22
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V
    .registers 9

    sget-object v1, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    monitor-exit v1

    return-void

    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/estrongs/android/pop/fs/m;->c:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_62

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/fs/m;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/pop/fs/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-static {p1}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p2, :cond_1b

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    :cond_19
    :goto_19
    const/4 v0, 0x1

    goto :goto_d

    :cond_1b
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/e/a;->a(Ljava/lang/String;)V

    goto :goto_19
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Z)Z
    .registers 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/m;->e(Ljava/lang/String;)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    const-string v3, "22"

    :try_start_c
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_fe
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_e9

    move-result-object v6

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_107
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_112

    move-result-object v4

    :try_start_18
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "webdavs://"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v6, :cond_26

    const-string v6, "fake"

    :cond_26
    if-nez v0, :cond_124

    const-string v0, "fake"

    move-object v7, v0

    :goto_2b
    if-nez v3, :cond_32

    if-eqz v8, :cond_3f

    const-string v0, "443"

    :goto_31
    move-object v3, v0

    :cond_32
    invoke-static {v6, v7, v4, v3}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_35} :catch_118

    move-result-object v5

    if-nez v5, :cond_42

    if-eqz v5, :cond_3d

    invoke-static {v6, v4, v3, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_3d
    move v0, v1

    goto :goto_9

    :cond_3f
    :try_start_3f
    const-string v0, "80"
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_118

    goto :goto_31

    :cond_42
    :try_start_42
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "https://"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v0, "443"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, ""

    :goto_5d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%2F"

    const-string v9, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7d
    const/4 v7, 0x1

    new-array v7, v7, [B

    const/4 v8, 0x0

    const/16 v9, 0x20

    aput-byte v9, v7, v8

    invoke-interface {v5, v0, v7}, Lde/aflx/sardine/Sardine;->put(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_8b
    .catchall {:try_start_42 .. :try_end_8b} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_8b} :catch_11e

    if-eqz v5, :cond_90

    invoke-static {v6, v4, v3, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_90
    move v0, v2

    goto/16 :goto_9

    :cond_93
    :try_start_93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5d

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "http://"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v0, "80"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    const-string v0, ""

    :goto_b8
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%2F"

    const-string v9, "/"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "+"

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7d

    :cond_d9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e7
    .catchall {:try_start_93 .. :try_end_e7} :catchall_10a
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_e7} :catch_11e

    move-result-object v0

    goto :goto_b8

    :catch_e9
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v3, v5

    :goto_ed
    :try_start_ed
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_f6
    .catchall {:try_start_ed .. :try_end_f6} :catchall_10c

    if-eqz v4, :cond_fb

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_fb
    move v0, v1

    goto/16 :goto_9

    :catchall_fe
    move-exception v0

    move-object v4, v5

    move-object v6, v5

    :goto_101
    if-eqz v5, :cond_106

    invoke-static {v6, v4, v3, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_106
    throw v0

    :catchall_107
    move-exception v0

    move-object v4, v5

    goto :goto_101

    :catchall_10a
    move-exception v0

    goto :goto_101

    :catchall_10c
    move-exception v0

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_101

    :catch_112
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    move-object v3, v5

    move-object v5, v6

    goto :goto_ed

    :catch_118
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_ed

    :catch_11e
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_ed

    :cond_124
    move-object v7, v0

    goto/16 :goto_2b
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/d/e;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-boolean v0, v0, Lcom/estrongs/android/pop/d/e;->d:Z

    goto :goto_7
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "80"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_d5

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_f2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_fc

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "webdavs://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v5, :cond_1e

    const-string v5, "fake"

    :cond_1e
    if-nez v0, :cond_10c

    const-string v0, "fake"

    move-object v6, v0

    :goto_23
    if-nez v2, :cond_2a

    if-eqz v7, :cond_37

    const-string v0, "443"

    :goto_29
    move-object v2, v0

    :cond_2a
    invoke-static {v5, v6, v3, v2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_102

    move-result-object v4

    if-nez v4, :cond_3a

    if-eqz v4, :cond_35

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_35
    move v0, v1

    :cond_36
    :goto_36
    return v0

    :cond_37
    :try_start_37
    const-string v0, "80"
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_39} :catch_102

    goto :goto_29

    :cond_3a
    :try_start_3a
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_8f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "443"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, ""

    :goto_55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-interface {v4, v0}, Lde/aflx/sardine/Sardine;->exists(Ljava/lang/String;)Z
    :try_end_78
    .catchall {:try_start_3a .. :try_end_78} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_78} :catch_107

    move-result v0

    if-eqz v4, :cond_36

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    goto :goto_36

    :cond_7f
    :try_start_7f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "80"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    const-string v0, ""

    :goto_a4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_c5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d3
    .catchall {:try_start_7f .. :try_end_d3} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_d3} :catch_107

    move-result-object v0

    goto :goto_a4

    :catch_d5
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_d8
    :try_start_d8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_f7

    if-eqz v5, :cond_e6

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_e6
    move v0, v1

    goto/16 :goto_36

    :catchall_e9
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_ec
    if-eqz v4, :cond_f1

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_f1
    throw v0

    :catchall_f2
    move-exception v0

    move-object v3, v4

    goto :goto_ec

    :catchall_f5
    move-exception v0

    goto :goto_ec

    :catchall_f7
    move-exception v0

    move-object v9, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_ec

    :catch_fc
    move-exception v0

    move-object v3, v4

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_d8

    :catch_102
    move-exception v0

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_d8

    :catch_107
    move-exception v0

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_d8

    :cond_10c
    move-object v6, v0

    goto/16 :goto_23
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v2, "22"

    :try_start_4
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->n(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_ec
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_d8

    move-result-object v5

    :try_start_8
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_f5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_ff

    move-result-object v3

    :try_start_10
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "webdavs://"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v5, :cond_1e

    const-string v5, "fake"

    :cond_1e
    if-nez v0, :cond_10f

    const-string v0, "fake"

    move-object v6, v0

    :goto_23
    if-nez v2, :cond_2a

    if-eqz v7, :cond_37

    const-string v0, "443"

    :goto_29
    move-object v2, v0

    :cond_2a
    invoke-static {v5, v6, v3, v2}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/aflx/sardine/Sardine;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2d} :catch_105

    move-result-object v4

    if-nez v4, :cond_3a

    if-eqz v4, :cond_35

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_35
    move v0, v1

    :goto_36
    return v0

    :cond_37
    :try_start_37
    const-string v0, "80"
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_39} :catch_105

    goto :goto_29

    :cond_3a
    :try_start_3a
    invoke-static {p0}, Lcom/estrongs/android/pop/a/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_92

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "https://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "443"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    const-string v0, ""

    :goto_55
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-interface {v4, v0}, Lde/aflx/sardine/Sardine;->createDirectory(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_7b
    .catchall {:try_start_3a .. :try_end_7b} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_7b} :catch_10a

    if-eqz v4, :cond_80

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_80
    const/4 v0, 0x1

    goto :goto_36

    :cond_82
    :try_start_82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_55

    :cond_92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v0, "80"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    const-string v0, ""

    :goto_a7
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%2F"

    const-string v8, "/"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "+"

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    :cond_c8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d6
    .catchall {:try_start_82 .. :try_end_d6} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_d6} :catch_10a

    move-result-object v0

    goto :goto_a7

    :catch_d8
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_db
    :try_start_db
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/fs/m;->a:Ljava/lang/String;
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_fa

    if-eqz v5, :cond_e9

    invoke-static {v4, v3, v2, v5}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_e9
    move v0, v1

    goto/16 :goto_36

    :catchall_ec
    move-exception v0

    move-object v3, v4

    move-object v5, v4

    :goto_ef
    if-eqz v4, :cond_f4

    invoke-static {v5, v3, v2, v4}, Lcom/estrongs/android/pop/fs/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lde/aflx/sardine/Sardine;)V

    :cond_f4
    throw v0

    :catchall_f5
    move-exception v0

    move-object v3, v4

    goto :goto_ef

    :catchall_f8
    move-exception v0

    goto :goto_ef

    :catchall_fa
    move-exception v0

    move-object v9, v4

    move-object v4, v5

    move-object v5, v9

    goto :goto_ef

    :catch_ff
    move-exception v0

    move-object v3, v4

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_db

    :catch_105
    move-exception v0

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_db

    :catch_10a
    move-exception v0

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    goto :goto_db

    :cond_10f
    move-object v6, v0

    goto/16 :goto_23
.end method

.method public static f(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/fs/m;->a(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->o(Ljava/lang/String;)V

    :cond_9
    return-void
.end method
