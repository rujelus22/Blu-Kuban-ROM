.class public Lcom/google/ads/internal/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/google/ads/internal/o;

.field private g:Lcom/google/ads/internal/m;

.field private h:Lcom/google/ads/AdRequest;

.field private i:Landroid/webkit/WebView;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private volatile m:Z

.field private n:Z

.field private o:Lcom/google/ads/AdRequest$ErrorCode;

.field private p:Z

.field private q:I

.field private r:Ljava/lang/Thread;

.field private s:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/internal/m;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    iput-object v2, p0, Lcom/google/ads/internal/c;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/internal/c;->k:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    iput-boolean v3, p0, Lcom/google/ads/internal/c;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/internal/c;->q:I

    iput-boolean v3, p0, Lcom/google/ads/internal/c;->e:Z

    iput-boolean v3, p0, Lcom/google/ads/internal/c;->n:Z

    iput-object v2, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/google/ads/internal/e;

    invoke-virtual {p1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/e;-><init>(Lcom/google/ads/ah;Lcom/google/ads/d;)V

    iput-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    sget-object v1, Lcom/google/ads/internal/g;->b:Ljava/util/Map;

    invoke-static {p1, v1, v3, v3}, Lcom/google/ads/internal/t;->a(Lcom/google/ads/internal/m;Ljava/util/Map;ZZ)Lcom/google/ads/internal/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/google/ads/internal/o;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/internal/o;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/internal/m;)V

    iput-object v0, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    :goto_5b
    return-void

    :cond_5c
    iput-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_5b
.end method

