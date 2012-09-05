.class final Lcom/sdgtl/mediahub/spr/screen/bp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/bp;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/bp;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bp;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bp;->b:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->t:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bp;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/fk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6
.end method
