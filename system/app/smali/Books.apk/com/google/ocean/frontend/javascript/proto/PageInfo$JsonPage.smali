.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonPage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;,
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;,
        Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;


# instance fields
.field private ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

.field private clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

.field private clipHighlights_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;",
            ">;"
        }
    .end annotation
.end field

.field private content_:Ljava/lang/String;

.field private flags_:I

.field private h_:I

.field private hasCcBox:Z

.field private hasClipHighlight:Z

.field private hasContent:Z

.field private hasFlags:Z

.field private hasH:Z

.field private hasImageSolution:Z

.field private hasOrder:Z

.field private hasPid:Z

.field private hasSig:Z

.field private hasSnippetSrc:Z

.field private hasSrc:Z

.field private hasStructure:Z

.field private hasTextSegment:Z

.field private hasTitle:Z

.field private hasUf:Z

.field private hasVq:Z

.field private hasW:Z

.field private highlights_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;",
            ">;"
        }
    .end annotation
.end field

.field private imageSolution_:Ljava/lang/String;

.field private links_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSerializedSize:I

.field private order_:I

.field private pid_:Ljava/lang/String;

.field private sig_:Ljava/lang/String;

.field private snippetSrc_:Ljava/lang/String;

.field private src_:Ljava/lang/String;

.field private structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

.field private textSegment_:I

.field private title_:Ljava/lang/String;

.field private uf_:Ljava/lang/String;

.field private vq_:Ljava/lang/String;

