.class Lcom/google/googlenav/ui/view/android/bT;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bN;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/bN;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bT;->b:Lcom/google/googlenav/ui/view/android/bN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bT;->b:Lcom/google/googlenav/ui/view/android/bN;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bN;->F:Lcom/google/googlenav/ui/p;

    const/4 v1, 0x5

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bT;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_13
    return-void
.end method
