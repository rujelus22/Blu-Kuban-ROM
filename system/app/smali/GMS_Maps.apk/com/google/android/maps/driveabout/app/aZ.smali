.class Lcom/google/android/maps/driveabout/app/aZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lu/g;

.field final synthetic c:Lu/q;

.field final synthetic d:Lcom/google/android/maps/driveabout/app/aV;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aV;ILu/g;Lu/q;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aZ;->d:Lcom/google/android/maps/driveabout/app/aV;

    iput p2, p0, Lcom/google/android/maps/driveabout/app/aZ;->a:I

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aZ;->b:Lu/g;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aZ;->c:Lu/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aZ;->d:Lcom/google/android/maps/driveabout/app/aV;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aV;->a:Lcom/google/android/maps/driveabout/app/aL;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/aZ;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aZ;->b:Lu/g;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/aZ;->c:Lu/q;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/aL;->a(ILu/g;Lu/q;)V

    return-void
.end method
