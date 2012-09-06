.class Lcom/google/android/maps/rideabout/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/NavigationView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/rideabout/view/NavigationView;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/k;->a:Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 102
    const/16 v0, 0x61

    const-string v1, "sm"

    const-string v2, "c"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/k;->a:Lcom/google/android/maps/rideabout/view/NavigationView;

    invoke-static {v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Lcom/google/android/maps/rideabout/view/NavigationView;)Lcom/google/googlenav/ui/g;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 106
    return-void
.end method
