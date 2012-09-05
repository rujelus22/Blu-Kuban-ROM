.class Lcom/google/android/maps/driveabout/app/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/S;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/S;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/T;->b:Lcom/google/android/maps/driveabout/app/S;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/T;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/T;->b:Lcom/google/android/maps/driveabout/app/S;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/T;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/S;->a(Ljava/util/ArrayList;)V

    return-void
.end method
