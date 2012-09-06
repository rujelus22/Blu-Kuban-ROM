.class public Lvi;
.super Ljava/lang/Object;
.source "JsCacheImpl.java"

# interfaces
.implements Lvg;


# instance fields
.field private final a:LFu;

.field private final a:LIL;

.field private final a:LXP;

.field private final a:Landroid/content/Context;

.field private final a:Lkm;


# direct methods
.method public constructor <init>(Landroid/content/Context;LIL;Lkm;LXP;LFu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lvi;->a:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lvi;->a:LIL;

    .line 58
    iput-object p3, p0, Lvi;->a:Lkm;

    .line 59
    iput-object p4, p0, Lvi;->a:LXP;

    .line 60
    iput-object p5, p0, Lvi;->a:LFu;

    .line 61
    return-void
.end method

.method static synthetic a(Lvi;)Lkm;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lvi;->a:Lkm;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lvk;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 170
    :try_start_1
    iget-object v0, p0, Lvi;->a:LIL;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-static {v0, p1, v1, v2, v3}, LJj;->a(LIL;Ljava/lang/String;Ljava/net/URI;IZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    const-string v0, "srcs"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 177
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 178
    const/4 v0, 0x0

    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_7d

    .line 179
    iget-object v3, p0, Lvi;->a:LFu;

    invoke-virtual {v3}, LFu;->a()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 180
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 183
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    goto :goto_50

    .line 188
    :catch_6e
    move-exception v0

    .line 189
    :try_start_6f
    const-string v1, "JsCache"

    const-string v2, "Failed to fetch manifest, reverting to local copy."

    invoke-static {v1, v2, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_ae

    .line 192
    iget-object v0, p0, Lvi;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    move-object v0, v8

    :goto_7c
    return-object v0

    .line 186
    :cond_7d
    :try_start_7d
    new-instance v0, Lvk;

    const-string v2, "jobset"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "buildLabel"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ttl"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    const-string v7, "flags"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ac

    const-string v7, "flags"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_a2
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lvk;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lvj;)V
    :try_end_a6
    .catchall {:try_start_7d .. :try_end_a6} :catchall_ae
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a6} :catch_6e

    .line 192
    iget-object v1, p0, Lvi;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    goto :goto_7c

    :cond_ac
    move-object v6, v8

    .line 186
    goto :goto_a2

    .line 192
    :catchall_ae
    move-exception v0

    iget-object v1, p0, Lvi;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0
.end method

.method static synthetic a(Lvi;Ljava/lang/String;Ljava/lang/String;)Lvk;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lvi;->a(Ljava/lang/String;Ljava/lang/String;)Lvk;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lvi;->a:LXP;

    iget-object v1, p0, Lvi;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, LXP;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)[B
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQO;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQO;

    .line 140
    const-string v3, "JsCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading JS from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, LQO;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v3, p0, Lvi;->a:LXP;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-interface {v0}, LQO;->a()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v5}, LXP;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 142
    invoke-interface {v0}, LQO;->b()V

    goto :goto_9

    .line 144
    :cond_48
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lvi;Ljava/lang/String;)[B
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lvi;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lvi;Ljava/util/List;)[B
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lvi;->a(Ljava/util/List;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    new-instance v0, Lvl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lvl;-><init>(Lvi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvh;Lvj;)V

    invoke-virtual {v0}, Lvl;->start()V

    .line 135
    return-void
.end method
