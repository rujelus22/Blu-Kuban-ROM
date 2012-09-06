.class public final Lcom/twitter/android/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/LoaderManager;

.field private final c:Lcom/twitter/android/gj;

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/twitter/android/gj;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/gi;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/gi;->b:Landroid/support/v4/app/LoaderManager;

    iput-object p3, p0, Lcom/twitter/android/gi;->c:Lcom/twitter/android/gj;

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/gi;->d:I

    return-void
.end method

.method private a(ZJLjava/lang/String;J)V
    .registers 10

    const/4 v2, 0x0

    iput-wide p2, p0, Lcom/twitter/android/gi;->e:J

    iput-object p4, p0, Lcom/twitter/android/gi;->f:Ljava/lang/String;

    iput-wide p5, p0, Lcom/twitter/android/gi;->g:J

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/twitter/android/gi;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/gi;->d:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/twitter/android/gi;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/twitter/android/gi;->d:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_10
.end method


# virtual methods
.method public final a(JLjava/lang/String;J)V
    .registers 13

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gi;->a(ZJLjava/lang/String;J)V

    return-void
.end method

.method public final b(JLjava/lang/String;J)V
    .registers 13

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/twitter/android/gi;->a(ZJLjava/lang/String;J)V

    return-void
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/gi;->f:Ljava/lang/String;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/twitter/android/provider/ad;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-wide v2, p0, Lcom/twitter/android/gi;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "username=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/twitter/android/gi;->f:Ljava/lang/String;

    aput-object v1, v5, v0

    :goto_25
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/twitter/android/gi;->a:Landroid/content/Context;

    sget-object v3, Lcom/twitter/android/provider/bc;->a:[Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2f
    sget-object v0, Lcom/twitter/android/provider/ad;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-wide v1, p0, Lcom/twitter/android/gi;->e:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ownerId"

    iget-wide v2, p0, Lcom/twitter/android/gi;->g:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v5, v6

    move-object v4, v6

    goto :goto_25
.end method

.method public final synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 5

    check-cast p2, Landroid/database/Cursor;

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {p2}, Lcom/twitter/android/provider/ae;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/ac;

    move-result-object v0

    :cond_f
    iget-object v1, p0, Lcom/twitter/android/gi;->c:Lcom/twitter/android/gj;

    invoke-interface {v1, v0}, Lcom/twitter/android/gj;->a(Lcom/twitter/android/api/ac;)V

    return-void
.end method

.method public final onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2

    return-void
.end method
