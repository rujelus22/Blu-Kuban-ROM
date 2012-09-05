.class final Lcom/sdgtl/mediahub/spr/screen/hz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadResumeClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemDownloadResumeClick(Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, p1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/ij;->d:Lcom/sdgtl/mediahub/spr/screen/ij;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/screen/ij;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_5c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Lcom/sdgtl/mediahub/spr/common/di;)V

    goto :goto_2a

    :cond_68
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_2a

    :cond_89
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/hz;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_2a
.end method
