.class Lcom/google/android/maps/driveabout/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lu/P;

.field private final b:F

.field private final c:I


# direct methods
.method constructor <init>(Lu/P;FI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aj;->a:Lu/P;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aj;->b:F

    iput p3, p0, Lcom/google/android/maps/driveabout/app/aj;->c:I

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/aj;)Lu/P;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aj;->a:Lu/P;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/aj;)I
    .registers 4

    iget v0, p0, Lcom/google/android/maps/driveabout/app/aj;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/aj;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aj;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/aj;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    iget v0, p0, Lcom/google/android/maps/driveabout/app/aj;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/app/aj;->c:I

    sub-int/2addr v0, v1

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/maps/driveabout/app/aj;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/aj;->a(Lcom/google/android/maps/driveabout/app/aj;)I

    move-result v0

    return v0
.end method
