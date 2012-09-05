.class public Ly/r;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ly/p;

.field private final b:Ly/s;

.field private final c:I

.field private final d:Z


# direct methods
.method private constructor <init>(Ly/p;Ly/s;IZ)V
    .registers 5

    iput-object p1, p0, Ly/r;->a:Ly/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly/r;->b:Ly/s;

    iput p3, p0, Ly/r;->c:I

    iput-boolean p4, p0, Ly/r;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Ly/p;Ly/s;IZLy/q;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ly/r;-><init>(Ly/p;Ly/s;IZ)V

    return-void
.end method

.method private a()Ly/s;
    .registers 2

    iget-object v0, p0, Ly/r;->b:Ly/s;

    return-object v0
.end method

.method static synthetic a(Ly/r;)Ly/s;
    .registers 2

    invoke-direct {p0}, Ly/r;->a()Ly/s;

    move-result-object v0

    return-object v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Ly/r;->c:I

    return v0
.end method

.method static synthetic b(Ly/r;)I
    .registers 2

    invoke-direct {p0}, Ly/r;->b()I

    move-result v0

    return v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Ly/r;->d:Z

    return v0
.end method

.method static synthetic c(Ly/r;)Z
    .registers 2

    invoke-direct {p0}, Ly/r;->c()Z

    move-result v0

    return v0
.end method
