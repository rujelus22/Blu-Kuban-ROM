.class public Lcom/estrongs/android/widget/aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Throwable;

.field b:Ljava/io/File;

.field c:Z

.field final synthetic d:Lcom/estrongs/android/widget/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/w;Ljava/io/File;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/aa;->c:Z

    iput-object p2, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected a([Ljava/io/File;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v2, v2, Lcom/estrongs/android/widget/w;->b:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/estrongs/android/widget/aa;->c:Z

    if-eqz v0, :cond_19

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->c(Ljava/io/File;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->b(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;Ljava/lang/Throwable;)V

    goto :goto_18

    :cond_2e
    if-eqz p1, :cond_9c

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    array-length v3, p1

    move v0, v1

    :goto_3e
    if-lt v0, v3, :cond_7d

    iget-object v3, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    new-array v0, v1, [Ljava/io/File;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    iput-object v0, v3, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    :goto_4c
    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->f:Ljava/util/Comparator;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, v1, Lcom/estrongs/android/widget/w;->f:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_63
    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->d:Lcom/estrongs/android/widget/ap;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, v1, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/ap;->a([Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v0, v0, Lcom/estrongs/android/widget/w;->e:Lcom/estrongs/android/widget/al;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/al;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->b(Ljava/io/File;)V

    goto :goto_18

    :cond_7d
    aget-object v4, p1, v0

    iget-object v5, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v5, v5, Lcom/estrongs/android/widget/w;->g:Ljava/util/List;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    invoke-static {v5}, Lcom/estrongs/android/widget/w;->a(Lcom/estrongs/android/widget/w;)Ljava/io/FileFilter;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_99
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_9c
    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, v0, Lcom/estrongs/android/widget/w;->c:[Ljava/io/File;

    goto :goto_4c
.end method

.method protected varargs a([Ljava/lang/Void;)[Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    check-cast v0, [Ljava/io/File;

    :try_start_5
    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-static {}, Lcom/estrongs/android/widget/w;->e()Ljava/io/FileFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    goto :goto_17

    :cond_26
    iput-object v1, p0, Lcom/estrongs/android/widget/aa;->a:Ljava/lang/Throwable;

    goto :goto_17
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/aa;->a([Ljava/lang/Void;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->c(Ljava/io/File;)V

    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/aa;->a([Ljava/io/File;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/aa;->d:Lcom/estrongs/android/widget/w;

    iget-object v1, p0, Lcom/estrongs/android/widget/aa;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/w;->a(Ljava/io/File;)V

    return-void
.end method
