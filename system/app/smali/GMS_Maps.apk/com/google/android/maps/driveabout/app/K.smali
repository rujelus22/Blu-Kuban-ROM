.class Lcom/google/android/maps/driveabout/app/K;
.super Lcom/google/android/maps/driveabout/app/J;


# instance fields
.field final synthetic b:Lcom/google/android/maps/driveabout/app/DestinationActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/K;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;Lcom/google/android/maps/driveabout/app/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/K;-><init>(Lcom/google/android/maps/driveabout/app/DestinationActivity;)V

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/maps/driveabout/app/S;
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/K;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/K;->b:Lcom/google/android/maps/driveabout/app/DestinationActivity;

    invoke-static {v2}, Lcom/google/android/maps/driveabout/app/DestinationActivity;->g(Lcom/google/android/maps/driveabout/app/DestinationActivity;)Lcom/google/android/maps/driveabout/app/ae;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;Z)Lcom/google/android/maps/driveabout/app/S;

    move-result-object v0

    return-object v0
.end method
