.class public final Lcom/dropbox/android/util/K;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/dropbox/android/util/L;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 35
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->s()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->v()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {p0}, Lcom/dropbox/android/util/t;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {p0}, Lcom/dropbox/android/util/aq;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 41
    invoke-static {p0}, Lcom/dropbox/android/util/K;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 42
    sget-object v1, Lcom/dropbox/android/util/aw;->a:Lcom/dropbox/android/util/aw;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v3, v3}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->j(Z)V

    .line 44
    sget-object v0, Lcom/dropbox/android/util/L;->c:Lcom/dropbox/android/util/L;

    .line 49
    :goto_39
    return-object v0

    .line 47
    :cond_3a
    sget-object v0, Lcom/dropbox/android/util/L;->b:Lcom/dropbox/android/util/L;

    goto :goto_39

    .line 49
    :cond_3d
    sget-object v0, Lcom/dropbox/android/util/L;->a:Lcom/dropbox/android/util/L;

    goto :goto_39
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 18
    .parameter

    .prologue
    .line 54
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ldbxyzptlk/j/m;->u()I

    move-result v1

    .line 57
    invoke-virtual {v3}, Ldbxyzptlk/j/m;->t()Ljava/util/Map;

    move-result-object v4

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 61
    invoke-static {}, Lcom/dropbox/android/filemanager/L;->a()[Lcom/dropbox/android/filemanager/L;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_18
    if-ge v2, v7, :cond_7b

    aget-object v1, v6, v2

    .line 62
    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/L;->b()Landroid/net/Uri;

    move-result-object v8

    .line 64
    invoke-static {v5, v8}, Lcom/dropbox/android/util/as;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/dropbox/android/util/as;

    move-result-object v9

    .line 65
    if-nez v9, :cond_2c

    move v1, v0

    .line 61
    :cond_27
    :goto_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_18

    .line 69
    :cond_2c
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v10

    .line 70
    const-string v1, "_data"

    invoke-virtual {v9, v1}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v11

    move v1, v0

    .line 71
    :goto_39
    invoke-virtual {v9}, Lcom/dropbox/android/util/as;->a()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 72
    invoke-virtual {v9, v10}, Lcom/dropbox/android/util/as;->a(I)J

    move-result-wide v12

    .line 73
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 74
    if-nez v0, :cond_5b

    .line 75
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 81
    :cond_5b
    invoke-virtual {v9, v11}, Lcom/dropbox/android/util/as;->b(I)Ljava/lang/String;

    move-result-object v14

    .line 82
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v0, v12, v15

    if-lez v0, :cond_75

    invoke-static {v14}, Lcom/dropbox/android/util/ar;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 83
    add-int/lit8 v0, v1, 0x1

    .line 84
    const/16 v1, 0xa

    if-lt v0, v1, :cond_79

    .line 85
    const/4 v0, 0x1

    .line 98
    :goto_74
    return v0

    .line 89
    :cond_75
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move v0, v1

    :cond_79
    move v1, v0

    .line 91
    goto :goto_39

    .line 96
    :cond_7b
    invoke-virtual {v3, v0}, Ldbxyzptlk/j/m;->a(I)V

    .line 97
    invoke-virtual {v3, v4}, Ldbxyzptlk/j/m;->a(Ljava/util/Map;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_74
.end method
