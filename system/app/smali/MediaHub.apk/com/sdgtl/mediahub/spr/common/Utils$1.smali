.class Lcom/sdgtl/mediahub/spr/common/Utils$1;
.super Landroid/text/style/URLSpan;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 6

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->b:Ljava/lang/String;

    iput p4, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->c:I

    iput-object p5, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->d:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    invoke-virtual {p0}, Lcom/sdgtl/mediahub/spr/common/Utils$1;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    iget v2, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "search_by"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/Utils$1;->d:Landroid/content/Context;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    return-void
.end method
