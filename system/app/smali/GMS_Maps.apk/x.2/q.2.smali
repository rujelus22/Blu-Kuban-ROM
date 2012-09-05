.class Lx/q;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aw;


# instance fields
.field private a:Lt/ae;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lx/l;)V
    .registers 2

    invoke-direct {p0}, Lx/q;-><init>()V

    return-void
.end method

.method static synthetic a(Lx/q;)Lt/ae;
    .registers 2

    iget-object v0, p0, Lx/q;->a:Lt/ae;

    return-object v0
.end method


# virtual methods
.method public a(Lt/af;ILt/ae;)V
    .registers 4

    if-nez p2, :cond_4

    iput-object p3, p0, Lx/q;->a:Lt/ae;

    :cond_4
    return-void
.end method
