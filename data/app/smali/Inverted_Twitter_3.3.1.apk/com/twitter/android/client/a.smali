.class public final Lcom/twitter/android/client/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/twitter/android/client/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/a;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/twitter/android/client/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;J)J
    .registers 8

    iget-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lcom/twitter/android/client/a;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    :cond_c
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/twitter/android/client/a;
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Lcom/twitter/android/client/a;
    .registers 8

    iget-object v1, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/twitter/android/client/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_43

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2f
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_43
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4b

    :cond_5b
    return-object p0
.end method

.method public final b(Ljava/lang/String;I)Lcom/twitter/android/client/a;
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public final b(Ljava/lang/String;J)Lcom/twitter/android/client/a;
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Z)Lcom/twitter/android/client/a;
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/twitter/android/client/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/twitter/android/client/a;->c:Landroid/content/SharedPreferences$Editor;

    return v0
.end method
