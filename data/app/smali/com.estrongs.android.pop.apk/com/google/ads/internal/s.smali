.class public Lcom/google/ads/internal/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/internal/s;


# instance fields
.field private final b:Lcom/google/ads/d;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/ads/internal/s;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/s;-><init>(Lcom/google/ads/d;Z)V

    sput-object v0, Lcom/google/ads/internal/s;->a:Lcom/google/ads/internal/s;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/d;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/s;->b:Lcom/google/ads/d;

    iput-boolean p2, p0, Lcom/google/ads/internal/s;->c:Z

    return-void
.end method

.method public static a(Lcom/google/ads/d;)Lcom/google/ads/internal/s;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/ads/internal/s;->a(Lcom/google/ads/d;Landroid/content/Context;)Lcom/google/ads/internal/s;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/ads/d;Landroid/content/Context;)Lcom/google/ads/internal/s;
    .registers 5

    new-instance v0, Lcom/google/ads/internal/s;

    invoke-static {p0, p1}, Lcom/google/ads/d;->a(Lcom/google/ads/d;Landroid/content/Context;)Lcom/google/ads/d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/internal/s;-><init>(Lcom/google/ads/d;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/internal/s;->c:Z

    return v0
.end method

.method public b()Lcom/google/ads/d;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/internal/s;->b:Lcom/google/ads/d;

    return-object v0
.end method
