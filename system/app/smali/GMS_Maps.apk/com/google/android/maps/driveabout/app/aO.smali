.class Lcom/google/android/maps/driveabout/app/aO;
.super Ljava/lang/Object;

# interfaces
.implements Ls/s;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aL;


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aO;->a:Lcom/google/android/maps/driveabout/app/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/app/aL;Lcom/google/android/maps/driveabout/app/aM;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/aO;-><init>(Lcom/google/android/maps/driveabout/app/aL;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aO;->a:Lcom/google/android/maps/driveabout/app/aL;

    new-instance v1, Lcom/google/android/maps/driveabout/app/aP;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/aP;-><init>(Lcom/google/android/maps/driveabout/app/aO;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ljava/lang/Runnable;)V

    return-void
.end method
