.class public final Lcom/google/ads/internal/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/c;

.field private final b:Lcom/google/ads/internal/m;

.field private final c:Lcom/google/ads/internal/q;

.field private volatile d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/m;)V
    .registers 4

    new-instance v0, Lcom/google/ads/internal/p;

    invoke-direct {v0}, Lcom/google/ads/internal/p;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/internal/o;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/m;Lcom/google/ads/internal/q;)V

    return-void
.end method

.method constructor <init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/m;Lcom/google/ads/internal/q;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/internal/o;->g:Ljava/lang/Thread;

    iput-object p1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    iput-object p2, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    iput-object p3, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/q;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V
    .registers 6

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "drt"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/internal/o;->e:Z

    if-eqz v1, :cond_21

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_22

    const-string v1, "X-Afma-drt-Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const-string v1, "Cookie"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->b(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->f(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->g(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->h(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->e(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->i(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->j(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->k(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->d(Ljava/net/HttpURLConnection;)V

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->c(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;I)V
    .registers 6

    const/16 v1, 0x190

    const/16 v0, 0x12c

    if-gt v0, p2, :cond_3d

    if-ge p2, v1, :cond_3d

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get redirect location from a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " redirect."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    :goto_36
    return-void

    :cond_37
    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->a(Ljava/net/HttpURLConnection;)V

    iput-object v0, p0, Lcom/google/ads/internal/o;->f:Ljava/lang/String;

    goto :goto_36

    :cond_3d
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_9d

    invoke-direct {p0, p1}, Lcom/google/ads/internal/o;->a(Ljava/net/HttpURLConnection;)V

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response content is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_92

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response message is null or zero length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    goto :goto_36

    :cond_92
    iget-object v1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    iget-object v2, p0, Lcom/google/ads/internal/o;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    goto :goto_36

    :cond_9d
    if-ne p2, v1, :cond_af

    const-string v0, "Bad request"

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    goto :goto_36

    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    invoke-virtual {p0}, Lcom/google/ads/internal/o;->a()V

    goto/16 :goto_36
.end method

.method private b()V
    .registers 3

    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/internal/o;->d:Z

    if-nez v0, :cond_4a

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/ads/internal/o;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/internal/o;->c:Lcom/google/ads/internal/q;

    invoke-interface {v1, v0}, Lcom/google/ads/internal/q;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    :try_start_11
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/google/ads/internal/o;->a(Landroid/content/Context;Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Ljava/net/HttpURLConnection;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/google/ads/internal/o;->a(Ljava/net/HttpURLConnection;I)V
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_45

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_45
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_4a
    return-void
.end method

.method private b(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "X-Afma-Debug-Dialog"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->e(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private c(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->b(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private d(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "X-Afma-Mediation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->a(Z)V

    :cond_19
    return-void
.end method

.method private e(Ljava/net/HttpURLConnection;)V
    .registers 7

    const-string v0, "X-Afma-Interstitial-Timeout"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    :try_start_c
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    const/high16 v3, 0x447a

    mul-float/2addr v0, v3

    float-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/ads/internal/m;->a(J)V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get timeout value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method private f(Ljava/net/HttpURLConnection;)V
    .registers 7

    const-string v0, "X-Afma-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v4, v3}, Lcom/google/ads/internal/m;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    return-void
.end method

.method private g(Ljava/net/HttpURLConnection;)V
    .registers 7

    const-string v0, "X-Afma-Click-Tracking-Urls"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v4, v3}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    return-void
.end method

.method private h(Ljava/net/HttpURLConnection;)V
    .registers 6

    const-string v0, "X-Afma-Refresh-Rate"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    :try_start_c
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_28

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_40

    iget-object v1, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/m;->a(F)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->p()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->e()V

    :cond_27
    :goto_27
    return-void

    :catch_28
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get refresh value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27

    :cond_40
    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->p()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->d()V

    goto :goto_27
.end method

.method private i(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "X-Afma-Orientation"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(I)V

    goto :goto_1d
.end method

.method private j(Ljava/net/HttpURLConnection;)V
    .registers 5

    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    :try_start_c
    const-string v0, "X-Afma-Doritos-Cache-Life"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/ads/internal/o;->b:Lcom/google/ads/internal/m;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/internal/m;->b(J)V
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_1b} :catch_1c

    :cond_1b
    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got bad value of Doritos cookie cache life from header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_1b
.end method

.method private k(Ljava/net/HttpURLConnection;)V
    .registers 4

    const-string v0, "Cache-Control"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->c(Ljava/lang/String;)V

    :cond_11
    return-void
.end method


# virtual methods
.method a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->d:Z

    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/o;->g:Ljava/lang/Thread;

    if-nez v0, :cond_16

    iput-object p1, p0, Lcom/google/ads/internal/o;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/o;->d:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/o;->g:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/internal/o;->g:Ljava/lang/Thread;

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

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/o;->e:Z

    return-void
.end method

.method public run()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/internal/o;->b()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_20

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Received malformed ad url from javascript."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3

    :catch_12
    move-exception v0

    const-string v1, "IOException connecting to ad url."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3

    :catch_20
    move-exception v0

    const-string v1, "An unknown error occurred in AdResponseLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/ads/internal/o;->a:Lcom/google/ads/internal/c;

    sget-object v1, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_3
.end method
