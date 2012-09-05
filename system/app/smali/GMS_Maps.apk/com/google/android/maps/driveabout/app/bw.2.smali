.class Lcom/google/android/maps/driveabout/app/bw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bv;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bw;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bw;->a:Lcom/google/android/maps/driveabout/app/bv;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bv;->i()V

    return-void
.end method
