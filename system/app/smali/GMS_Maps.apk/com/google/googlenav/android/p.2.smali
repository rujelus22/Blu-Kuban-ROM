.class Lcom/google/googlenav/android/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/p;->a:Lcom/google/googlenav/android/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/p;->a:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->c(Lcom/google/googlenav/android/l;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    return-void
.end method
