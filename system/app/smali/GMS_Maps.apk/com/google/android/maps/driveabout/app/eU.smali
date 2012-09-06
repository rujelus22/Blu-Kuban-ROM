.class Lcom/google/android/maps/driveabout/app/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/et;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/et;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;Z)V

    .line 76
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eA;->b()V

    .line 77
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->b(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eC;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/et;->b(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eC;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eC;->a(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eu;->a:Lcom/google/android/maps/driveabout/app/et;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/et;->a(Lcom/google/android/maps/driveabout/app/et;Lcom/google/android/maps/driveabout/app/eC;)Lcom/google/android/maps/driveabout/app/eC;

    .line 81
    :cond_26
    return-void
.end method
