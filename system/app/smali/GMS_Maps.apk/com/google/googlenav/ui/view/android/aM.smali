.class Lcom/google/googlenav/ui/view/android/aM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/DistanceView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aM;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aM;->a:Lcom/google/googlenav/ui/view/android/DistanceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    return-void
.end method