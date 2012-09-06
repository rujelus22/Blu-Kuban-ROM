.class LbM;
.super Ljava/lang/Object;

# interfaces
.implements Lbz;


# instance fields
.field private a:LbO;

.field private final a:Ljava/lang/String;

.field private final a:Lorg/apache/http/HttpHost;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "GoogleAnalytics"

    const-string v1, "1.5"

    invoke-direct {p0, v0, v1}, LbM;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "www.google-analytics.com"

    const/16 v1, 0x50

    invoke-direct {p0, p1, p2, v0, v1}, LbM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, LbM;->a:Z

    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-direct {v0, p3, p4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, LbM;->a:Lorg/apache/http/HttpHost;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%s/%s (Linux; U; Android %s; %s-%s; %s Build/%s)"

    const/4 v0, 0x7

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v4

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 v0, 0x2

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    aput-object v0, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_40
    aput-object v0, v3, v4

    const/4 v0, 0x5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x6

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LbM;->a:Ljava/lang/String;

    return-void

    :cond_53
    const-string v0, "en"

    goto :goto_2f

    :cond_56
    const-string v0, ""

    goto :goto_40
.end method

.method static synthetic a(LbM;)Lorg/apache/http/HttpHost;
    .registers 2

    iget-object v0, p0, LbM;->a:Lorg/apache/http/HttpHost;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LbM;->a:LbO;

    if-eqz v0, :cond_18

    iget-object v0, p0, LbM;->a:LbO;

    invoke-virtual {v0}, LbO;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, LbM;->a:LbO;

    invoke-virtual {v0}, LbO;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, LbM;->a:LbO;

    :cond_18
    return-void
.end method

.method public a(LbA;)V
    .registers 5

    invoke-virtual {p0}, LbM;->a()V

    new-instance v0, LbO;

    iget-object v1, p0, LbM;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, LbO;-><init>(LbA;Ljava/lang/String;LbM;LbN;)V

    iput-object v0, p0, LbM;->a:LbO;

    iget-object v0, p0, LbM;->a:LbO;

    invoke-virtual {v0}, LbO;->start()V

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, LbM;->a:Z

    return-void
.end method

.method public a([LbG;)V
    .registers 3

    iget-object v0, p0, LbM;->a:LbO;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LbM;->a:LbO;

    invoke-virtual {v0, p1}, LbO;->a([LbG;)V

    goto :goto_4
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, LbM;->a:Z

    return v0
.end method
