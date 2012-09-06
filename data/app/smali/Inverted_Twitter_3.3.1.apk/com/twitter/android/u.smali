.class public final Lcom/twitter/android/u;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Landroid/net/Uri;

.field private c:[Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/twitter/android/u;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/twitter/android/u;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/u;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/u;->e:[Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/u;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .registers 4

    invoke-virtual {p0}, Lcom/twitter/android/u;->isReset()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/twitter/android/u;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_19
    if-eqz v0, :cond_b

    if-eq v0, p1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b
.end method


# virtual methods
.method public final synthetic deliverResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/twitter/android/u;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic loadInBackground()Ljava/lang/Object;
    .registers 7

    invoke-virtual {p0}, Lcom/twitter/android/u;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/u;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/twitter/android/u;->c:[Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/u;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/u;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcom/twitter/android/u;->f:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    :cond_1b
    return-object v0
.end method

.method public final synthetic onCanceled(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void
.end method

.method protected final onReset()V
    .registers 3

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/twitter/android/u;->cancelLoad()Z

    iget-object v0, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    return-void
.end method

.method protected final onStartLoading()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/u;->a:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/twitter/android/u;->a(Landroid/database/Cursor;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/twitter/android/u;->forceLoad()V

    goto :goto_9
.end method

.method protected final onStopLoading()V
    .registers 1

    invoke-virtual {p0}, Lcom/twitter/android/u;->cancelLoad()Z

    return-void
.end method
