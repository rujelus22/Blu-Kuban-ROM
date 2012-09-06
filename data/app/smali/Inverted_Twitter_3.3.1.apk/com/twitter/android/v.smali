.class public final Lcom/twitter/android/v;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Lcom/twitter/android/client/b;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/twitter/android/w;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twitter/android/w;)V
    .registers 4

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/v;->c:Lcom/twitter/android/w;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/v;->b:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/twitter/android/client/b;->a(Landroid/content/Context;)Lcom/twitter/android/client/b;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/v;->a:Lcom/twitter/android/client/b;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    check-cast p1, [Ljava/lang/CharSequence;

    array-length v2, p1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_24

    aget-object v3, p1, v1

    sget-object v4, Ld;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_f
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/twitter/android/v;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/twitter/android/client/b;->c(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_f

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/twitter/android/v;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/v;->c:Lcom/twitter/android/w;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/twitter/android/w;->b(I)V

    goto :goto_12
.end method
