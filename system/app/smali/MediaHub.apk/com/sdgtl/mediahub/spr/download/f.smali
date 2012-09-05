.class final Lcom/sdgtl/mediahub/spr/download/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/download/e;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/download/e;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/download/f;->a:Lcom/sdgtl/mediahub/spr/download/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->i()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/f;->a:Lcom/sdgtl/mediahub/spr/download/e;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/e;->a(Lcom/sdgtl/mediahub/spr/download/e;)Lcom/sdgtl/mediahub/spr/download/DownloadService;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->c(Lcom/sdgtl/mediahub/spr/download/DownloadService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/f;->a:Lcom/sdgtl/mediahub/spr/download/e;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/e;->a(Lcom/sdgtl/mediahub/spr/download/e;)Lcom/sdgtl/mediahub/spr/download/DownloadService;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->g(Lcom/sdgtl/mediahub/spr/download/DownloadService;)V

    :cond_1f
    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/DownloadService;->a(I)V

    :cond_28
    return-void
.end method
