.class Lcom/google/android/maps/driveabout/app/aI;
.super Lcom/google/android/maps/driveabout/app/aJ;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aH;

.field private final c:I

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aH;FILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    float-to-int v0, p2

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/maps/driveabout/app/aI;-><init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V

    .line 520
    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/aH;IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aI;->a:Lcom/google/android/maps/driveabout/app/aH;

    .line 513
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(I)V

    .line 514
    iput p3, p0, Lcom/google/android/maps/driveabout/app/aI;->c:I

    .line 515
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Ljava/lang/String;

    .line 516
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Ljava/lang/String;

    if-nez v0, :cond_17

    .line 525
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->a:Lcom/google/android/maps/driveabout/app/aH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aH;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aI;->c:I

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 527
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aI;->a:Lcom/google/android/maps/driveabout/app/aH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/aH;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aI;->c:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aI;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method
