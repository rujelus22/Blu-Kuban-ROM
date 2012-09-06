.class Lcom/google/googlenav/ui/android/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/T;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/c;

.field final synthetic b:Lcom/google/googlenav/ui/view/d;

.field final synthetic c:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/view/d;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/google/googlenav/ui/android/k;->c:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/k;->a:Lcom/google/googlenav/ui/view/c;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/k;->b:Lcom/google/googlenav/ui/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 4
    .parameter

    .prologue
    .line 695
    if-eqz p1, :cond_9

    .line 696
    iget-object v0, p0, Lcom/google/googlenav/ui/android/k;->a:Lcom/google/googlenav/ui/view/c;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/k;->b:Lcom/google/googlenav/ui/view/d;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/c;->a(Lcom/google/googlenav/ui/view/J;)Z

    .line 698
    :cond_9
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/d;)V
    .registers 2
    .parameter

    .prologue
    .line 702
    return-void
.end method
