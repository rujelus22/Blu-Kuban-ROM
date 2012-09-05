.class final Lcom/sdgtl/mediahub/spr/common/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic a:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/p;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/p;->a:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/p;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void
.end method
