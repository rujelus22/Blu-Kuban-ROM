.class Lcom/google/android/maps/driveabout/app/R;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/widgets/e;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/P;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Lcom/google/android/maps/driveabout/app/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/app/O;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Lcom/google/android/maps/driveabout/app/P;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/O;)Lcom/google/android/maps/driveabout/app/O;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Lcom/google/android/maps/driveabout/app/P;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/O;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Lcom/google/android/maps/driveabout/app/P;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const v1, 0x7f0f00a5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
