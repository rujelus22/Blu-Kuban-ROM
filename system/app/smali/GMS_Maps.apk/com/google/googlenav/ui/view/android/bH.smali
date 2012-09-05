.class Lcom/google/googlenav/ui/view/android/bH;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/google/googlenav/ui/p;

.field final synthetic c:Lcom/google/googlenav/ui/view/android/bE;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/bE;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bH;->c:Lcom/google/googlenav/ui/view/android/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/bE;Lcom/google/googlenav/ui/view/android/bF;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/bH;-><init>(Lcom/google/googlenav/ui/view/android/bE;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bH;->b:Lcom/google/googlenav/ui/p;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bH;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
