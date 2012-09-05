.class Lcom/google/googlenav/ui/view/android/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bJ;->a:Lcom/google/googlenav/ui/view/android/bI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bJ;->a:Lcom/google/googlenav/ui/view/android/bI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bI;->x()V

    return-void
.end method
