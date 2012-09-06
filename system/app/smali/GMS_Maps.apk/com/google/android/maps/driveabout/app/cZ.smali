.class Lcom/google/android/maps/driveabout/app/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cz;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cz;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 593
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->a:Landroid/content/Intent;

    if-eqz v0, :cond_b

    .line 594
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/cz;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    .line 596
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 597
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cz;->b:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 599
    :cond_1d
    return-void
.end method
