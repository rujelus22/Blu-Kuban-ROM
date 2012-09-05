.class Lcom/google/googlenav/layer/h;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/googlenav/layer/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/layer/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/f;-><init>(Lcom/google/googlenav/layer/g;)V

    sput-object v0, Lcom/google/googlenav/layer/h;->a:Lcom/google/googlenav/layer/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
