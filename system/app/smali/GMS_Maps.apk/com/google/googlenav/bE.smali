.class Lcom/google/googlenav/bE;
.super Ljava/lang/Object;


# static fields
.field private static a:Lap/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lap/c;

    new-instance v1, Lao/a;

    new-instance v2, Lao/b;

    invoke-direct {v2}, Lao/b;-><init>()V

    invoke-direct {v1, v2}, Lao/a;-><init>(Lao/d;)V

    invoke-direct {v0, v1}, Lap/c;-><init>(Lao/d;)V

    sput-object v0, Lcom/google/googlenav/bE;->a:Lap/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lap/c;
    .registers 1

    sget-object v0, Lcom/google/googlenav/bE;->a:Lap/c;

    return-object v0
.end method
