.class Lcom/google/googlenav/ui/wizard/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/googlenav/ui/wizard/bI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bJ;->d:Lcom/google/googlenav/ui/wizard/bI;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bJ;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/bJ;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/bJ;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 6

    if-eqz p2, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bJ;->d:Lcom/google/googlenav/ui/wizard/bI;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bJ;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bJ;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/google/googlenav/ui/wizard/bI;->a(Lcom/google/googlenav/ui/wizard/bI;Landroid/widget/ImageView;Ljava/lang/String;[B)V

    :cond_b
    return-void
.end method
