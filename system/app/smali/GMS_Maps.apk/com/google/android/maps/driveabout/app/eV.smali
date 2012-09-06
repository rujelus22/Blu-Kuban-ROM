.class Lcom/google/android/maps/driveabout/app/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/et;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/et;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;Z)V

    .line 93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eA;->b()V

    .line 94
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->b(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eC;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 95
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->b(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eC;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eC;->a(Z)V

    .line 96
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ev;->a:Lcom/google/android/maps/driveabout/app/et;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;Lcom/google/android/maps/driveabout/app/eC;)Lcom/google/android/maps/driveabout/app/eC;

    .line 98
    :cond_26
    return-void
.end method
