.class Lcom/google/android/maps/driveabout/app/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/widgets/f;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/O;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/N;)V
    .registers 4
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/N;)Lcom/google/android/maps/driveabout/app/N;

    .line 327
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/N;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/O;->d:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f1000d5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 329
    return-void
.end method
