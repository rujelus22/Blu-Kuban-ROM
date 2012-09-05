.class final Lcom/sdgtl/mediahub/spr/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/l;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/l;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/l;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/l;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->dismissDialog(I)V

    goto :goto_19
.end method
