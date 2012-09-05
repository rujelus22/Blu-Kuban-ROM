.class final Lcom/sdgtl/mediahub/spr/screen/ew;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/fi;->b:Lcom/sdgtl/mediahub/spr/screen/fi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Lcom/sdgtl/mediahub/spr/screen/fi;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_21
    return-void

    :cond_22
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->f(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x23

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto :goto_21

    :cond_48
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ew;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->i(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_21
.end method
