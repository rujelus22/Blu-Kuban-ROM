.class public final Lcom/sdgtl/mediahub/spr/common/dr;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/sdgtl/mediahub/spr/common/cr;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/common/dr;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/cr;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput p4, p0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    return-void
.end method
