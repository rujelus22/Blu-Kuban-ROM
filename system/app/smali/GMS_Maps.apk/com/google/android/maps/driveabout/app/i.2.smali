.class Lcom/google/android/maps/driveabout/app/I;
.super Lcom/google/android/maps/driveabout/app/H;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/I;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/H;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/r;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 409
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/I;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/maps/driveabout/app/R;
    .registers 3

    .prologue
    .line 412
    .line 413
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/I;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/I;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ad;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;)Lcom/google/android/maps/driveabout/app/R;

    move-result-object v0

    return-object v0
.end method
