.class Lcom/google/ads/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/m;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/google/ads/m;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/m;->b:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_2
    sget-object v0, Lcom/google/ads/j;->a:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/ads/m;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1a

    const-string v0, "Activity was null while getting the +1 button state."

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/ads/j;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    const-string v1, "has_plus1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v6, :cond_50

    move v0, v6

    :goto_3c
    iget-object v1, p0, Lcom/google/ads/m;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/ads/n;

    iget-object v3, p0, Lcom/google/ads/m;->b:Landroid/webkit/WebView;

    invoke-direct {v2, v3, v0}, Lcom/google/ads/n;-><init>(Landroid/webkit/WebView;Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_48} :catch_49

    goto :goto_19

    :catch_49
    move-exception v0

    const-string v1, "An unknown error occurred while updating the +1 state."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_50
    move v0, v7

    goto :goto_3c

    :cond_52
    :try_start_52
    const-string v0, "Google+ app not installed, showing ad as not +1\'d"

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_57} :catch_49

    move v0, v7

    goto :goto_3c
.end method
