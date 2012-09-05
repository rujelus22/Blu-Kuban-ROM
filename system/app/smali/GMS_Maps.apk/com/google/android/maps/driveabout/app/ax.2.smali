.class Lcom/google/android/maps/driveabout/app/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ax;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ax;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/am;->f()V

    return-void
.end method
