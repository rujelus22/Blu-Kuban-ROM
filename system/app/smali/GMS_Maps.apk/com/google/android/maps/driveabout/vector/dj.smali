.class Lcom/google/android/maps/driveabout/vector/dj;
.super Lcom/google/android/maps/driveabout/vector/dw;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dw;-><init>(ILcom/google/android/maps/driveabout/vector/dh;)V

    .line 667
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->a:Z

    .line 671
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 665
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dj;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/dj;)Z
    .registers 2
    .parameter

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dj;->a:Z

    return v0
.end method


# virtual methods
.method a()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 3

    .prologue
    .line 687
    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(Lcom/google/android/maps/driveabout/vector/dj;Lcom/google/android/maps/driveabout/vector/dh;)V

    return-object v0
.end method

.method a(Z)Lcom/google/android/maps/driveabout/vector/dj;
    .registers 2
    .parameter

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/dj;->a:Z

    .line 682
    return-object p0
.end method
