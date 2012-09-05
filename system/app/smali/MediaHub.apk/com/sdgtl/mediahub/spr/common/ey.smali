.class final Lcom/sdgtl/mediahub/spr/common/ey;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/Eula;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/Eula;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ey;->a:Lcom/sdgtl/mediahub/spr/common/Eula;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ey;->a:Lcom/sdgtl/mediahub/spr/common/Eula;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->a(Lcom/sdgtl/mediahub/spr/common/Eula;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ey;->a:Lcom/sdgtl/mediahub/spr/common/Eula;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/Eula;->a(Lcom/sdgtl/mediahub/spr/common/Eula;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_11
    return-void
.end method
