.class final Lcom/sdgtl/mediahub/spr/download/r;
.super Ljava/lang/Exception;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/r;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/download/r;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/download/r;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/download/r;->a:Ljava/lang/String;

    return-object v0
.end method
