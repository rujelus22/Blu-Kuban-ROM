.class Lcom/google/android/maps/driveabout/app/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cJ;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/au;->b:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->b:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 314
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/au;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cJ;->a()V

    .line 315
    return-void
.end method
