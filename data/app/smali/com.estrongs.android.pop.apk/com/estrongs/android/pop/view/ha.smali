.class Lcom/estrongs/android/pop/view/ha;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->f(Lcom/estrongs/android/pop/view/ff;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->k(Lcom/estrongs/android/pop/view/ff;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->k(Lcom/estrongs/android/pop/view/ff;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    :cond_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/a/c;->a(Landroid/app/Activity;Ljava/util/List;)I

    :cond_34
    return-void

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_41
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ha;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_51
    if-ge v0, v3, :cond_25

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_51
.end method
