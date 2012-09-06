.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/c;
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

.field private final b:Ljava/text/Collator;

.field private c:Lcom/estrongs/android/pop/d/f;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->b:Ljava/text/Collator;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_24
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Ljava/lang/String;I)V

    :goto_2b
    return-void

    :cond_2c
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->b:Ljava/text/Collator;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/android/pop/d/f;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;)Ljava/text/Collator;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->b:Ljava/text/Collator;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .registers 13

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    :goto_10
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_1b

    array-length v8, v7

    const/4 v0, 0x0

    move v6, v0

    :goto_19
    if-lt v6, v8, :cond_25

    :cond_1b
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c(I)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :cond_25
    aget-object v1, v7, v6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_19

    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_45
    iget-object v9, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/j;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_59
    move-object p1, v2

    goto :goto_10
.end method

.method private c(I)Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/c;I)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 3

    const/4 v0, -0x1

    if-le p1, v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    :goto_13
    return-object v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

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

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->c:Lcom/estrongs/android/pop/d/f;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/estrongs/android/pop/d/f;->b(JLjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
