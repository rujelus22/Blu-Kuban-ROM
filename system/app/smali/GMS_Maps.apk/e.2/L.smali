.class LE/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/rideabout/view/j;

.field final synthetic b:LE/k;


# direct methods
.method constructor <init>(LE/k;Lcom/google/android/maps/rideabout/view/j;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, LE/l;->b:LE/k;

    iput-object p2, p0, LE/l;->a:Lcom/google/android/maps/rideabout/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, LE/l;->a:Lcom/google/android/maps/rideabout/view/j;

    iget-object v1, p0, LE/l;->b:LE/k;

    iget-object v1, v1, LE/k;->d:LE/g;

    invoke-virtual {v1}, LE/g;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->b(I)V

    .line 112
    return-void
.end method
