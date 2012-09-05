.class Lcom/google/android/maps/driveabout/app/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/Z;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aa;->a:Lcom/google/android/maps/driveabout/app/Z;

    invoke-virtual {v0, v1, v1, v1}, Lcom/google/android/maps/driveabout/app/Z;->a(Lt/o;Lu/P;Ljava/util/ArrayList;)V

    return-void
.end method
