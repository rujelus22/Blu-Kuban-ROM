.class public Lu/B;
.super Ljava/lang/Object;


# instance fields
.field private a:Lu/x;

.field private b:Lt/L;

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/y;)V
    .registers 2

    invoke-direct {p0}, Lu/B;-><init>()V

    return-void
.end method

.method static synthetic a(Lu/B;D)D
    .registers 3

    iput-wide p1, p0, Lu/B;->d:D

    return-wide p1
.end method

.method static synthetic a(Lu/B;I)I
    .registers 2

    iput p1, p0, Lu/B;->e:I

    return p1
.end method

.method static synthetic a(Lu/B;)Lt/L;
    .registers 2

    iget-object v0, p0, Lu/B;->b:Lt/L;

    return-object v0
.end method

.method static synthetic a(Lu/B;Lt/L;)Lt/L;
    .registers 2

    iput-object p1, p0, Lu/B;->b:Lt/L;

    return-object p1
.end method

.method static synthetic a(Lu/B;Lu/x;)Lu/x;
    .registers 2

    iput-object p1, p0, Lu/B;->a:Lu/x;

    return-object p1
.end method

.method static synthetic b(Lu/B;)D
    .registers 3

    iget-wide v0, p0, Lu/B;->d:D

    return-wide v0
.end method

.method static synthetic b(Lu/B;D)D
    .registers 3

    iput-wide p1, p0, Lu/B;->c:D

    return-wide p1
.end method


# virtual methods
.method public a(D)Lu/B;
    .registers 6

    new-instance v0, Lu/B;

    invoke-direct {v0}, Lu/B;-><init>()V

    iget-object v1, p0, Lu/B;->a:Lu/x;

    iput-object v1, v0, Lu/B;->a:Lu/x;

    iget-object v1, p0, Lu/B;->b:Lt/L;

    iput-object v1, v0, Lu/B;->b:Lt/L;

    iget-wide v1, p0, Lu/B;->c:D

    iput-wide v1, v0, Lu/B;->c:D

    iput-wide p1, v0, Lu/B;->d:D

    iget v1, p0, Lu/B;->e:I

    iput v1, v0, Lu/B;->e:I

    return-object v0
.end method

.method public a()Lu/x;
    .registers 2

    iget-object v0, p0, Lu/B;->a:Lu/x;

    return-object v0
.end method

.method public b()Lt/L;
    .registers 2

    iget-object v0, p0, Lu/B;->b:Lt/L;

    return-object v0
.end method

.method public c()D
    .registers 3

    iget-wide v0, p0, Lu/B;->c:D

    return-wide v0
.end method

.method public d()D
    .registers 3

    iget-wide v0, p0, Lu/B;->d:D

    return-wide v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lu/B;->e:I

    return v0
.end method
