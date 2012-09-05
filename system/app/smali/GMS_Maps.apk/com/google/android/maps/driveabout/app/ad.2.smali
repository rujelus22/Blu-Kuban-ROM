.class Lcom/google/android/maps/driveabout/app/ad;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ls/b;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/maps/driveabout/app/ac;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/ac;Ls/b;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/ac;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ad;->a:Ls/b;

    iput-boolean p3, p0, Lcom/google/android/maps/driveabout/app/ad;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ad;->c:Lcom/google/android/maps/driveabout/app/ac;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ad;->a:Ls/b;

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/app/ad;->b:Z

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ac;->a(Lcom/google/android/maps/driveabout/app/ac;Ls/b;Z)V

    return-void
.end method
