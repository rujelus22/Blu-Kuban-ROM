.class Lcom/google/android/maps/driveabout/app/W;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/maps/driveabout/app/V;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/V;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/W;->b:Lcom/google/android/maps/driveabout/app/V;

    iput-boolean p2, p0, Lcom/google/android/maps/driveabout/app/W;->a:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/W;->b:Lcom/google/android/maps/driveabout/app/V;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/app/W;->a:Z

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/V;->a(Lcom/google/android/maps/driveabout/app/V;Z)V

    return-void
.end method
