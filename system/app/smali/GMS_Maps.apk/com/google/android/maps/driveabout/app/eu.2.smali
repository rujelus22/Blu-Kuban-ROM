.class Lcom/google/android/maps/driveabout/app/eu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationView;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/dO;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dO;Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eu;->b:Lcom/google/android/maps/driveabout/app/dO;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_22

    const/16 v1, 0x17

    if-ne p2, v1, :cond_1e

    invoke-static {}, Ln/a;->a()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/NavigationView;

    const-string v2, "Enabling mock GPS..."

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eu;->b:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dO;->f(Z)V

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/16 v1, 0x54

    if-eq p2, v1, :cond_1d

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method
