.class final Lcom/sdgtl/mediahub/spr/screen/in;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPage;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x4

    :goto_12
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->d(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/it;

    iput-boolean v3, v0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->e(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/screen/iu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/iu;->notifyDataSetChanged()V

    :cond_29
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPage;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/in;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    const v2, 0x7f0a01a5

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_3f
    const/4 v0, 0x3

    goto :goto_12
.end method
