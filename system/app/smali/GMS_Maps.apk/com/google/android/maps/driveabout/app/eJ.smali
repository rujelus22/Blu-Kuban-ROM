.class Lcom/google/android/maps/driveabout/app/eJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/eH;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/eH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eH;->a(Lcom/google/android/maps/driveabout/app/eH;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eH;->a(Lcom/google/android/maps/driveabout/app/eH;)Lcom/google/android/maps/driveabout/app/eO;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eO;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eH;->b(Lcom/google/android/maps/driveabout/app/eH;)Lcom/google/android/maps/driveabout/app/eQ;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/eH;->b(Lcom/google/android/maps/driveabout/app/eH;)Lcom/google/android/maps/driveabout/app/eQ;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eQ;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eJ;->a:Lcom/google/android/maps/driveabout/app/eH;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/eH;->a(Lcom/google/android/maps/driveabout/app/eH;Lcom/google/android/maps/driveabout/app/eQ;)Lcom/google/android/maps/driveabout/app/eQ;

    :cond_26
    return-void
.end method
