.class Ly/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ly/s;


# direct methods
.method constructor <init>(Ly/s;)V
    .registers 2

    iput-object p1, p0, Ly/v;->a:Ly/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Ly/v;->a:Ly/s;

    iget-object v1, p0, Ly/v;->a:Ly/s;

    iget-object v1, v1, Ly/s;->d:Lcom/google/android/maps/driveabout/app/cU;

    invoke-static {v0, v1}, Ly/s;->a(Ly/s;Lcom/google/android/maps/driveabout/app/cU;)V

    return-void
.end method
