.class public Lcom/google/ads/ae;
.super Lcom/google/ads/util/w;


# static fields
.field private static final b:Lcom/google/ads/ae;


# instance fields
.field public final a:Lcom/google/ads/util/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/z",
            "<",
            "Lcom/google/ads/af;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/ads/ae;

    invoke-direct {v0}, Lcom/google/ads/ae;-><init>()V

    sput-object v0, Lcom/google/ads/ae;->b:Lcom/google/ads/ae;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/google/ads/util/w;-><init>()V

    new-instance v0, Lcom/google/ads/util/z;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/af;

    invoke-direct {v2}, Lcom/google/ads/af;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/z;-><init>(Lcom/google/ads/util/w;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/ae;->a:Lcom/google/ads/util/z;

    return-void
.end method

.method public static a()Lcom/google/ads/ae;
    .registers 1

    sget-object v0, Lcom/google/ads/ae;->b:Lcom/google/ads/ae;

    return-object v0
.end method
