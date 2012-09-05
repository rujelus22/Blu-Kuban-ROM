.class Lcom/google/android/maps/driveabout/app/cT;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cS;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cS;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Lcom/google/android/maps/driveabout/app/cS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cT;->a:Lcom/google/android/maps/driveabout/app/cS;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/cS;->a(Lcom/google/android/maps/driveabout/app/cS;Z)V

    return-void
.end method
