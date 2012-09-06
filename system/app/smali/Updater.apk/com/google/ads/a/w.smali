.class public final Lcom/google/ads/a/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/ads/a/w;


# instance fields
.field private final b:Lcom/google/ads/g;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/ads/a/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/w;-><init>(Lcom/google/ads/g;Z)V

    sput-object v0, Lcom/google/ads/a/w;->a:Lcom/google/ads/a/w;

    return-void
.end method

.method private constructor <init>(Lcom/google/ads/g;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/w;->b:Lcom/google/ads/g;

    iput-boolean p2, p0, Lcom/google/ads/a/w;->c:Z

    return-void
.end method

.method public static a(Lcom/google/ads/g;)Lcom/google/ads/a/w;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/ads/a/w;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/a/w;
    .registers 5

    new-instance v0, Lcom/google/ads/a/w;

    invoke-static {p0, p1}, Lcom/google/ads/g;->a(Lcom/google/ads/g;Landroid/content/Context;)Lcom/google/ads/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/w;-><init>(Lcom/google/ads/g;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/ads/a/w;->c:Z

    return v0
.end method

.method public final b()Lcom/google/ads/g;
    .registers 2

    iget-object v0, p0, Lcom/google/ads/a/w;->b:Lcom/google/ads/g;

    return-object v0
.end method
