.class Lcom/google/android/location/localizer/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:D


# direct methods
.method constructor <init>(IID)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/location/localizer/m;->a:I

    iput p2, p0, Lcom/google/android/location/localizer/m;->b:I

    iput-wide p3, p0, Lcom/google/android/location/localizer/m;->c:D

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/localizer/m;)D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/location/localizer/m;->c:D

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/location/localizer/m;)I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/m;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/location/localizer/m;)I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/m;->a:I

    return v0
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/m;->a:I

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/google/android/location/localizer/m;->b:I

    return v0
.end method
