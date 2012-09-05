.class Lcom/google/android/maps/driveabout/app/eM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/eO;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/maps/driveabout/app/eH;

.field private final d:Landroid/os/CountDownTimer;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eH;JJ)V
    .registers 12

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eM;->c:Lcom/google/android/maps/driveabout/app/eH;

    iput-wide p2, p0, Lcom/google/android/maps/driveabout/app/eM;->a:J

    iput-wide p4, p0, Lcom/google/android/maps/driveabout/app/eM;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eN;

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/eM;->a:J

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/app/eM;->b:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/eN;-><init>(Lcom/google/android/maps/driveabout/app/eM;JJ)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eM;->d:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eM;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eM;->d:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
