.class Lcom/google/android/maps/driveabout/app/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aq;->b:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->b:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->r()V

    .line 884
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_e

    .line 885
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aq;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 887
    :cond_e
    return-void
.end method
