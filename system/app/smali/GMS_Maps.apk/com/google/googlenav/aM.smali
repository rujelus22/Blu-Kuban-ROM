.class Lcom/google/googlenav/aM;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/googlenav/aJ;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/googlenav/aJ;

    new-instance v1, Lcom/google/googlenav/aN;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/aN;-><init>(Lcom/google/googlenav/aK;)V

    invoke-direct {v0, v1}, Lcom/google/googlenav/aJ;-><init>(Lcom/google/googlenav/aL;)V

    sput-object v0, Lcom/google/googlenav/aM;->a:Lcom/google/googlenav/aJ;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/googlenav/aJ;
    .registers 1

    sget-object v0, Lcom/google/googlenav/aM;->a:Lcom/google/googlenav/aJ;

    return-object v0
.end method
