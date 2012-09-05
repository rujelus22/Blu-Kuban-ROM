.class Lcom/google/android/maps/driveabout/app/aW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lu/j;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/maps/driveabout/app/aV;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aV;Lu/j;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aW;->c:Lcom/google/android/maps/driveabout/app/aV;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aW;->a:Lu/j;

    iput p3, p0, Lcom/google/android/maps/driveabout/app/aW;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aW;->c:Lcom/google/android/maps/driveabout/app/aV;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aV;->a:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aL;->f:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aW;->a:Lu/j;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/aW;->b:I

    invoke-virtual {v0, v1, v2}, Ly/s;->a(Lu/j;I)V

    return-void
.end method
