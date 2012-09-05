.class Lcom/google/android/maps/driveabout/app/aM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aL;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aM;->a:Lcom/google/android/maps/driveabout/app/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aM;->a:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aL;->b:Lcom/google/android/maps/driveabout/app/NavigationService;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->g()V

    return-void
.end method