.method static synthetic a(Lcom/google/ads/internal/c;)Lcom/google/ads/internal/m;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/google/ads/s;Lcom/google/ads/t;)V
    .registers 8

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "no-store"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no-cache"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "max-age\\s*=\\s*(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    :try_start_24
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/ads/t;->a(Lcom/google/ads/s;I)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Caching gWhirl configuration for: %d seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_44} :catch_45

    goto :goto_2

    :catch_45
    move-exception v0

    const-string v1, "Caught exception trying to parse cache control directive. Overflow?"

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized cacheControlDirective: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Not caching configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    instance-of v0, v0, Lcom/google/ads/searchads/SearchAdRequest;

    if-eqz v0, :cond_9

    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_8
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->i()Lcom/google/ads/internal/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->j()Lcom/google/ads/internal/t;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/t;->c(Z)V

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    new-instance v2, Lcom/google/ads/internal/k;

    iget-object v3, p0, Lcom/google/ads/internal/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/ads/internal/k;-><init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private e()V
    .registers 8

    iget-object v6, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    new-instance v0, Lcom/google/ads/internal/l;

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    iget-object v2, p0, Lcom/google/ads/internal/c;->k:Ljava/util/LinkedList;

    iget v3, p0, Lcom/google/ads/internal/c;->q:I

    iget-boolean v4, p0, Lcom/google/ads/internal/c;->n:Z

    iget-object v5, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/internal/l;-><init>(Lcom/google/ads/internal/m;Ljava/util/LinkedList;IZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    new-instance v1, Lcom/google/ads/internal/k;

    iget-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/ads/internal/k;-><init>(Lcom/google/ads/internal/c;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->k()Lcom/google/ads/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->h()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_1d

    const-string v4, "prl"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v3, "ppcl"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    const-string v3, "pcl"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->e()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_44

    const-string v4, "pcc"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    const-string v2, "preqs"

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    const-string v3, "pai"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->k()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "aoi_timeout"

    const-string v3, "true"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->m()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "aoi_nofill"

    const-string v3, "true"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    invoke-virtual {v0}, Lcom/google/ads/internal/r;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_81

    const-string v3, "pit"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    invoke-static {}, Lcom/google/ads/internal/r;->q()J

    move-result-wide v2

    const-string v4, "ptime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->a()V

    invoke-virtual {v0}, Lcom/google/ads/internal/r;->d()V

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_11d

    const-string v0, "format"

    const-string v2, "interstitial_mb"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a7
    const-string v0, "slotname"

    iget-object v2, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v2}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/ah;->b:Lcom/google/ads/util/z;

    invoke-virtual {v2}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    const-string v2, "afma-sdk-a-v6.0.1"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_c3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_cb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c3 .. :try_end_cb} :catch_180

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_dd

    const-string v3, "mv"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_dd
    const-string v2, "msid"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".android."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isu"

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_189

    new-instance v0, Lcom/google/ads/internal/c$d;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/internal/c$d;-><init>(Lcom/google/ads/internal/c;Ljava/lang/String;)V

    throw v0

    :cond_11d
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->i:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/s;

    invoke-virtual {v0}, Lcom/google/ads/internal/s;->b()Lcom/google/ads/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/d;->c()Z

    move-result v2

    if-eqz v2, :cond_13c

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13c
    invoke-virtual {v0}, Lcom/google/ads/d;->d()Z

    move-result v2

    if-eqz v2, :cond_149

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_149
    invoke-virtual {v0}, Lcom/google/ads/d;->e()Z

    move-result v2

    if-nez v2, :cond_15a

    const-string v2, "format"

    invoke-virtual {v0}, Lcom/google/ads/d;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a7

    :cond_15a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "w"

    invoke-virtual {v0}, Lcom/google/ads/d;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h"

    invoke-virtual {v0}, Lcom/google/ads/d;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_frame"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a7

    :catch_180
    move-exception v0

    new-instance v0, Lcom/google/ads/internal/c$b;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/internal/c$b;-><init>(Lcom/google/ads/internal/c;Ljava/lang/String;)V

    throw v0

    :cond_189
    const-string v2, "net"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19f

    const-string v2, "cap"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19f
    const-string v0, "u_audio"

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Lcom/google/ads/util/AdUtil$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/util/AdUtil$a;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/ads/util/AdUtil;->a(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const-string v2, "u_sd"

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "u_h"

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "u_w"

    invoke-static {v1, v0}, Lcom/google/ads/util/AdUtil;->b(Landroid/content/Context;Landroid/util/DisplayMetrics;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "phone"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "carrier"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/ads/util/AdUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_207

    const-string v0, "simulator"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_207
    const-string v0, "session_id"

    invoke-static {}, Lcom/google/ads/r;->a()Lcom/google/ads/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/r;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    invoke-static {}, Lcom/google/ads/r;->a()Lcom/google/ads/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/r;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ae;

    iget-object v0, v0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    invoke-virtual {v0}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/af;

    iget-object v0, v0, Lcom/google/ads/af;->l:Lcom/google/ads/util/aa;

    invoke-virtual {v0}, Lcom/google/ads/util/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_295

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/internal/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_buildAdURL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adRequestUrlHtml: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    return-object v0

    :cond_295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/internal/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_getSdkConstants();"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_buildAdURL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27e
.end method

.method protected a()V
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "Got a mediation response with no content type. Aborting mediation."

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got a mediation response with a content type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Expected something starting with \'application/json\'. Aborting mediation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_43} :catch_44

    goto :goto_14

    :catch_44
    move-exception v0

    const-string v1, "AdLoader can\'t parse gWhirl server configuration."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {p0, v0, v3}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    goto :goto_14

    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/s;->a(Ljava/lang/String;)Lcom/google/ads/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v2}, Lcom/google/ads/internal/m;->g()Lcom/google/ads/t;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/ads/internal/c;->a(Ljava/lang/String;Lcom/google/ads/s;Lcom/google/ads/t;)V

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    new-instance v2, Lcom/google/ads/internal/i;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/internal/i;-><init>(Lcom/google/ads/internal/c;Lcom/google/ads/s;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_6b} :catch_44

    goto :goto_14
.end method

.method public declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/internal/c;->q:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/google/ads/AdRequest$ErrorCode;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    invoke-virtual {v0}, Lcom/google/ads/internal/o;->a()V

    iget-object v6, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    new-instance v0, Lcom/google/ads/internal/j;

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    iget-object v2, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/internal/j;-><init>(Lcom/google/ads/internal/m;Landroid/webkit/WebView;Lcom/google/ads/internal/o;Lcom/google/ads/AdRequest$ErrorCode;Z)V

    invoke-virtual {v6, v0}, Lcom/google/ads/internal/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/google/ads/AdRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/internal/c;->m:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/internal/c;->r:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/internal/c;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/internal/c;->k:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/ads/internal/c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/internal/c;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/internal/c;->p:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/internal/c;->s:Z

    return-void
.end method

.method protected declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/internal/c;->j:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/internal/c;->l:Ljava/lang/String;

    return-void
.end method

.method public run()V
    .registers 12

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/internal/c;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    if-nez v0, :cond_18

    :cond_b
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_c8

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_35

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/ah;->c:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_38

    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_33} :catch_c8

    :try_start_33
    monitor-exit p0

    goto :goto_17

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->m()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/ads/internal/c;->h:Lcom/google/ads/AdRequest;

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->f()Lcom/google/ads/ah;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/ah;->d:Lcom/google/ads/util/z;

    invoke-virtual {v1}, Lcom/google/ads/util/z;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/google/ads/AdRequest;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v7

    const-string v1, "extras"

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_9c

    check-cast v1, Ljava/util/Map;

    const-string v2, "_adUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_70

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/internal/c;->a:Ljava/lang/String;

    :cond_70
    const-string v2, "_orientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_85

    const-string v8, "p"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bc

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/ads/internal/c;->q:I

    :cond_85
    :goto_85
    const-string v2, "_norefresh"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9c

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    invoke-virtual {v1}, Lcom/google/ads/internal/m;->c()V

    :cond_9c
    iget-object v1, p0, Lcom/google/ads/internal/c;->a:Ljava/lang/String;
    :try_end_9e
    .catchall {:try_start_38 .. :try_end_9e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_9e} :catch_c8

    if-nez v1, :cond_1da

    :try_start_a0
    invoke-virtual {p0, v7, v0}, Lcom/google/ads/internal/c;->a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_35
    .catch Lcom/google/ads/internal/c$d; {:try_start_a0 .. :try_end_a3} :catch_d7
    .catch Lcom/google/ads/internal/c$b; {:try_start_a0 .. :try_end_a3} :catch_f7
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_c8

    move-result-object v0

    :try_start_a4
    invoke-direct {p0, v0}, Lcom/google/ads/internal/c;->f(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_aa} :catch_c8

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_b5

    :try_start_b2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_b2 .. :try_end_b5} :catch_117
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b5} :catch_c8

    :cond_b5
    :try_start_b5
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->m:Z
    :try_end_b7
    .catchall {:try_start_b5 .. :try_end_b7} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_b7} :catch_c8

    if-eqz v0, :cond_131

    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_35

    goto/16 :goto_17

    :cond_bc
    :try_start_bc
    const-string v8, "l"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/internal/c;->q:I
    :try_end_c7
    .catchall {:try_start_bc .. :try_end_c7} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_c7} :catch_c8

    goto :goto_85

    :catch_c8
    move-exception v0

    :try_start_c9
    const-string v1, "An unknown error occurred in AdLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V

    :goto_d4
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_35

    goto/16 :goto_17

    :catch_d7
    move-exception v0

    :try_start_d8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to connect to network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_f4
    .catchall {:try_start_d8 .. :try_end_f4} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_d8 .. :try_end_f4} :catch_c8

    :try_start_f4
    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_35

    goto/16 :goto_17

    :catch_f7
    move-exception v0

    :try_start_f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught internal exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_114
    .catchall {:try_start_f8 .. :try_end_114} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_114} :catch_c8

    :try_start_114
    monitor-exit p0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_35

    goto/16 :goto_17

    :catch_117
    move-exception v0

    :try_start_118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_118 .. :try_end_12e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_118 .. :try_end_12e} :catch_c8

    :try_start_12e
    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_35

    goto/16 :goto_17

    :cond_131
    :try_start_131
    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_13e

    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_13b
    .catchall {:try_start_131 .. :try_end_13b} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_13b} :catch_c8

    :try_start_13b
    monitor-exit p0
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_35

    goto/16 :goto_17

    :cond_13e
    :try_start_13e
    iget-object v0, p0, Lcom/google/ads/internal/c;->j:Ljava/lang/String;

    if-nez v0, :cond_167

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_164
    .catchall {:try_start_13e .. :try_end_164} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_164} :catch_c8

    :try_start_164
    monitor-exit p0
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_35

    goto/16 :goto_17

    :cond_167
    :try_start_167
    iget-object v0, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    iget-boolean v1, p0, Lcom/google/ads/internal/c;->s:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/internal/c;->f:Lcom/google/ads/internal/o;

    iget-object v1, p0, Lcom/google/ads/internal/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/o;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_178
    .catchall {:try_start_167 .. :try_end_178} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_167 .. :try_end_178} :catch_c8

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_183

    :try_start_180
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_183
    .catchall {:try_start_180 .. :try_end_183} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_180 .. :try_end_183} :catch_18a
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_183} :catch_c8

    :cond_183
    :try_start_183
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->m:Z
    :try_end_185
    .catchall {:try_start_183 .. :try_end_185} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_183 .. :try_end_185} :catch_c8

    if-eqz v0, :cond_1a4

    :try_start_187
    monitor-exit p0
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_35

    goto/16 :goto_17

    :catch_18a
    move-exception v0

    :try_start_18b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while getting the ad server\'s response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_1a1
    .catchall {:try_start_18b .. :try_end_1a1} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_18b .. :try_end_1a1} :catch_c8

    :try_start_1a1
    monitor-exit p0
    :try_end_1a2
    .catchall {:try_start_1a1 .. :try_end_1a2} :catchall_35

    goto/16 :goto_17

    :cond_1a4
    :try_start_1a4
    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    if-eqz v0, :cond_1b1

    iget-object v0, p0, Lcom/google/ads/internal/c;->o:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_1ae
    .catchall {:try_start_1a4 .. :try_end_1ae} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1a4 .. :try_end_1ae} :catch_c8

    :try_start_1ae
    monitor-exit p0
    :try_end_1af
    .catchall {:try_start_1ae .. :try_end_1af} :catchall_35

    goto/16 :goto_17

    :cond_1b1
    :try_start_1b1
    iget-object v0, p0, Lcom/google/ads/internal/c;->b:Ljava/lang/String;

    if-nez v0, :cond_1da

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while waiting for the ad server\'s response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_1d7
    .catchall {:try_start_1b1 .. :try_end_1d7} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1d7} :catch_c8

    :try_start_1d7
    monitor-exit p0
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_35

    goto/16 :goto_17

    :cond_1da
    :try_start_1da
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->e:Z

    if-eqz v0, :cond_1ea

    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->b(Z)V

    invoke-virtual {p0}, Lcom/google/ads/internal/c;->a()V
    :try_end_1e7
    .catchall {:try_start_1da .. :try_end_1e7} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1da .. :try_end_1e7} :catch_c8

    :try_start_1e7
    monitor-exit p0
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_35

    goto/16 :goto_17

    :cond_1ea
    :try_start_1ea
    iget-object v0, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_229

    iget-object v0, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_202

    iget-object v0, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    const-string v1, "text/javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_229

    :cond_202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected HTML but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/internal/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_226
    .catchall {:try_start_1ea .. :try_end_226} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1ea .. :try_end_226} :catch_c8

    :try_start_226
    monitor-exit p0
    :try_end_227
    .catchall {:try_start_226 .. :try_end_227} :catchall_35

    goto/16 :goto_17

    :cond_229
    :try_start_229
    iget-object v0, p0, Lcom/google/ads/internal/c;->g:Lcom/google/ads/internal/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->b(Z)V

    invoke-direct {p0}, Lcom/google/ads/internal/c;->d()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_235
    .catchall {:try_start_229 .. :try_end_235} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_229 .. :try_end_235} :catch_c8

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_240

    :try_start_23d
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_240
    .catchall {:try_start_23d .. :try_end_240} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_23d .. :try_end_240} :catch_249
    .catch Ljava/lang/Throwable; {:try_start_23d .. :try_end_240} :catch_c8

    :cond_240
    :try_start_240
    iget-boolean v0, p0, Lcom/google/ads/internal/c;->p:Z

    if-eqz v0, :cond_263

    invoke-direct {p0}, Lcom/google/ads/internal/c;->e()V

    goto/16 :goto_d4

    :catch_249
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdLoader InterruptedException while loading the HTML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V
    :try_end_260
    .catchall {:try_start_240 .. :try_end_260} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_240 .. :try_end_260} :catch_c8

    :try_start_260
    monitor-exit p0
    :try_end_261
    .catchall {:try_start_260 .. :try_end_261} :catchall_35

    goto/16 :goto_17

    :cond_263
    :try_start_263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoader timed out after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/AdRequest$ErrorCode;Z)V
    :try_end_285
    .catchall {:try_start_263 .. :try_end_285} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_263 .. :try_end_285} :catch_c8

    goto/16 :goto_d4
.end method
