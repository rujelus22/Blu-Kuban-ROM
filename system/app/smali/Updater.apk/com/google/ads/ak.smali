.class public final Lcom/google/ads/ak;
.super Lcom/google/ads/util/z;


# static fields
.field private static final b:Lcom/google/ads/ak;


# instance fields
.field public final a:Lcom/google/ads/util/ab;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/ads/ak;

    invoke-direct {v0}, Lcom/google/ads/ak;-><init>()V

    sput-object v0, Lcom/google/ads/ak;->b:Lcom/google/ads/ak;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/google/ads/util/z;-><init>()V

    new-instance v0, Lcom/google/ads/util/ab;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/al;

    invoke-direct {v2}, Lcom/google/ads/al;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ab;-><init>(Lcom/google/ads/util/z;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ak;->a:Lcom/google/ads/util/ab;

    return-void
.end method

.method public static a()Lcom/google/ads/ak;
    .registers 1

    sget-object v0, Lcom/google/ads/ak;->b:Lcom/google/ads/ak;

    return-object v0
.end method
