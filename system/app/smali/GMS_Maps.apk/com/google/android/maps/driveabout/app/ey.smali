.class Lcom/google/android/maps/driveabout/app/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eA;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/maps/driveabout/app/et;

.field private final d:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/et;JJ)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ey;->c:Lcom/google/android/maps/driveabout/app/et;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/app/ey;->a:J

    iput-wide p4, p0, Lcom/google/android/maps/driveabout/app/ey;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    new-instance v0, Lcom/google/android/maps/driveabout/app/ez;

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/ey;->a:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/ey;->b:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ez;-><init>(Lcom/google/android/maps/driveabout/app/ey;JJ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/ey;->d:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ey;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 263
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ey;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 267
    return-void
.end method
