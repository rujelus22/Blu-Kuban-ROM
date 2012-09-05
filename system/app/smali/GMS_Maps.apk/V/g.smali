.class public LV/g;
.super LU/b;


# static fields
.field private static e:I

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:LV/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LV/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, LU/b;-><init>()V

    iput-object p1, p0, LV/g;->c:Landroid/content/Context;

    const-string v0, "GoogleMobile/1.0"

    iput-object v0, p0, LV/g;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(LV/g;)LV/l;
    .registers 2

    iget-object v0, p0, LV/g;->d:LV/l;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/Object;
    .registers 1

    sget-object v0, LV/g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic f()I
    .registers 2

    sget v0, LV/g;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LV/g;->e:I

    return v0
.end method

.method static synthetic g()I
    .registers 2

    sget v0, LV/g;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, LV/g;->e:I

    return v0
.end method

.method static synthetic h()I
    .registers 1

    sget v0, LV/g;->e:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)LU/f;
    .registers 7

    iget-object v0, p0, LV/g;->d:LV/l;

    if-nez v0, :cond_23

    new-instance v0, LV/l;

    iget-object v1, p0, LV/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, LV/g;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LV/l;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, LV/g;->d:LV/l;

    iget-object v0, p0, LV/g;->d:LV/l;

    invoke-virtual {v0}, LV/l;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_23
    new-instance v0, LV/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LV/i;-><init>(LV/g;Ljava/lang/String;ZLV/h;)V

    return-object v0
.end method
