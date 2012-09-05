.class public Lcom/google/android/maps/driveabout/app/O;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/app/O;->a:I

    iput p2, p0, Lcom/google/android/maps/driveabout/app/O;->b:I

    iput p3, p0, Lcom/google/android/maps/driveabout/app/O;->c:I

    iput p4, p0, Lcom/google/android/maps/driveabout/app/O;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/O;)I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/O;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/O;->c:I

    return v0
.end method

.method public a(Lcom/google/googlenav/j;LaJ/B;)Z
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/O;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_d

    invoke-static {}, Lu/O;->a()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v1, p0, Lcom/google/android/maps/driveabout/app/O;->d:I

    invoke-virtual {p1, v1, p2, v0}, Lcom/google/googlenav/j;->a(ILaJ/B;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    goto :goto_c
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/O;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/O;->b:I

    return v0
.end method
