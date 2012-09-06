.class Lcom/google/android/maps/driveabout/app/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:Lo/P;

.field private final b:F

.field private final c:I


# direct methods
.method constructor <init>(Lo/P;FI)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lo/P;

    .line 257
    iput p2, p0, Lcom/google/android/maps/driveabout/app/ai;->b:F

    .line 258
    iput p3, p0, Lcom/google/android/maps/driveabout/app/ai;->c:I

    .line 259
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/ai;)Lo/P;
    .registers 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ai;->a:Lo/P;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/ai;)I
    .registers 4
    .parameter

    .prologue
    .line 267
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ai;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/ai;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 268
    const/4 v0, -0x1

    .line 273
    :goto_9
    return v0

    .line 270
    :cond_a
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ai;->b:F

    iget v1, p1, Lcom/google/android/maps/driveabout/app/ai;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 271
    const/4 v0, 0x1

    goto :goto_9

    .line 273
    :cond_14
    iget v0, p0, Lcom/google/android/maps/driveabout/app/ai;->c:I

    iget v1, p1, Lcom/google/android/maps/driveabout/app/ai;->c:I

    sub-int/2addr v0, v1

    goto :goto_9
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 250
    check-cast p1, Lcom/google/android/maps/driveabout/app/ai;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/ai;->a(Lcom/google/android/maps/driveabout/app/ai;)I

    move-result v0

    return v0
.end method
