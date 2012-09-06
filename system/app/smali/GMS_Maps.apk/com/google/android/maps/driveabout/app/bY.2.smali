.class Lcom/google/android/maps/driveabout/app/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bY;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 468
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bY;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->h(Lcom/google/android/maps/driveabout/app/NavigationActivity;)Lcom/google/android/maps/driveabout/app/al;

    move-result-object v0

    const v1, 0x7f0d0003

    const v2, 0x7f0d0004

    const v3, 0x7f0d0046

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/bZ;

    invoke-direct {v5, p0}, Lcom/google/android/maps/driveabout/app/bZ;-><init>(Lcom/google/android/maps/driveabout/app/bY;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/al;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 480
    return-void
.end method
