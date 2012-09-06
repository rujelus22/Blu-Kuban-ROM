.class Lcom/google/android/maps/driveabout/app/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/f;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/A;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/A;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    new-instance v1, Lcom/google/android/maps/driveabout/app/B;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/B;-><init>(Lcom/google/android/maps/driveabout/app/A;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method
