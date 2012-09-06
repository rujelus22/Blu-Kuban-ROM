.class Lcom/estrongs/android/pop/view/lb;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .registers 7

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lb;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/lb;->d:J

    new-instance v0, Lcom/estrongs/android/pop/view/lc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/lc;-><init>(Lcom/estrongs/android/pop/view/lb;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lb;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->g:Ljava/util/List;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/lb;->g:Ljava/util/List;

    :cond_1c
    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/estrongs/android/pop/view/lb;->e:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/lb;->f:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/lb;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Ljava/io/File;Landroid/os/Handler;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/lb;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/Property;->d(Lcom/estrongs/android/pop/view/Property;)Z

    move-result v1

    if-nez v1, :cond_b

    if-nez p1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_30

    iget v1, p0, Lcom/estrongs/android/pop/view/lb;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/view/lb;->c:I

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_26
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    :try_start_2a
    invoke-direct {p0, v3, p2}, Lcom/estrongs/android/pop/view/lb;->a(Ljava/io/File;Landroid/os/Handler;)V
    :try_end_2d
    .catch Ljava/lang/StackOverflowError; {:try_start_2a .. :try_end_2d} :catch_43

    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_30
    iget v1, p0, Lcom/estrongs/android/pop/view/lb;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/estrongs/android/pop/view/lb;->b:I

    iget-wide v1, p0, Lcom/estrongs/android/pop/view/lb;->d:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/estrongs/android/pop/view/lb;->d:J

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    :catch_43
    move-exception v3

    goto :goto_2d
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/lb;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/lb;->b:I

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/lb;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/view/lb;->c:I

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/lb;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/lb;)J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/view/lb;->d:J

    return-wide v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/lb;)Lcom/estrongs/android/pop/view/Property;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->a:Lcom/estrongs/android/pop/view/Property;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/lb;->h:Landroid/os/Handler;

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/pop/view/lb;->a(Ljava/io/File;Landroid/os/Handler;)V

    goto :goto_6
.end method
