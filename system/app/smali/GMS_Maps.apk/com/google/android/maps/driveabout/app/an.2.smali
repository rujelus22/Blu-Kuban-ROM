.class Lcom/google/android/maps/driveabout/app/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/am;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/am;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/am;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/am;->a(Lcom/google/android/maps/driveabout/app/am;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
