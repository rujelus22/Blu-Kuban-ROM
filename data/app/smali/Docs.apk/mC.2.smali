.class LmC;
.super Ljava/lang/Object;
.source "DiscussionSessionApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic a:LmA;

.field final synthetic a:Lmv;


# direct methods
.method constructor <init>(LmA;Landroid/net/Uri;Lmv;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, LmC;->a:LmA;

    iput-object p2, p0, LmC;->a:Landroid/net/Uri;

    iput-object p3, p0, LmC;->a:Lmv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 783
    :try_start_0
    iget-object v0, p0, LmC;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://"

    const-string v3, "http://"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 786
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 787
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_33

    move-result-object v1

    .line 789
    :try_start_1f
    const-string v0, "src"

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2e

    move-result-object v0

    .line 791
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 793
    iget-object v1, p0, LmC;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Object;)V

    .line 797
    :goto_2d
    return-void

    .line 791
    :catchall_2e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_33} :catch_33

    .line 794
    :catch_33
    move-exception v0

    .line 795
    iget-object v1, p0, LmC;->a:Lmv;

    invoke-virtual {v1, v0}, Lmv;->a(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
