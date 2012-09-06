.class Lcom/google/android/maps/driveabout/app/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/al;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 656
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/al;->b(Lcom/google/android/maps/driveabout/app/al;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "RmiMail"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/al;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lt/q;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 659
    :cond_1e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/al;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 660
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/an;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0, v3}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/RecordingLevelsView;)Lcom/google/android/maps/driveabout/app/RecordingLevelsView;

    .line 661
    return-void
.end method
