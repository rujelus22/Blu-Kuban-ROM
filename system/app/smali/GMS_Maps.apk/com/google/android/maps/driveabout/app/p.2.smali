.class public Lcom/google/android/maps/driveabout/app/p;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/p;->a:Lcom/google/android/maps/driveabout/app/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/n;->b()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/app/n;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/p;->a:Lcom/google/android/maps/driveabout/app/n;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/p;->a:Lcom/google/android/maps/driveabout/app/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/n;->a()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/p;->a:Lcom/google/android/maps/driveabout/app/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/n;->a()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/p;->a:Lcom/google/android/maps/driveabout/app/n;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/n;->b()V

    return-void
.end method
