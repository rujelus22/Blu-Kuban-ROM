.class Lbd/U;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/google/googlenav/ui/p;

.field private final b:I


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/p;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbd/U;->a:Lcom/google/googlenav/ui/p;

    iput p2, p0, Lbd/U;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/p;ILbd/T;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lbd/U;-><init>(Lcom/google/googlenav/ui/p;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lbd/U;->a:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x76d

    iget v2, p0, Lbd/U;->b:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
