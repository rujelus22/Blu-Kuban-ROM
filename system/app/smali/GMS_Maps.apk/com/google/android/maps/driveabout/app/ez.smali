.class Lcom/google/android/maps/driveabout/app/ez;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dO;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/RmiPreference;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ez;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/RmiPreference;->d(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_31

    const-string v0, "I"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->j()Z

    move-result v0

    goto :goto_7

    :cond_31
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ez;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dO;->a(Lcom/google/android/maps/driveabout/app/dO;)Ly/p;

    move-result-object v0

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0, p3}, Ly/s;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method
