.class public final Lcom/google/ads/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/a/j;

.field private final b:Lcom/google/ads/a/q;

.field private final c:Lcom/google/ads/a/u;

.field private volatile d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/a/j;Lcom/google/ads/a/q;)V
    .registers 4

    new-instance v0, Lcom/google/ads/a/t;

    invoke-direct {v0}, Lcom/google/ads/a/t;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/a/s;-><init>(Lcom/google/ads/a/j;Lcom/google/ads/a/q;Lcom/google/ads/a/u;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/a/j;Lcom/google/ads/a/q;Lcom/google/ads/a/u;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/a/s;->g:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    iput-object p2, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    iput-object p3, p0, Lcom/google/ads/a/s;->c:Lcom/google/ads/a/u;

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-virtual {v2, v1}, Lcom/google/ads/a/j;->e(Ljava/lang/String;)V

    :cond_12
    const-string v1, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_2a
    if-ge v1, v3, :cond_36

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v5, v4}, Lcom/google/ads/a/q;->b(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_36
    const-string v1, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_4d
    if-ge v0, v2, :cond_59

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-virtual {v4, v3}, Lcom/google/ads/a/j;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_59
    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_80

    :try_start_65
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_68} :catch_10d

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_122

    iget-object v1, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v1, v0}, Lcom/google/ads/a/q;->a(F)V

    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->o()Z

    move-result v0

    if-nez v0, :cond_80

    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->e()V

    :cond_80
    :goto_80
    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    :try_start_8c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/a/q;->a(J)V
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_8c .. :try_end_99} :catch_131

    :cond_99
    :goto_99
    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_146

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/j;->a(I)V

    :cond_b6
    :goto_b6
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d1

    :try_start_c2
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/a/q;->b(J)V
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_d1} :catch_159

    :cond_d1
    :goto_d1
    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    iget-object v1, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-virtual {v1, v0}, Lcom/google/ads/a/j;->c(Ljava/lang/String;)V

    :cond_e2
    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fb

    iget-object v1, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/a/j;->a(Z)V

    :cond_fb
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10c

    iget-object v1, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-virtual {v1, v0}, Lcom/google/ads/a/j;->b(Ljava/lang/String;)V

    :cond_10c
    return-void

    :catch_10d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get refresh value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_80

    :cond_122
    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->o()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->d()V

    goto/16 :goto_80

    :catch_131
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get timeout value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_99

    :cond_146
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/j;->a(I)V

    goto/16 :goto_b6

    :catch_159
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Using default value instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto/16 :goto_d1
.end method


# virtual methods
.method final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    return-void
.end method

.method final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/s;->g:Ljava/lang/Thread;

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/google/ads/a/s;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/a/s;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/a/s;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/a/s;->e:Z

    return-void
.end method

.method public final run()V
    .registers 6

    const/16 v4, 0x190

    :goto_2
    :try_start_2
    iget-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    if-nez v0, :cond_a0

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/a/s;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/s;->c:Lcom/google/ads/a/u;

    invoke-interface {v1, v0}, Lcom/google/ads/a/u;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_12} :catch_93
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_14a

    move-result-object v1

    :try_start_13
    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "drt"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/ads/a/s;->e:Z

    if-eqz v2, :cond_42

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    sget v2, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_a1

    const-string v2, "X-Afma-drt-Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/google/ads/a/s;->b:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0x12c

    if-gt v2, v0, :cond_c0

    if-ge v0, v4, :cond_c0

    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_ba

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get redirect location from a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " redirect."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z
    :try_end_8e
    .catchall {:try_start_13 .. :try_end_8e} :catchall_a7

    :goto_8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_91
    .catch Ljava/net/MalformedURLException; {:try_start_8e .. :try_end_91} :catch_93
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_14a

    goto/16 :goto_2

    :catch_93
    move-exception v0

    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    :cond_a0
    :goto_a0
    return-void

    :cond_a1
    :try_start_a1
    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_a7

    goto :goto_42

    :catchall_a7
    move-exception v0

    :try_start_a8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_ac
    .catch Ljava/net/MalformedURLException; {:try_start_a8 .. :try_end_ac} :catch_93
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ac} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_ac} :catch_14a

    :catch_ac
    move-exception v0

    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v1, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    goto :goto_a0

    :cond_ba
    :try_start_ba
    invoke-direct {p0, v1}, Lcom/google/ads/a/s;->a(Ljava/net/HttpURLConnection;)V

    iput-object v2, p0, Lcom/google/ads/a/s;->f:Ljava/lang/String;

    goto :goto_8e

    :cond_c0
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_119

    invoke-direct {p0, v1}, Lcom/google/ads/a/s;->a(Ljava/net/HttpURLConnection;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response content is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response message is null or zero length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v2, Lcom/google/ads/e;->b:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    goto :goto_8e

    :cond_10d
    iget-object v2, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    iget-object v3, p0, Lcom/google/ads/a/s;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/google/ads/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    goto/16 :goto_8e

    :cond_119
    if-ne v0, v4, :cond_12c

    const-string v0, "Bad request"

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v2, Lcom/google/ads/e;->a:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z

    goto/16 :goto_8e

    :cond_12c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v2, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v2}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/a/s;->d:Z
    :try_end_148
    .catchall {:try_start_ba .. :try_end_148} :catchall_a7

    goto/16 :goto_8e

    :catch_14a
    move-exception v0

    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/a/s;->a:Lcom/google/ads/a/j;

    sget-object v1, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;)V

    goto/16 :goto_a0
.end method
