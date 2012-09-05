.class final Lcom/sdgtl/mediahub/spr/screen/df;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field final synthetic c:Lcom/sdgtl/mediahub/spr/screen/MyInformation;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/df;->c:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/df;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/df;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyInformation;Ljava/lang/String;B)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/df;->c:Lcom/sdgtl/mediahub/spr/screen/MyInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/df;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/screen/df;->b:I

    return-void
.end method
