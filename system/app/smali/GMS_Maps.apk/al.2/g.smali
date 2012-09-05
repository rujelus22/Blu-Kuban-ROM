.class public Lal/g;
.super Lak/b;


# static fields
.field private static e:I

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lal/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lak/b;-><init>()V

    iput-object p1, p0, Lal/g;->c:Landroid/content/Context;

    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, Lal/g;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lal/g;)Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lal/g;->d:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lal/g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()I
    .registers 2

    sget v0, Lal/g;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lal/g;->e:I

    return v0
.end method

.method static synthetic i()I
    .registers 2

    sget v0, Lal/g;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lal/g;->e:I

    return v0
.end method

.method static synthetic j()I
    .registers 1

    sget v0, Lal/g;->e:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lak/f;
    .registers 7

    const/4 v3, 0x1

    iget-object v0, p0, Lal/g;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_26

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2d

    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lal/g;->c:Landroid/content/Context;

    iget-object v2, p0, Lal/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lal/g;->d:Lorg/apache/http/client/HttpClient;

    :goto_16
    iget-object v0, p0, Lal/g;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_26
    new-instance v0, Lal/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lal/i;-><init>(Lal/g;Ljava/lang/String;ZLal/h;)V

    return-object v0

    :cond_2d
    new-instance v0, Lal/m;

    iget-object v1, p0, Lal/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lal/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lal/m;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lal/g;->d:Lorg/apache/http/client/HttpClient;

    goto :goto_16
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lal/g;->b:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
