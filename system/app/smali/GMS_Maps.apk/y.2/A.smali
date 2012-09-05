.class Ly/A;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/cV;


# instance fields
.field final synthetic a:Ly/z;


# direct methods
.method constructor <init>(Ly/z;)V
    .registers 2

    iput-object p1, p0, Ly/A;->a:Ly/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lu/P;)V
    .registers 4

    iget-object v0, p0, Ly/A;->a:Ly/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ly/z;->a(Ly/z;Z)Z

    iget-object v0, p0, Ly/A;->a:Ly/z;

    iget-object v0, v0, Ly/z;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cU;->i()V

    iget-object v0, p0, Ly/A;->a:Ly/z;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ly/z;->a(Lu/P;Z)V

    return-void
.end method
