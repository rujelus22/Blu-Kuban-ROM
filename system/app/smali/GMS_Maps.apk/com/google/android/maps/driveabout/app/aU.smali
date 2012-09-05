.class Lcom/google/android/maps/driveabout/app/aU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ls/C;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/aQ;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/aQ;Ls/C;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aU;->b:Lcom/google/android/maps/driveabout/app/aQ;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aU;->a:Ls/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aU;->b:Lcom/google/android/maps/driveabout/app/aQ;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/app/aQ;->a:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/aU;->a:Ls/C;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/aL;->a(Ls/C;)V

    return-void
.end method
