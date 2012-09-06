.class Lcom/google/googlenav/ui/android/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/android/aa;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/ab;

.field final synthetic b:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/ab;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/googlenav/ui/android/i;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/googlenav/ui/android/i;->b:Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->k()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/android/i;->a:Lcom/google/googlenav/ui/android/ab;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/ab;->a()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setCompassMargin(II)V

    .line 397
    return-void
.end method
