.class public LV/a;
.super Lcom/google/googlenav/common/io/BaseHttpConnectionFactory;
.source "SourceFile"


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

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LV/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/googlenav/common/io/BaseHttpConnectionFactory;-><init>()V

    .line 50
    iput-object p1, p0, LV/a;->c:Landroid/content/Context;

    .line 51
    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, LV/a;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method static synthetic a(LV/a;)Lorg/apache/http/client/HttpClient;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LV/a;->d:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic g()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 33
    sget-object v0, LV/a;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h()I
    .registers 2

    .prologue
    .line 33
    sget v0, LV/a;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LV/a;->e:I

    return v0
.end method

.method static synthetic i()I
    .registers 2

    .prologue
    .line 33
    sget v0, LV/a;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, LV/a;->e:I

    return v0
.end method

.method static synthetic j()I
    .registers 1

    .prologue
    .line 33
    sget v0, LV/a;->e:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/google/googlenav/common/io/GoogleHttpConnection;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, LV/a;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_20

    .line 67
    new-instance v0, Lf/a;

    iget-object v1, p0, LV/a;->c:Landroid/content/Context;

    iget-object v2, p0, LV/a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lf/a;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, LV/a;->d:Lorg/apache/http/client/HttpClient;

    .line 70
    iget-object v0, p0, LV/a;->d:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 73
    :cond_20
    new-instance v0, LV/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LV/c;-><init>(LV/a;Ljava/lang/String;ZLV/b;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, LV/a;->b:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x2

    return v0
.end method
