.class Lcom/google/android/maps/driveabout/app/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cV;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;Lcom/google/android/maps/driveabout/app/cV;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/at;->b:Lcom/google/android/maps/driveabout/app/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/cV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->b:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/at;->a:Lcom/google/android/maps/driveabout/app/cV;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cV;->a()V

    return-void
.end method
