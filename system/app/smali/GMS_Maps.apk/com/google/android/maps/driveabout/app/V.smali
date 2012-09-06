.class Lcom/google/android/maps/driveabout/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/v;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->b(Lcom/google/android/maps/driveabout/app/DestinationActivity;Z)Z

    .line 1241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/v;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Landroid/content/Intent;)V

    .line 1243
    return-void
.end method
