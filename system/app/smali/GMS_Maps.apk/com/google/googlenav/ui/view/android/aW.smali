.class Lcom/google/googlenav/ui/view/android/aW;
.super Lcom/google/googlenav/ui/bG;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://s2.googleusercontent.com/s2/favicons?domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/bG;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    :try_start_9
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, ""
    :try_end_1a
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    :catch_1b
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method public static d()Lcom/google/googlenav/ui/view/android/aW;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/aW;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/aW;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
