.class Lcom/google/android/maps/driveabout/app/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ar;->b:Lcom/google/android/maps/driveabout/app/am;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ar;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ar;->b:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->q()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ar;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ar;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_e
    return-void
.end method