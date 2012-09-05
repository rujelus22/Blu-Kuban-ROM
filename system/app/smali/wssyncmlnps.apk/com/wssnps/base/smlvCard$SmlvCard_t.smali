.class public Lcom/wssnps/base/smlvCard$SmlvCard_t;
.super Ljava/lang/Object;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
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
            "Lcom/wssnps/base/smlvCard$SmlvCardAddress_t;",
            ">;"
        }
    .end annotation
.end field

.field public ANNIVERSARY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SMLDate_t;",
            ">;"
        }
    .end annotation
.end field

.field public BDAY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SMLDate_t;",
            ">;"
        }
    .end annotation
.end field

.field public Contact_Account:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

.field public EMAILList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public EVENT_CUSTOM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SMLDate_t;",
            ">;"
        }
    .end annotation
.end field

.field public EVENT_ETC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SMLDate_t;",
            ">;"
        }
    .end annotation
.end field

.field public FN:Ljava/lang/String;

.field public Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

.field public GroupIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public MSNList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

.field public NICKNAME:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public NOTEList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public ORGList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardOrganization_t;",
            ">;"
        }
    .end annotation
.end field

.field public RELATIONList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public ROLE:Ljava/lang/String;

.field public SipAddress:Ljava/lang/String;

.field public TELList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
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
            "Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;",
            ">;"
        }
    .end annotation
.end field

.field public VERSION:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

.field public X_ACCOUNT:Lcom/wssnps/base/smlvCard$SmlvCardXaccount_t;

.field public dirty:I

.field public luid:I

.field public photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

.field public speedDialList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NICKNAME:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->BDAY:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ANNIVERSARY:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_ETC:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EVENT_CUSTOM:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->RELATIONList:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->GroupIDList:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->photo:Lcom/wssnps/base/smlvCard$SmlvCardBinary_t;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->speedDialList:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->MSNList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    invoke-direct {v0}, Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->Group:Lcom/wssnps/base/smlvCard$SmlvCardGroup_t;

    .line 135
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->SipAddress:Ljava/lang/String;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/wssnps/base/smlvCard$SmlvCard_t;->dirty:I

    .line 104
    return-void
.end method
