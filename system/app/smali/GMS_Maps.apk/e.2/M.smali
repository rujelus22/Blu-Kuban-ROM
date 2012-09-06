.class LE/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaP/a;

.field final synthetic b:LE/k;


# direct methods
.method constructor <init>(LE/k;LaP/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, LE/m;->b:LE/k;

    iput-object p2, p0, LE/m;->a:LaP/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, LE/m;->b:LE/k;

    invoke-virtual {v0}, LE/k;->k()Lcom/google/android/maps/rideabout/view/j;

    move-result-object v0

    iget-object v1, p0, LE/m;->a:LaP/a;

    invoke-interface {v0, v1}, Lcom/google/android/maps/rideabout/view/j;->a(LaP/a;)V

    .line 158
    return-void
.end method
