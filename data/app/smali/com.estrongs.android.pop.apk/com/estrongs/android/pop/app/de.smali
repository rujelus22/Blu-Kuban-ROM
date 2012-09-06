.class Lcom/estrongs/android/pop/app/de;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->e(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Lcom/estrongs/android/pop/d/f;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->f(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_18

    move-result-object v0

    move-object v3, v0

    :goto_15
    if-nez v3, :cond_1b

    :goto_17
    return-void

    :catch_18
    move-exception v1

    move-object v3, v0

    goto :goto_15

    :cond_1b
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move v0, v2

    :goto_43
    iget-object v1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_75

    iget-object v0, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/dh;->a()V

    goto :goto_17

    :cond_55
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_75
    iget-object v1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->g(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/de;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->a(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;I)V

    :cond_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_43
.end method
