.class abstract Lcom/sdgtl/mediahub/spr/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field final synthetic b:Lcom/sdgtl/mediahub/spr/Main;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ap;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdgtl/mediahub/spr/Main;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/ap;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const v1, 0x7f030017

    iget v0, p0, Lcom/sdgtl/mediahub/spr/ap;->c:I

    if-eq v1, v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/ap;->a:Landroid/view/View;

    :cond_a
    iput v1, p0, Lcom/sdgtl/mediahub/spr/ap;->c:I

    return-void
.end method

.method protected final b()Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ap;->a:Landroid/view/View;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ap;->b:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/sdgtl/mediahub/spr/ap;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/ap;->a:Landroid/view/View;

    :cond_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ap;->a:Landroid/view/View;

    return-object v0
.end method
