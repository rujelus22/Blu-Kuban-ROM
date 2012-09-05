.class Lcom/google/googlenav/X;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/google/googlenav/V;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/googlenav/V;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/W;)V

    sput-object v0, Lcom/google/googlenav/X;->a:Lcom/google/googlenav/V;

    sget-object v0, Lcom/google/googlenav/X;->a:Lcom/google/googlenav/V;

    invoke-static {v0}, Laf/l;->a(Laf/j;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
