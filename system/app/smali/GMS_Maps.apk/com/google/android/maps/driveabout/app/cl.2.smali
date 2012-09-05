.class Lcom/google/android/maps/driveabout/app/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lat/g;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/ck;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ck;Lat/g;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cl;->b:Lcom/google/android/maps/driveabout/app/ck;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lat/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cl;->a:Lat/g;

    invoke-interface {v0}, Lat/g;->b()V

    return-void
.end method
