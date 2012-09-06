.class Lcom/google/ads/util/h;
.super Ljava/lang/Object;


# static fields
.field static final d:Lcom/google/ads/util/h;

.field static final e:Lcom/google/ads/util/h;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/ads/util/h;

    invoke-direct {v0}, Lcom/google/ads/util/h;-><init>()V

    sput-object v0, Lcom/google/ads/util/h;->d:Lcom/google/ads/util/h;

    new-instance v0, Lcom/google/ads/util/h;

    const-string v1, "unknown"

    const-string v2, "generic"

    const-string v3, "generic"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/util/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/ads/util/h;->e:Lcom/google/ads/util/h;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    return v0

    :cond_7
    if-ne p0, p1, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/ads/util/h;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Lcom/google/ads/util/h;

    iget-object v1, p0, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/ads/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/ads/util/h;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/ads/util/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget-object v1, p0, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/ads/util/h;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_22
    return v0
.end method
