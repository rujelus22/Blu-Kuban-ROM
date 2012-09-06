.class Lcom/google/android/maps/driveabout/app/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/aD;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const-string v1, "HomeAddress"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lt/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1019
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/E;->a:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->a(Lcom/google/android/maps/driveabout/app/DestinationActivity;Ljava/lang/String;I)V

    .line 1021
    :cond_17
    return-void
.end method
