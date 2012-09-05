.class Lcom/google/android/maps/driveabout/app/Q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/P;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/P;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/Q;->a:Lcom/google/android/maps/driveabout/app/P;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/P;->c:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->f(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method