.field private w_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4663
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;-><init>(Z)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    .line 4664
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo;->internalForceInit()V

    .line 4665
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->initFields()V

    .line 4666
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->pid_:Ljava/lang/String;

    .line 3443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->src_:Ljava/lang/String;

    .line 3450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->imageSolution_:Ljava/lang/String;

    .line 3457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->snippetSrc_:Ljava/lang/String;

    .line 3464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->sig_:Ljava/lang/String;

    .line 3471
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->order_:I

    .line 3478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->title_:Ljava/lang/String;

    .line 3485
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->flags_:I

    .line 3491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;

    .line 3504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->vq_:Ljava/lang/String;

    .line 3511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->content_:Ljava/lang/String;

    .line 3517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;

    .line 3536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->uf_:Ljava/lang/String;

    .line 3563
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->h_:I

    .line 3570
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->w_:I

    .line 3584
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->textSegment_:I

    .line 3681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->memoizedSerializedSize:I

    .line 3019
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->initFields()V

    .line 3020
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    invoke-direct {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 4
    .parameter "noInit"

    .prologue
    const/4 v1, 0x0

    .line 3021
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3436
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->pid_:Ljava/lang/String;

    .line 3443
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->src_:Ljava/lang/String;

    .line 3450
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->imageSolution_:Ljava/lang/String;

    .line 3457
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->snippetSrc_:Ljava/lang/String;

    .line 3464
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->sig_:Ljava/lang/String;

    .line 3471
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->order_:I

    .line 3478
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->title_:Ljava/lang/String;

    .line 3485
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->flags_:I

    .line 3491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;

    .line 3504
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->vq_:Ljava/lang/String;

    .line 3511
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->content_:Ljava/lang/String;

    .line 3517
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;

    .line 3536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;

    .line 3556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->uf_:Ljava/lang/String;

    .line 3563
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->h_:I

    .line 3570
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->w_:I

    .line 3584
    iput v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->textSegment_:I

    .line 3681
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->memoizedSerializedSize:I

    .line 3021
    return-void
.end method

.method static synthetic access$10002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle:Z

    return p1
.end method

.method static synthetic access$10102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->title_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->flags_:I

    return p1
.end method

.method static synthetic access$10402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq:Z

    return p1
.end method

.method static synthetic access$10502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->vq_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent:Z

    return p1
.end method

.method static synthetic access$10702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->content_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$10802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight:Z

    return p1
.end method

.method static synthetic access$10900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method static synthetic access$10902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object p1
.end method

.method static synthetic access$11002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    return-object v0
.end method

.method static synthetic access$11102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    return-object p1
.end method

.method static synthetic access$11202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf:Z

    return p1
.end method

.method static synthetic access$11302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->uf_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$11402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH:Z

    return p1
.end method

.method static synthetic access$11502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->h_:I

    return p1
.end method

.method static synthetic access$11602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW:Z

    return p1
.end method

.method static synthetic access$11702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->w_:I

    return p1
.end method

.method static synthetic access$11802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox:Z

    return p1
.end method

.method static synthetic access$11900(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method static synthetic access$11902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment:Z

    return p1
.end method

.method static synthetic access$12102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->textSegment_:I

    return p1
.end method

.method static synthetic access$8500(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8600(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$8702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$8802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid:Z

    return p1
.end method

.method static synthetic access$8902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->pid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc:Z

    return p1
.end method

.method static synthetic access$9102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->src_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution:Z

    return p1
.end method

.method static synthetic access$9302(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->imageSolution_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9402(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc:Z

    return p1
.end method

.method static synthetic access$9502(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->snippetSrc_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9602(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig:Z

    return p1
.end method

.method static synthetic access$9702(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-object p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->sig_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9802(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput-boolean p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder:Z

    return p1
.end method

.method static synthetic access$9902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3015
    iput p1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->order_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
    .registers 1

    .prologue
    .line 3025
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->defaultInstance:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3589
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3590
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    .line 3591
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3592
    return-void
.end method

.method public static newBuilder()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    .registers 1

    .prologue
    .line 3838
    #calls: Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;->access$8300()Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 3579
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->ccBox_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method public getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    .registers 2

    .prologue
    .line 3532
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlight_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    return-object v0
.end method

.method public getClipHighlightsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->clipHighlights_:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3513
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->content_:Ljava/lang/String;

    return-object v0
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 3487
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->flags_:I

    return v0
.end method

.method public getH()I
    .registers 2

    .prologue
    .line 3565
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->h_:I

    return v0
.end method

.method public getHighlightsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3494
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->highlights_:Ljava/util/List;

    return-object v0
.end method

.method public getImageSolution()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3452
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->imageSolution_:Ljava/lang/String;

    return-object v0
.end method

.method public getLinksList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->links_:Ljava/util/List;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 3473
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->order_:I

    return v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->pid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 3683
    iget v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->memoizedSerializedSize:I

    .line 3684
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 3768
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 3686
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 3687
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3688
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3691
    :cond_18
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3692
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3695
    :cond_28
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getHighlightsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3696
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    const/4 v4, 0x3

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_30

    .line 3699
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_43
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getLinksList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3700
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    const/4 v4, 0x4

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_4b

    .line 3703
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    :cond_5e
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 3704
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3707
    :cond_6e
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 3708
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getFlags()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3711
    :cond_7f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 3712
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSig()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3715
    :cond_90
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 3716
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getOrder()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3719
    :cond_a1
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 3720
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3723
    :cond_b2
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 3724
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3727
    :cond_c3
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v4

    if-eqz v4, :cond_d4

    .line 3728
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3731
    :cond_d4
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf()Z

    move-result v4

    if-eqz v4, :cond_e5

    .line 3732
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getUf()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3735
    :cond_e5
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 3736
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getH()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3739
    :cond_f6
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 3740
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getW()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3743
    :cond_107
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq()Z

    move-result v4

    if-eqz v4, :cond_118

    .line 3744
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getVq()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3747
    :cond_118
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlightsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_120
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_134

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3748
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    const/16 v4, 0x14

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_120

    .line 3751
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_134
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc()Z

    move-result v4

    if-eqz v4, :cond_145

    .line 3752
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSnippetSrc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3755
    :cond_145
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v4

    if-eqz v4, :cond_156

    .line 3756
    const/16 v4, 0x16

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3759
    :cond_156
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 3760
    const/16 v4, 0x17

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTextSegment()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 3763
    :cond_167
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution()Z

    move-result v4

    if-eqz v4, :cond_178

    .line 3764
    const/16 v4, 0x19

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getImageSolution()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3767
    :cond_178
    iput v2, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->memoizedSerializedSize:I

    move v3, v2

    .line 3768
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_6
.end method

.method public getSig()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3466
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->sig_:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippetSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3459
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->snippetSrc_:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3445
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->src_:Ljava/lang/String;

    return-object v0
.end method

.method public getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;
    .registers 2

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->structure_:Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    return-object v0
.end method

.method public getTextSegment()I
    .registers 2

    .prologue
    .line 3586
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->textSegment_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3480
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUf()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3558
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->uf_:Ljava/lang/String;

    return-object v0
.end method

.method public getVq()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3506
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->vq_:Ljava/lang/String;

    return-object v0
.end method

.method public getW()I
    .registers 2

    .prologue
    .line 3572
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->w_:I

    return v0
.end method

.method public hasCcBox()Z
    .registers 2

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox:Z

    return v0
.end method

.method public hasClipHighlight()Z
    .registers 2

    .prologue
    .line 3531
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight:Z

    return v0
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 3512
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent:Z

    return v0
.end method

.method public hasFlags()Z
    .registers 2

    .prologue
    .line 3486
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags:Z

    return v0
.end method

.method public hasH()Z
    .registers 2

    .prologue
    .line 3564
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH:Z

    return v0
.end method

.method public hasImageSolution()Z
    .registers 2

    .prologue
    .line 3451
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution:Z

    return v0
.end method

.method public hasOrder()Z
    .registers 2

    .prologue
    .line 3472
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder:Z

    return v0
.end method

.method public hasPid()Z
    .registers 2

    .prologue
    .line 3437
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid:Z

    return v0
.end method

.method public hasSig()Z
    .registers 2

    .prologue
    .line 3465
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig:Z

    return v0
.end method

.method public hasSnippetSrc()Z
    .registers 2

    .prologue
    .line 3458
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc:Z

    return v0
.end method

.method public hasSrc()Z
    .registers 2

    .prologue
    .line 3444
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc:Z

    return v0
.end method

.method public hasStructure()Z
    .registers 2

    .prologue
    .line 3550
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure:Z

    return v0
.end method

.method public hasTextSegment()Z
    .registers 2

    .prologue
    .line 3585
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 3479
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle:Z

    return v0
.end method

.method public hasUf()Z
    .registers 2

    .prologue
    .line 3557
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf:Z

    return v0
.end method

.method public hasVq()Z
    .registers 2

    .prologue
    .line 3505
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq:Z

    return v0
.end method

.method public hasW()Z
    .registers 2

    .prologue
    .line 3571
    iget-boolean v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW:Z

    return v0
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3594
    iget-boolean v3, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid:Z

    if-nez v3, :cond_6

    .line 3613
    :cond_5
    :goto_5
    return v2

    .line 3595
    :cond_6
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getHighlightsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3596
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_5

    .line 3598
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_21
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getLinksList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3599
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_5

    .line 3601
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 3602
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3604
    :cond_4c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlightsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_54
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3605
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    invoke-virtual {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_5

    .line 3607
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_67
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v3

    if-eqz v3, :cond_77

    .line 3608
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3610
    :cond_77
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 3611
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3613
    :cond_87
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3618
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSerializedSize()I

    .line 3619
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasPid()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3620
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3622
    :cond_11
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSrc()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 3623
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3625
    :cond_1f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getHighlightsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3626
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_27

    .line 3628
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_38
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getLinksList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;

    .line 3629
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    goto :goto_40

    .line 3631
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$Links;
    :cond_51
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 3632
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3634
    :cond_5f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasFlags()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 3635
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getFlags()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3637
    :cond_6e
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSig()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 3638
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3640
    :cond_7d
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasOrder()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 3641
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getOrder()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3643
    :cond_8c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 3644
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3646
    :cond_9b
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasClipHighlight()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 3647
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlight()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3649
    :cond_aa
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasStructure()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 3650
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getStructure()Lcom/google/ocean/frontend/javascript/proto/PageInfo$PageStructure;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3652
    :cond_b9
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasUf()Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 3653
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getUf()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3655
    :cond_c8
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasH()Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 3656
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getH()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3658
    :cond_d7
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasW()Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 3659
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getW()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3661
    :cond_e6
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasVq()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 3662
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getVq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3664
    :cond_f5
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getClipHighlightsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    .line 3665
    .local v0, element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    const/16 v2, 0x14

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    goto :goto_fd

    .line 3667
    .end local v0           #element:Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;
    :cond_10f
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasSnippetSrc()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 3668
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getSnippetSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3670
    :cond_11e
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasCcBox()Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 3671
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getCcBox()Lcom/google/ocean/frontend/javascript/proto/PageInfo$OFEBox;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3673
    :cond_12d
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasTextSegment()Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 3674
    const/16 v2, 0x17

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getTextSegment()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3676
    :cond_13c
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->hasImageSolution()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 3677
    const/16 v2, 0x19

    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;->getImageSolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3679
    :cond_14b
    return-void
.end method
