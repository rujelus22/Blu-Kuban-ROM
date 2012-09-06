.class public Lcom/estrongs/android/widget/w;
.super Ljava/lang/Object;


# static fields
.field private static final j:Ljava/io/FileFilter;


# instance fields
.field private a:Lcom/estrongs/android/widget/aa;

.field protected b:Ljava/io/File;

.field protected c:[Ljava/io/File;

.field protected d:Lcom/estrongs/android/widget/ap;

.field protected e:Lcom/estrongs/android/widget/al;

.field protected f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/estrongs/android/widget/af;

.field private i:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/estrongs/android/widget/y;

    invoke-direct {v0}, Lcom/estrongs/android/widget/y;-><init>()V

    sput-object v0, Lcom/estrongs/android/widget/w;->j:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/widget/al;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/w;->e:Lcom/estrongs/android/widget/al;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/w;->g:Ljava/util/List;

    new-instance v0, Lcom/estrongs/android/widget/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/x;-><init>(Lcom/estrongs/android/widget/w;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/w;->i:Ljava/io/FileFilter;

    iput-object p2, p0, Lcom/estrongs/android/widget/w;->e:Lcom/estrongs/android/widget/al;

    new-instance v0, Lcom/estrongs/android/widget/z;

    invoke-direct {v0, p0, p1, p1}, Lcom/estrongs/android/widget/z;-><init>(Lcom/estrongs/android/widget/w;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/w;->d:Lcom/estrongs/android/widget/ap;

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->e:Lcom/estrongs/android/widget/al;

    iget-object v1, p0, Lcom/estrongs/android/widget/w;->d:Lcom/estrongs/android/widget/ap;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/al;->a(Lcom/estrongs/android/widget/an;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/w;)Ljava/io/FileFilter;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->i:Ljava/io/FileFilter;

    return-object v0
.end method

.method static synthetic e()Ljava/io/FileFilter;
    .registers 1

    sget-object v0, Lcom/estrongs/android/widget/w;->j:Ljava/io/FileFilter;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    :cond_a
    const/4 v0, -0x1

    :cond_b
    return v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/w;->d(Ljava/io/File;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/w;->h:Lcom/estrongs/android/widget/af;

    return-void
.end method

.method protected a(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method protected a(Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/io/File;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->h:Lcom/estrongs/android/widget/af;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->h:Lcom/estrongs/android/widget/af;

    invoke-interface {v0, p1}, Lcom/estrongs/android/widget/af;->a(Ljava/io/File;)V

    :cond_14
    iput-object p1, p0, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    :cond_16
    iput-object p2, p0, Lcom/estrongs/android/widget/w;->f:Ljava/util/Comparator;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/w;->b()V

    new-instance v0, Lcom/estrongs/android/widget/aa;

    iget-object v1, p0, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/widget/aa;-><init>(Lcom/estrongs/android/widget/w;Ljava/io/File;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/aa;

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/aa;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public a(Ljava/io/FileFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/w;->i:Ljava/io/FileFilter;

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/aa;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->a:Lcom/estrongs/android/widget/aa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/aa;->cancel(Z)Z

    :cond_a
    return-void
.end method

.method protected b(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public c()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    return-object v0
.end method

.method protected c(Ljava/io/File;)V
    .registers 2

    return-void
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/w;->g:Ljava/util/List;

    return-object v0
.end method

.method public d(Ljava/io/File;)V
    .registers 3

    sget-object v0, Lcom/estrongs/android/a/d;->a:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/util/Comparator;)V

    return-void
.end method
