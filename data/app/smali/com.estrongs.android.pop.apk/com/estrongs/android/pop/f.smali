.class public Lcom/estrongs/android/pop/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/estrongs/android/pop/f;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/FileFilter;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, -0x1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "keyword"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v1, Lcom/estrongs/android/pop/j;

    const-string v0, "keyword"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    const-string v0, "category"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v1, Lcom/estrongs/android/pop/i;

    const-string v0, "category"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    :try_start_3b
    const-string v0, "minSize"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_8e

    move-result-wide v0

    move-wide v4, v0

    :goto_48
    :try_start_48
    const-string v0, "maxSize"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_53} :catch_91

    move-result-wide v0

    :goto_54
    cmp-long v7, v4, v2

    if-gtz v7, :cond_5c

    cmp-long v7, v0, v2

    if-lez v7, :cond_64

    :cond_5c
    new-instance v7, Lcom/estrongs/android/pop/k;

    invoke-direct {v7, v4, v5, v0, v1}, Lcom/estrongs/android/pop/k;-><init>(JJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_64
    :try_start_64
    const-string v0, "minDate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_94

    move-result-wide v0

    move-wide v4, v0

    :goto_71
    :try_start_71
    const-string v0, "maxDate"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7c} :catch_97

    move-result-wide v0

    :goto_7d
    cmp-long v7, v4, v2

    if-gtz v7, :cond_85

    cmp-long v2, v0, v2

    if-lez v2, :cond_8d

    :cond_85
    new-instance v2, Lcom/estrongs/android/pop/h;

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/estrongs/android/pop/h;-><init>(JJ)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8d
    return-object v6

    :catch_8e
    move-exception v0

    move-wide v4, v2

    goto :goto_48

    :catch_91
    move-exception v0

    move-wide v0, v2

    goto :goto_54

    :catch_94
    move-exception v0

    move-wide v4, v2

    goto :goto_71

    :catch_97
    move-exception v0

    move-wide v0, v2

    goto :goto_7d
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "&&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_11
    if-lt v0, v4, :cond_14

    return-object v2

    :cond_14
    aget-object v5, v3, v0

    if-eqz v5, :cond_2c

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2c

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2c

    aget-object v6, v5, v1

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method
