.class Lcom/google/googlenav/ui/android/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bB;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/j;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/android/j;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/actionbar/a;->h()I

    move-result v2

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/bw;->ag()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a(II)V

    return-void
.end method
