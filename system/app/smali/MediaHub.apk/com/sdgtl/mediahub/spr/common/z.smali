.class final Lcom/sdgtl/mediahub/spr/common/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/z;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/z;->a:Landroid/content/Context;

    const-string v1, "archiving_meassage_again"

    const-string v2, "yes"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/z;->a:Landroid/content/Context;

    const-string v1, "archiving_meassage_again"

    const-string v2, "no"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
