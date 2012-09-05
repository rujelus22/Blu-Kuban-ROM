.class public Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmlvCard_t"
.end annotation


# instance fields
.field public ADRList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;",
            ">;"
        }
    .end annotation
.end field

.field public ANNI:Ljava/lang/String;

.field public BDAY:Ljava/lang/String;

.field public CLASS:I

.field public EMAILList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public FN:Ljava/lang/String;

.field public GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

.field public IMList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

.field public NICKList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public NOTEList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public ORGList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;",
            ">;"
        }
    .end annotation
.end field

.field public PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

.field public REV:Landroid/text/format/Time;

.field public ROLE:Ljava/lang/String;

.field public TELList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public TITLE:Ljava/lang/String;

.field public URLList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public VERSION:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

.field public luid:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    return-void
.end method
