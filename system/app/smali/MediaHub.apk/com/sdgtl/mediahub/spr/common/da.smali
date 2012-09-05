.class public final Lcom/sdgtl/mediahub/spr/common/da;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/sdgtl/mediahub/spr/common/ct;

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    iput p2, p0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/common/ct;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/da;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/da;->b:Lcom/sdgtl/mediahub/spr/common/ct;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/common/da;->c:I

    return-void
.end method
