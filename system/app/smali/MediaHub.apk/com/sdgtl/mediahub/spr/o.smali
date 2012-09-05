.class final Lcom/sdgtl/mediahub/spr/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$OnSelectionChangeListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/o;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSelectionChange(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;I)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/o;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, p2}, Lcom/sdgtl/mediahub/spr/Main;->c(Lcom/sdgtl/mediahub/spr/Main;I)V

    return-void
.end method
