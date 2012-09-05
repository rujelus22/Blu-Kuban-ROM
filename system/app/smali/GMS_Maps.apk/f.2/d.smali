.class Lf/d;
.super Lcom/google/android/location/internal/b;


# instance fields
.field final synthetic a:Lf/c;


# direct methods
.method constructor <init>(Lf/c;)V
    .registers 2

    iput-object p1, p0, Lf/d;->a:Lf/c;

    invoke-direct {p0}, Lcom/google/android/location/internal/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lf/d;->a:Lf/c;

    invoke-static {v0}, Lf/c;->a(Lf/c;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->a()V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lf/d;->a:Lf/c;

    invoke-static {v0}, Lf/c;->a(Lf/c;)Lf/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lf/a;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lf/d;->a:Lf/c;

    invoke-static {v0}, Lf/c;->a(Lf/c;)Lf/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/a;->a(Landroid/location/Location;)V

    return-void
.end method

.method public b()V
    .registers 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Lf/d;->a:Lf/c;

    invoke-static {v0}, Lf/c;->a(Lf/c;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->b()V

    return-void
.end method
