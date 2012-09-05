.class Lcom/google/android/maps/driveabout/app/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dO;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/dO;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/b;->b:Lcom/google/android/maps/driveabout/app/a;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/b;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/b;->a:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->r()V

    return-void
.end method
