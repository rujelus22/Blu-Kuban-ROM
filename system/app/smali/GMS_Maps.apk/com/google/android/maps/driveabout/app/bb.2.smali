.class Lcom/google/android/maps/driveabout/app/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lu/q;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aV;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aV;Lu/q;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bb;->b:Lcom/google/android/maps/driveabout/app/aV;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bb;->a:Lu/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bb;->b:Lcom/google/android/maps/driveabout/app/aV;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aV;->a:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bb;->a:Lu/q;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->c(Lu/q;)V

    return-void
.end method
