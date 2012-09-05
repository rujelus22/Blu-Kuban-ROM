.class Lcom/google/android/maps/driveabout/app/ab;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lt/o;

.field final synthetic b:Lu/P;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Lcom/google/android/maps/driveabout/app/Z;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/Z;Lt/o;Lu/P;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lcom/google/android/maps/driveabout/app/Z;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Lt/o;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ab;->b:Lu/P;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/ab;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Lcom/google/android/maps/driveabout/app/S;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ab;->d:Lcom/google/android/maps/driveabout/app/Z;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ab;->a:Lt/o;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/ab;->b:Lu/P;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/ab;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/Z;->a(Lcom/google/android/maps/driveabout/app/Z;Lt/o;Lu/P;Ljava/util/ArrayList;)V

    return-void
.end method
