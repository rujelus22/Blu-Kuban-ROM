.class public final Lcom/google/ads/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/google/ads/a/s;

.field private g:Lcom/google/ads/a/q;

.field private h:Lcom/google/ads/d;

.field private i:Landroid/webkit/WebView;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/LinkedList;

.field private l:Ljava/lang/String;

.field private volatile m:Z

.field private n:Z

.field private o:Lcom/google/ads/e;

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

.method public constructor <init>(Lcom/google/ads/a/q;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    iput-object v2, p0, Lcom/google/ads/a/j;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/a/j;->k:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

    iput-boolean v3, p0, Lcom/google/ads/a/j;->p:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/a/j;->q:I

    iput-boolean v3, p0, Lcom/google/ads/a/j;->e:Z

    iput-boolean v3, p0, Lcom/google/ads/a/j;->n:Z

    iput-object v2, p0, Lcom/google/ads/a/j;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5c

    new-instance v0, Lcom/google/ads/a/c;

    invoke-virtual {p1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/c;-><init>(Lcom/google/ads/am;Lcom/google/ads/g;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    sget-object v1, Lcom/google/ads/a/e;->b:Ljava/util/Map;

    invoke-static {p1, v1, v3, v3}, Lcom/google/ads/a/x;->a(Lcom/google/ads/a/q;Ljava/util/Map;ZZ)Lcom/google/ads/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    new-instance v0, Lcom/google/ads/a/s;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/a/s;-><init>(Lcom/google/ads/a/j;Lcom/google/ads/a/q;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    :goto_5b
    return-void

    :cond_5c
    iput-object v2, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    const-string v0, "activity was null while trying to create an AdLoader."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    goto :goto_5b
.end method

.method static synthetic a(Lcom/google/ads/a/j;)Lcom/google/ads/a/q;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    return-object v0
.end method

.method private a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    .registers 10

    const-wide/16 v5, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->k()Lcom/google/ads/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/v;->h()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_1d

    const-string v4, "prl"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0}, Lcom/google/ads/a/v;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v3, "ppcl"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-virtual {v0}, Lcom/google/ads/a/v;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    const-string v3, "pcl"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    invoke-virtual {v0}, Lcom/google/ads/a/v;->e()J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_44

    const-string v4, "pcc"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    const-string v2, "preqs"

    invoke-static {}, Lcom/google/ads/a/v;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5c

    const-string v3, "pai"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-virtual {v0}, Lcom/google/ads/a/v;->k()Z

    move-result v2

    if-eqz v2, :cond_69

    const-string v2, "aoi_timeout"

    const-string v3, "true"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    invoke-virtual {v0}, Lcom/google/ads/a/v;->m()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "aoi_nofill"

    const-string v3, "true"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    invoke-virtual {v0}, Lcom/google/ads/a/v;->p()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_81

    const-string v3, "pit"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_81
    invoke-static {}, Lcom/google/ads/a/v;->q()J

    move-result-wide v2

    const-string v4, "ptime"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/ads/a/v;->a()V

    invoke-virtual {v0}, Lcom/google/ads/a/v;->d()V

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/am;->b()Z

    move-result v0

    if-eqz v0, :cond_11d

    const-string v0, "format"

    const-string v2, "interstitial_mb"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a7
    const-string v0, "slotname"

    iget-object v2, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v2}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/am;->b:Lcom/google/ads/util/ab;

    invoke-virtual {v2}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "js"

    const-string v2, "afma-sdk-a-v6.0.0"

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

    new-instance v0, Lcom/google/ads/a/o;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/a/o;-><init>(Lcom/google/ads/a/j;Ljava/lang/String;)V

    throw v0

    :cond_11d
    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->i:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->b()Lcom/google/ads/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/g;->c()Z

    move-result v2

    if-eqz v2, :cond_13c

    const-string v2, "smart_w"

    const-string v3, "full"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13c
    invoke-virtual {v0}, Lcom/google/ads/g;->d()Z

    move-result v2

    if-eqz v2, :cond_149

    const-string v2, "smart_h"

    const-string v3, "auto"

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_149
    invoke-virtual {v0}, Lcom/google/ads/g;->e()Z

    move-result v2

    if-nez v2, :cond_15a

    const-string v2, "format"

    invoke-virtual {v0}, Lcom/google/ads/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a7

    :cond_15a
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "w"

    invoke-virtual {v0}, Lcom/google/ads/g;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "h"

    invoke-virtual {v0}, Lcom/google/ads/g;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ad_frame"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a7

    :catch_180
    move-exception v0

    new-instance v0, Lcom/google/ads/a/m;

    const-string v1, "NameNotFoundException"

    invoke-direct {v0, p0, v1}, Lcom/google/ads/a/m;-><init>(Lcom/google/ads/a/j;Ljava/lang/String;)V

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

    invoke-static {v1}, Lcom/google/ads/util/AdUtil;->g(Landroid/content/Context;)Lcom/google/ads/util/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/ads/util/a;->ordinal()I

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

    invoke-static {}, Lcom/google/ads/v;->a()Lcom/google/ads/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/v;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seq_num"

    invoke-static {}, Lcom/google/ads/v;->a()Lcom/google/ads/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/v;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/util/AdUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/ak;

    iget-object v0, v0, Lcom/google/ads/ak;->a:Lcom/google/ads/util/ab;

    invoke-virtual {v0}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/al;

    iget-object v0, v0, Lcom/google/ads/al;->i:Lcom/google/ads/util/ac;

    invoke-virtual {v0}, Lcom/google/ads/util/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_285

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_buildAdURL("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adRequestUrlHtml: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    return-object v0

    :cond_285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/ads/a/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AFMA_getSdkConstants();AFMA_buildAdURL("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");</script></head><body></body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_272
.end method

.method private a(Lcom/google/ads/e;Z)V
    .registers 10

    iget-object v0, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    invoke-virtual {v0}, Lcom/google/ads/a/s;->a()V

    iget-object v6, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    new-instance v0, Lcom/google/ads/a/l;

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    iget-object v2, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/l;-><init>(Lcom/google/ads/a/q;Landroid/webkit/WebView;Lcom/google/ads/a/s;Lcom/google/ads/e;Z)V

    invoke-virtual {v6, v0}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/d;

    instance-of v0, v0, Lcom/google/ads/c/a;

    if-eqz v0, :cond_9

    const-string v0, "<html><head><script src=\"http://www.gstatic.com/safa/sdk-core-v40.js\"></script><script>"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "<html><head><script src=\"http://media.admob.com/sdk-core-v40.js\"></script><script>"

    goto :goto_8
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/a/j;->p:Z

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

.method public final declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/ads/a/j;->q:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/google/ads/d;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/a/j;->m:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/ads/a/j;->r:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/ads/a/j;->r:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/ads/e;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

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

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/a/j;->k:Ljava/util/LinkedList;

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

.method protected final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/ads/a/j;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

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

.method protected final declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/ads/a/j;->e:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/ads/a/j;->n:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/ads/a/j;->s:Z

    return-void
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/ads/a/j;->j:Ljava/lang/String;

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

.method public final e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ads/a/j;->l:Ljava/lang/String;

    return-void
.end method

.method public final run()V
    .registers 12

    const-wide/16 v9, 0x0

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    if-nez v0, :cond_18

    :cond_b
    const-string v0, "adRequestWebView was null while trying to load an ad."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_16} :catch_d2

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_35

    :goto_17
    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/am;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_38

    const-string v0, "activity was null while forming an ad request."

    invoke-static {v0}, Lcom/google/ads/util/d;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_33} :catch_d2

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_35

    goto :goto_17

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_38
    :try_start_38
    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->m()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v2, p0, Lcom/google/ads/a/j;->h:Lcom/google/ads/d;

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->f()Lcom/google/ads/am;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/am;->d:Lcom/google/ads/util/ab;

    invoke-virtual {v1}, Lcom/google/ads/util/ab;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/google/ads/d;->a(Landroid/content/Context;)Ljava/util/Map;

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

    iput-object v2, p0, Lcom/google/ads/a/j;->a:Ljava/lang/String;

    :cond_70
    const-string v2, "_orientation"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v8, v2, Ljava/lang/String;

    if-eqz v8, :cond_85

    const-string v8, "p"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    const/4 v2, 0x1

    iput v2, p0, Lcom/google/ads/a/j;->q:I

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

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->c()V

    :cond_9c
    iget-object v1, p0, Lcom/google/ads/a/j;->a:Ljava/lang/String;
    :try_end_9e
    .catchall {:try_start_38 .. :try_end_9e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_9e} :catch_d2

    if-nez v1, :cond_1cc

    :try_start_a0
    invoke-direct {p0, v7, v0}, Lcom/google/ads/a/j;->a(Ljava/util/Map;Landroid/app/Activity;)Ljava/lang/String;
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_35
    .catch Lcom/google/ads/a/o; {:try_start_a0 .. :try_end_a3} :catch_e1
    .catch Lcom/google/ads/a/m; {:try_start_a0 .. :try_end_a3} :catch_fd
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_d2

    move-result-object v0

    :try_start_a4
    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    new-instance v2, Lcom/google/ads/a/n;

    iget-object v7, p0, Lcom/google/ads/a/j;->i:Landroid/webkit/WebView;

    const/4 v8, 0x0

    invoke-direct {v2, p0, v7, v8, v0}, Lcom/google/ads/a/n;-><init>(Lcom/google/ads/a/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_b4
    .catchall {:try_start_a4 .. :try_end_b4} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_b4} :catch_d2

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_bf

    :try_start_bc
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_bc .. :try_end_bf} :catch_119
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bf} :catch_d2

    :cond_bf
    :try_start_bf
    iget-boolean v0, p0, Lcom/google/ads/a/j;->m:Z
    :try_end_c1
    .catchall {:try_start_bf .. :try_end_c1} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_bf .. :try_end_c1} :catch_d2

    if-eqz v0, :cond_12f

    :try_start_c3
    monitor-exit p0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_35

    goto/16 :goto_17

    :cond_c6
    :try_start_c6
    const-string v8, "l"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/a/j;->q:I
    :try_end_d1
    .catchall {:try_start_c6 .. :try_end_d1} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_d1} :catch_d2

    goto :goto_85

    :catch_d2
    move-exception v0

    :try_start_d3
    const-string v1, "An unknown error occurred in AdLoader."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V

    :goto_de
    monitor-exit p0
    :try_end_df
    .catchall {:try_start_d3 .. :try_end_df} :catchall_35

    goto/16 :goto_17

    :catch_e1
    move-exception v0

    :try_start_e2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to connect to network: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_fa
    .catchall {:try_start_e2 .. :try_end_fa} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_fa} :catch_d2

    :try_start_fa
    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_35

    goto/16 :goto_17

    :catch_fd
    move-exception v0

    :try_start_fe
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught internal exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_116
    .catchall {:try_start_fe .. :try_end_116} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_116} :catch_d2

    :try_start_116
    monitor-exit p0
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_35

    goto/16 :goto_17

    :catch_119
    move-exception v0

    :try_start_11a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while getting the URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_11a .. :try_end_12c} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_12c} :catch_d2

    :try_start_12c
    monitor-exit p0
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_35

    goto/16 :goto_17

    :cond_12f
    :try_start_12f
    iget-object v0, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_139
    .catchall {:try_start_12f .. :try_end_139} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_139} :catch_d2

    :try_start_139
    monitor-exit p0
    :try_end_13a
    .catchall {:try_start_139 .. :try_end_13a} :catchall_35

    goto/16 :goto_17

    :cond_13c
    :try_start_13c
    iget-object v0, p0, Lcom/google/ads/a/j;->j:Ljava/lang/String;

    if-nez v0, :cond_161

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while getting the URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_15e
    .catchall {:try_start_13c .. :try_end_15e} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_13c .. :try_end_15e} :catch_d2

    :try_start_15e
    monitor-exit p0
    :try_end_15f
    .catchall {:try_start_15e .. :try_end_15f} :catchall_35

    goto/16 :goto_17

    :cond_161
    :try_start_161
    iget-object v0, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    iget-boolean v1, p0, Lcom/google/ads/a/j;->s:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/a/s;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/a/j;->f:Lcom/google/ads/a/s;

    iget-object v1, p0, Lcom/google/ads/a/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/s;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_172
    .catchall {:try_start_161 .. :try_end_172} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_172} :catch_d2

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_17d

    :try_start_17a
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_17a .. :try_end_17d} :catch_184
    .catch Ljava/lang/Throwable; {:try_start_17a .. :try_end_17d} :catch_d2

    :cond_17d
    :try_start_17d
    iget-boolean v0, p0, Lcom/google/ads/a/j;->m:Z
    :try_end_17f
    .catchall {:try_start_17d .. :try_end_17f} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_17f} :catch_d2

    if-eqz v0, :cond_19a

    :try_start_181
    monitor-exit p0
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_35

    goto/16 :goto_17

    :catch_184
    move-exception v0

    :try_start_185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while getting the ad server\'s response: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_197
    .catchall {:try_start_185 .. :try_end_197} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_185 .. :try_end_197} :catch_d2

    :try_start_197
    monitor-exit p0
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_35

    goto/16 :goto_17

    :cond_19a
    :try_start_19a
    iget-object v0, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

    if-eqz v0, :cond_1a7

    iget-object v0, p0, Lcom/google/ads/a/j;->o:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_1a4
    .catchall {:try_start_19a .. :try_end_1a4} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_19a .. :try_end_1a4} :catch_d2

    :try_start_1a4
    monitor-exit p0
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_35

    goto/16 :goto_17

    :cond_1a7
    :try_start_1a7
    iget-object v0, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    if-nez v0, :cond_1cc

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while waiting for the ad server\'s response."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_1c9
    .catchall {:try_start_1a7 .. :try_end_1c9} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_1c9} :catch_d2

    :try_start_1c9
    monitor-exit p0
    :try_end_1ca
    .catchall {:try_start_1c9 .. :try_end_1ca} :catchall_35

    goto/16 :goto_17

    :cond_1cc
    :try_start_1cc
    iget-boolean v0, p0, Lcom/google/ads/a/j;->e:Z

    if-eqz v0, :cond_29f

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->b(Z)V
    :try_end_1d6
    .catchall {:try_start_1cc .. :try_end_1d6} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1d6} :catch_d2

    :try_start_1d6
    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    const-string v0, "Got a mediation response with no content type. Aborting mediation."

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_1e9
    .catchall {:try_start_1d6 .. :try_end_1e9} :catchall_35
    .catch Lorg/json/JSONException; {:try_start_1d6 .. :try_end_1e9} :catch_217
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_1e9} :catch_d2

    :goto_1e9
    :try_start_1e9
    monitor-exit p0
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_35

    goto/16 :goto_17

    :cond_1ec
    :try_start_1ec
    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_224

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got a mediation response with a content type: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. Expected something starting with \'application/json\'. Aborting mediation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_216
    .catchall {:try_start_1ec .. :try_end_216} :catchall_35
    .catch Lorg/json/JSONException; {:try_start_1ec .. :try_end_216} :catch_217
    .catch Ljava/lang/Throwable; {:try_start_1ec .. :try_end_216} :catch_d2

    goto :goto_1e9

    :catch_217
    move-exception v0

    :try_start_218
    const-string v1, "AdLoader can\'t parse gWhirl server configuration."

    invoke-static {v1, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_223
    .catchall {:try_start_218 .. :try_end_223} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_218 .. :try_end_223} :catch_d2

    goto :goto_1e9

    :cond_224
    :try_start_224
    iget-object v0, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/ads/w;->a(Ljava/lang/String;)Lcom/google/ads/w;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/a/j;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v2}, Lcom/google/ads/a/q;->g()Lcom/google/ads/y;

    move-result-object v2

    if-eqz v0, :cond_273

    const-string v3, "no-store"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_273

    const-string v3, "no-cache"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_273

    const-string v3, "max-age\\s*=\\s*(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z
    :try_end_251
    .catchall {:try_start_224 .. :try_end_251} :catchall_35
    .catch Lorg/json/JSONException; {:try_start_224 .. :try_end_251} :catch_217
    .catch Ljava/lang/Throwable; {:try_start_224 .. :try_end_251} :catch_d2

    move-result v4

    if-eqz v4, :cond_286

    const/4 v0, 0x1

    :try_start_255
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/google/ads/y;->a(Lcom/google/ads/w;I)V

    const-string v2, "Caching gWhirl configuration for: %d seconds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_273
    .catchall {:try_start_255 .. :try_end_273} :catchall_35
    .catch Ljava/lang/NumberFormatException; {:try_start_255 .. :try_end_273} :catch_27f
    .catch Lorg/json/JSONException; {:try_start_255 .. :try_end_273} :catch_217
    .catch Ljava/lang/Throwable; {:try_start_255 .. :try_end_273} :catch_d2

    :cond_273
    :goto_273
    :try_start_273
    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    new-instance v2, Lcom/google/ads/a/k;

    invoke-direct {v2, p0, v1}, Lcom/google/ads/a/k;-><init>(Lcom/google/ads/a/j;Lcom/google/ads/w;)V

    invoke-virtual {v0, v2}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1e9

    :catch_27f
    move-exception v0

    const-string v2, "Caught exception trying to parse cache control directive. Overflow?"

    invoke-static {v2, v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_273

    :cond_286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized cacheControlDirective: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Not caching configuration."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V
    :try_end_29e
    .catchall {:try_start_273 .. :try_end_29e} :catchall_35
    .catch Lorg/json/JSONException; {:try_start_273 .. :try_end_29e} :catch_217
    .catch Ljava/lang/Throwable; {:try_start_273 .. :try_end_29e} :catch_d2

    goto :goto_273

    :cond_29f
    :try_start_29f
    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_2da

    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b7

    iget-object v0, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    const-string v1, "text/javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2da

    :cond_2b7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected HTML but received "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/ads/a/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->d:Lcom/google/ads/e;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_2d7
    .catchall {:try_start_29f .. :try_end_2d7} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_29f .. :try_end_2d7} :catch_d2

    :try_start_2d7
    monitor-exit p0
    :try_end_2d8
    .catchall {:try_start_2d7 .. :try_end_2d8} :catchall_35

    goto/16 :goto_17

    :cond_2da
    :try_start_2da
    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->i()Lcom/google/ads/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    invoke-virtual {v1}, Lcom/google/ads/a/q;->j()Lcom/google/ads/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/a/x;->c()V

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    new-instance v2, Lcom/google/ads/a/n;

    iget-object v7, p0, Lcom/google/ads/a/j;->a:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/ads/a/j;->b:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v7, v8}, Lcom/google/ads/a/n;-><init>(Lcom/google/ads/a/j;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_300
    .catchall {:try_start_2da .. :try_end_300} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_2da .. :try_end_300} :catch_d2

    move-result-wide v0

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    cmp-long v2, v0, v9

    if-lez v2, :cond_30b

    :try_start_308
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_30b
    .catchall {:try_start_308 .. :try_end_30b} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_308 .. :try_end_30b} :catch_325
    .catch Ljava/lang/Throwable; {:try_start_308 .. :try_end_30b} :catch_d2

    :cond_30b
    :try_start_30b
    iget-boolean v0, p0, Lcom/google/ads/a/j;->p:Z

    if-eqz v0, :cond_33b

    iget-object v6, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    new-instance v0, Lcom/google/ads/a/p;

    iget-object v1, p0, Lcom/google/ads/a/j;->g:Lcom/google/ads/a/q;

    iget-object v2, p0, Lcom/google/ads/a/j;->k:Ljava/util/LinkedList;

    iget v3, p0, Lcom/google/ads/a/j;->q:I

    iget-boolean v4, p0, Lcom/google/ads/a/j;->n:Z

    iget-object v5, p0, Lcom/google/ads/a/j;->l:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/a/p;-><init>(Lcom/google/ads/a/q;Ljava/util/LinkedList;IZLjava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/ads/a/q;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_de

    :catch_325
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdLoader InterruptedException while loading the HTML: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V
    :try_end_338
    .catchall {:try_start_30b .. :try_end_338} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_30b .. :try_end_338} :catch_d2

    :try_start_338
    monitor-exit p0
    :try_end_339
    .catchall {:try_start_338 .. :try_end_339} :catchall_35

    goto/16 :goto_17

    :cond_33b
    :try_start_33b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdLoader timed out after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms while loading the HTML."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/d;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/google/ads/e;->c:Lcom/google/ads/e;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/ads/a/j;->a(Lcom/google/ads/e;Z)V
    :try_end_359
    .catchall {:try_start_33b .. :try_end_359} :catchall_35
    .catch Ljava/lang/Throwable; {:try_start_33b .. :try_end_359} :catch_d2

    goto/16 :goto_de
.end method
