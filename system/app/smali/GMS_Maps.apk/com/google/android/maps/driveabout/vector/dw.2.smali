.class Lcom/google/android/maps/driveabout/vector/dw;
.super Lcom/google/android/maps/driveabout/vector/dk;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 580
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dk;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dw;->a:Z

    .line 581
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/dw;)Z
    .registers 2
    .parameter

    .prologue
    .line 576
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dw;->a:Z

    return v0
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 3

    .prologue
    .line 596
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/dv;-><init>(Lcom/google/android/maps/driveabout/vector/dw;Lcom/google/android/maps/driveabout/vector/dh;)V

    return-object v0
.end method

.method f(Z)Lcom/google/android/maps/driveabout/vector/dw;
    .registers 2
    .parameter

    .prologue
    .line 590
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dw;->a:Z

    .line 591
    return-object p0
.end method
