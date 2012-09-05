.class Lcom/google/android/maps/driveabout/app/e;
.super Ljava/lang/Object;

# interfaces
.implements Lo/j;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/a;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/e;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/a;Lcom/google/android/maps/driveabout/app/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/e;-><init>(Lcom/google/android/maps/driveabout/app/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/e;->a:Lcom/google/android/maps/driveabout/app/a;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/a;->a(Lcom/google/android/maps/driveabout/app/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/f;-><init>(Lcom/google/android/maps/driveabout/app/e;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
