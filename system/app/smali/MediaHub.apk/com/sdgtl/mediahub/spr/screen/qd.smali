.class final Lcom/sdgtl/mediahub/spr/screen/qd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/qc;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/qc;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qd;->a:Lcom/sdgtl/mediahub/spr/screen/qc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qd;->a:Lcom/sdgtl/mediahub/spr/screen/qc;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/qc;->a(Lcom/sdgtl/mediahub/spr/screen/qc;)Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/qf;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qd;->a:Lcom/sdgtl/mediahub/spr/screen/qc;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/qc;->a(Lcom/sdgtl/mediahub/spr/screen/qc;)Lcom/sdgtl/mediahub/spr/screen/TvStore;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    return-void
.end method
