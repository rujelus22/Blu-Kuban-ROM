.class Lcom/google/android/maps/driveabout/app/bN;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;->finish()V

    return-void
.end method
