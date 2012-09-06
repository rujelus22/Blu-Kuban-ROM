.class final Lcom/google/android/maps/driveabout/vector/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/cc;)V
    .registers 2
    .parameter

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/ca;Lcom/google/android/maps/driveabout/vector/ca;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 697
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/l;)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ca;->a()Ln/l;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/l;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 693
    check-cast p1, Lcom/google/android/maps/driveabout/vector/ca;

    check-cast p2, Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cd;->a(Lcom/google/android/maps/driveabout/vector/ca;Lcom/google/android/maps/driveabout/vector/ca;)I

    move-result v0

    return v0
.end method
