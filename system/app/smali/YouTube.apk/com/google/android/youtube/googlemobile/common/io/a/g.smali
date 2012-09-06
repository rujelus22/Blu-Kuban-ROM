.class public final Lcom/google/android/youtube/googlemobile/common/io/a/g;
.super Lcom/google/android/youtube/googlemobile/common/io/b;


# static fields
.field private static e:I

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Lcom/google/android/youtube/googlemobile/common/io/a/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/googlemobile/common/io/a/g;)Lcom/google/android/youtube/googlemobile/common/io/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->d:Lcom/google/android/youtube/googlemobile/common/io/a/j;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b()I
    .registers 2

    sget v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->e:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/android/youtube/googlemobile/common/io/a/g;->e:I

    return v0
.end method

.method static synthetic c()I
    .registers 2

    sget v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->e:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/google/android/youtube/googlemobile/common/io/a/g;->e:I

    return v0
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->e:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Lcom/google/android/youtube/googlemobile/common/io/e;
    .registers 7

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->d:Lcom/google/android/youtube/googlemobile/common/io/a/j;

    if-nez v0, :cond_23

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/a/j;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/googlemobile/common/io/a/j;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->d:Lcom/google/android/youtube/googlemobile/common/io/a/j;

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/g;->d:Lcom/google/android/youtube/googlemobile/common/io/a/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/googlemobile/common/io/a/j;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_23
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/a/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/googlemobile/common/io/a/h;-><init>(Lcom/google/android/youtube/googlemobile/common/io/a/g;Ljava/lang/String;ZB)V

    return-object v0
.end method
