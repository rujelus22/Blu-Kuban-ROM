.class final Lcom/sdgtl/mediahub/spr/screen/hb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/gs;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/gs;I)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/hb;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/screen/hb;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/hb;->a:Lcom/sdgtl/mediahub/spr/screen/gs;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/gs;->a(Lcom/sdgtl/mediahub/spr/screen/gs;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/sdgtl/mediahub/spr/screen/hb;->b:I

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(I)V

    return-void
.end method
