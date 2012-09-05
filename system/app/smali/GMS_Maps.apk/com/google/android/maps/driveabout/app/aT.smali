.class Lcom/google/android/maps/driveabout/app/aT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aQ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aQ;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Lcom/google/android/maps/driveabout/app/aQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aT;->a:Lcom/google/android/maps/driveabout/app/aQ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aL;->X()V

    return-void
.end method
