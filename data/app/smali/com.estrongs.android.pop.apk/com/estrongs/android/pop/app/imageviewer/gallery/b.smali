.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/f;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/estrongs/android/pop/d/f;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/d/f;

    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "/sdcard"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_30
    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_21
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/d/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/estrongs/android/pop/d/f;->a(Ljava/lang/String;ZZ)Ljava/util/Map;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_28} :catch_2d

    move-result-object v0

    move-object v6, v0

    :goto_2a
    if-nez v6, :cond_30

    :cond_2c
    return-void

    :catch_2d
    move-exception v1

    move-object v6, v0

    goto :goto_2a

    :cond_30
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :cond_3d
    :goto_3d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v9

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {v3}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v8, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;J)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3d
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_d
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->b:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/estrongs/android/pop/d/f;->b(JLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method
