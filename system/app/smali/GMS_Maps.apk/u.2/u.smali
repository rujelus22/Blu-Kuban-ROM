.class Lu/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ls/b;

.field private final b:[Lu/P;

.field private final c:I

.field private final d:Lu/x;

.field private final e:I

.field private final f:[Lu/b;


# direct methods
.method private constructor <init>(Ls/b;Lu/x;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/u;->a:Ls/b;

    iput-object v1, p0, Lu/u;->b:[Lu/P;

    iput v0, p0, Lu/u;->c:I

    iput-object p2, p0, Lu/u;->d:Lu/x;

    iput v0, p0, Lu/u;->e:I

    iput-object v1, p0, Lu/u;->f:[Lu/b;

    return-void
.end method

.method synthetic constructor <init>(Ls/b;Lu/x;Lu/s;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lu/u;-><init>(Ls/b;Lu/x;)V

    return-void
.end method

.method private constructor <init>(Ls/b;[Lu/P;II[Lu/b;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/u;->a:Ls/b;

    iput-object p2, p0, Lu/u;->b:[Lu/P;

    iput p3, p0, Lu/u;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu/u;->d:Lu/x;

    iput p4, p0, Lu/u;->e:I

    iput-object p5, p0, Lu/u;->f:[Lu/b;

    return-void
.end method

.method synthetic constructor <init>(Ls/b;[Lu/P;II[Lu/b;Lu/s;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lu/u;-><init>(Ls/b;[Lu/P;II[Lu/b;)V

    return-void
.end method

.method static synthetic a(Lu/u;)Ls/b;
    .registers 2

    iget-object v0, p0, Lu/u;->a:Ls/b;

    return-object v0
.end method

.method static synthetic b(Lu/u;)[Lu/P;
    .registers 2

    iget-object v0, p0, Lu/u;->b:[Lu/P;

    return-object v0
.end method

.method static synthetic c(Lu/u;)I
    .registers 2

    iget v0, p0, Lu/u;->c:I

    return v0
.end method

.method static synthetic d(Lu/u;)I
    .registers 2

    iget v0, p0, Lu/u;->e:I

    return v0
.end method

.method static synthetic e(Lu/u;)[Lu/b;
    .registers 2

    iget-object v0, p0, Lu/u;->f:[Lu/b;

    return-object v0
.end method

.method static synthetic f(Lu/u;)Lu/x;
    .registers 2

    iget-object v0, p0, Lu/u;->d:Lu/x;

    return-object v0
.end method
