.class Lcom/google/googlenav/aD;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/googlenav/aA;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/aA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/aA;-><init>(Lcom/google/googlenav/aB;)V

    sput-object v0, Lcom/google/googlenav/aD;->a:Lcom/google/googlenav/aA;

    sget-object v0, Lcom/google/googlenav/aD;->a:Lcom/google/googlenav/aA;

    invoke-static {v0}, Laf/l;->a(Laf/j;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
