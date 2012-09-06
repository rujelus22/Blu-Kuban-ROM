.class Lcom/google/android/maps/driveabout/vector/dF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dG;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dG;-><init>(Lcom/google/android/maps/driveabout/vector/dF;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dF;->a:Landroid/os/Handler;

    .line 566
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dH;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/dH;-><init>(Lcom/google/android/maps/driveabout/vector/dF;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dF;->b:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dE;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/dF;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 590
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    return-void
.end method

.method public a(Lac/g;)V
    .registers 4
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dF;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 578
    return-void
.end method

.method public b(Lac/g;)V
    .registers 4
    .parameter

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dF;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 596
    return-void
.end method
