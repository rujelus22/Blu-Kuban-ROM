.class public final Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Experiments.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;",
        "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private disabledAllUser_:Z

.field private disabledDomain_:Lcom/google/protobuf/LazyStringList;

.field private disabledEmail_:Lcom/google/protobuf/LazyStringList;

.field private disabledId_:Lcom/google/protobuf/LazyStringList;

.field private disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

.field private disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

.field private disabledRegexId_:Lcom/google/protobuf/LazyStringList;

.field private enabledAllUser_:Z

.field private enabledDomain_:Lcom/google/protobuf/LazyStringList;

.field private enabledEmail_:Lcom/google/protobuf/LazyStringList;

.field private enabledId_:Lcom/google/protobuf/LazyStringList;

.field private enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

.field private enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

.field private enabledRegexId_:Lcom/google/protobuf/LazyStringList;

.field private experiment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1022
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 1067
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1123
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1179
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1235
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1291
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1347
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1403
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1459
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1515
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1571
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1627
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1683
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 606
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->maybeForceBuilderInitialization()V

    .line 607
    return-void
.end method

.method static synthetic access$100()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 1

    .prologue
    .line 600
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 1

    .prologue
    .line 612
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDisabledDomainIsMutable()V
    .registers 3

    .prologue
    .line 1517
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_17

    .line 1518
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1519
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1521
    :cond_17
    return-void
.end method

.method private ensureDisabledEmailIsMutable()V
    .registers 3

    .prologue
    .line 1293
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 1294
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1295
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1297
    :cond_17
    return-void
.end method

.method private ensureDisabledIdIsMutable()V
    .registers 3

    .prologue
    .line 1069
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1070
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1071
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1073
    :cond_16
    return-void
.end method

.method private ensureDisabledRegexDomainIsMutable()V
    .registers 3

    .prologue
    .line 1629
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-eq v0, v1, :cond_17

    .line 1630
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1631
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1633
    :cond_17
    return-void
.end method

.method private ensureDisabledRegexEmailIsMutable()V
    .registers 3

    .prologue
    .line 1405
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_17

    .line 1406
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1407
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1409
    :cond_17
    return-void
.end method

.method private ensureDisabledRegexIdIsMutable()V
    .registers 3

    .prologue
    .line 1181
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_17

    .line 1182
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1183
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1185
    :cond_17
    return-void
.end method

.method private ensureEnabledDomainIsMutable()V
    .registers 3

    .prologue
    .line 1573
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 1574
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1575
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1577
    :cond_17
    return-void
.end method

.method private ensureEnabledEmailIsMutable()V
    .registers 3

    .prologue
    .line 1349
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 1350
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1351
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1353
    :cond_17
    return-void
.end method

.method private ensureEnabledIdIsMutable()V
    .registers 3

    .prologue
    .line 1125
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1126
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1127
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1129
    :cond_16
    return-void
.end method

.method private ensureEnabledRegexDomainIsMutable()V
    .registers 3

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_17

    .line 1686
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1687
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1689
    :cond_17
    return-void
.end method

.method private ensureEnabledRegexEmailIsMutable()V
    .registers 3

    .prologue
    .line 1461
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_17

    .line 1462
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1463
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1465
    :cond_17
    return-void
.end method

.method private ensureEnabledRegexIdIsMutable()V
    .registers 3

    .prologue
    .line 1237
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 1238
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1239
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1241
    :cond_17
    return-void
.end method

.method private ensureExperimentIsMutable()V
    .registers 3

    .prologue
    .line 1024
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1025
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 1026
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1028
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 610
    return-void
.end method


# virtual methods
.method public addAllDisabledDomain(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1553
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledDomainIsMutable()V

    .line 1554
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1556
    return-object p0
.end method

.method public addAllDisabledEmail(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1329
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledEmailIsMutable()V

    .line 1330
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1332
    return-object p0
.end method

.method public addAllDisabledId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledIdIsMutable()V

    .line 1106
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1108
    return-object p0
.end method

.method public addAllDisabledRegexDomain(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1665
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexDomainIsMutable()V

    .line 1666
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1668
    return-object p0
.end method

.method public addAllDisabledRegexEmail(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1441
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexEmailIsMutable()V

    .line 1442
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1444
    return-object p0
.end method

.method public addAllDisabledRegexId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexIdIsMutable()V

    .line 1218
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1220
    return-object p0
.end method

.method public addAllEnabledDomain(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1609
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledDomainIsMutable()V

    .line 1610
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1612
    return-object p0
.end method

.method public addAllEnabledEmail(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1385
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledEmailIsMutable()V

    .line 1386
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1388
    return-object p0
.end method

.method public addAllEnabledId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1161
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledIdIsMutable()V

    .line 1162
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1164
    return-object p0
.end method

.method public addAllEnabledRegexDomain(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1721
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexDomainIsMutable()V

    .line 1722
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1724
    return-object p0
.end method

.method public addAllEnabledRegexEmail(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexEmailIsMutable()V

    .line 1498
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1500
    return-object p0
.end method

.method public addAllEnabledRegexId(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexIdIsMutable()V

    .line 1274
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1276
    return-object p0
.end method

.method public addAllExperiment(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;"
        }
    .end annotation

    .prologue
    .line 1054
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureExperimentIsMutable()V

    .line 1055
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1057
    return-object p0
.end method

.method public addDisabledDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1543
    if-nez p1, :cond_8

    .line 1544
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1546
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledDomainIsMutable()V

    .line 1547
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1549
    return-object p0
.end method

.method public addDisabledEmail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1319
    if-nez p1, :cond_8

    .line 1320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1322
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledEmailIsMutable()V

    .line 1323
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1325
    return-object p0
.end method

.method public addDisabledId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1095
    if-nez p1, :cond_8

    .line 1096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1098
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledIdIsMutable()V

    .line 1099
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1101
    return-object p0
.end method

.method public addDisabledRegexDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1655
    if-nez p1, :cond_8

    .line 1656
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1658
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexDomainIsMutable()V

    .line 1659
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1661
    return-object p0
.end method

.method public addDisabledRegexEmail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1431
    if-nez p1, :cond_8

    .line 1432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1434
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexEmailIsMutable()V

    .line 1435
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1437
    return-object p0
.end method

.method public addDisabledRegexId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1207
    if-nez p1, :cond_8

    .line 1208
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1210
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexIdIsMutable()V

    .line 1211
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1213
    return-object p0
.end method

.method public addEnabledDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1599
    if-nez p1, :cond_8

    .line 1600
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1602
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledDomainIsMutable()V

    .line 1603
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1605
    return-object p0
.end method

.method public addEnabledEmail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1375
    if-nez p1, :cond_8

    .line 1376
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1378
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledEmailIsMutable()V

    .line 1379
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1381
    return-object p0
.end method

.method public addEnabledId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1151
    if-nez p1, :cond_8

    .line 1152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1154
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledIdIsMutable()V

    .line 1155
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1157
    return-object p0
.end method

.method public addEnabledRegexDomain(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1711
    if-nez p1, :cond_8

    .line 1712
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1714
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexDomainIsMutable()V

    .line 1715
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1717
    return-object p0
.end method

.method public addEnabledRegexEmail(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1487
    if-nez p1, :cond_8

    .line 1488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1490
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexEmailIsMutable()V

    .line 1491
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1493
    return-object p0
.end method

.method public addEnabledRegexId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1263
    if-nez p1, :cond_8

    .line 1264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1266
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexIdIsMutable()V

    .line 1267
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1269
    return-object p0
.end method

.method public addExperiment(I)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1047
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureExperimentIsMutable()V

    .line 1048
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->build()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    .line 660
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 661
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 663
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 6

    .prologue
    .line 677
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;-><init>(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;Lcom/google/wireless/realtimechat/proto/Experiments$1;)V

    .line 678
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 679
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 680
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 681
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 682
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 684
    :cond_1e
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$302(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Ljava/util/List;)Ljava/util/List;

    .line 685
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_39

    .line 686
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 688
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 690
    :cond_39
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$402(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 691
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_54

    .line 692
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 694
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 696
    :cond_54
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$502(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 697
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_70

    .line 698
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 700
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 702
    :cond_70
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$602(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 703
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_8c

    .line 704
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 706
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 708
    :cond_8c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$702(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 709
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a8

    .line 710
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 712
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 714
    :cond_a8
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$802(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 715
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_c4

    .line 716
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 718
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 720
    :cond_c4
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$902(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 721
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_e0

    .line 722
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 724
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 726
    :cond_e0
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1002(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 727
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_fc

    .line 728
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 730
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x101

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 732
    :cond_fc
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1102(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 733
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_118

    .line 734
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 736
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 738
    :cond_118
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1202(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 739
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_134

    .line 740
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 742
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 744
    :cond_134
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1302(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 745
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_150

    .line 746
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 748
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x801

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 750
    :cond_150
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1402(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 751
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_16c

    .line 752
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 754
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 756
    :cond_16c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1502(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 757
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_179

    .line 758
    or-int/lit8 v2, v2, 0x1

    .line 760
    :cond_179
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1602(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Z)Z

    .line 761
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_186

    .line 762
    or-int/lit8 v2, v2, 0x2

    .line 764
    :cond_186
    iget-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1702(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Z)Z

    .line 765
    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1802(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;I)I

    .line 766
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 616
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 617
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 618
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 619
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 620
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 621
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 622
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 623
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 624
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 625
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 626
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 627
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 628
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 629
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 630
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 631
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 632
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 633
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 634
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 635
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 636
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 637
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 638
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 639
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 640
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 641
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 642
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 643
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    .line 644
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 645
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    .line 646
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 647
    return-object p0
.end method

.method public clearDisabledAllUser()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1753
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    .line 1756
    return-object p0
.end method

.method public clearDisabledDomain()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1559
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1560
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1562
    return-object p0
.end method

.method public clearDisabledEmail()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1335
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1336
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1338
    return-object p0
.end method

.method public clearDisabledId()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1111
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1112
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1114
    return-object p0
.end method

.method public clearDisabledRegexDomain()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1671
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1672
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1674
    return-object p0
.end method

.method public clearDisabledRegexEmail()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1447
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1448
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1450
    return-object p0
.end method

.method public clearDisabledRegexId()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1223
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1224
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1226
    return-object p0
.end method

.method public clearEnabledAllUser()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    .line 1777
    return-object p0
.end method

.method public clearEnabledDomain()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1615
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1616
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1618
    return-object p0
.end method

.method public clearEnabledEmail()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1391
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1392
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1394
    return-object p0
.end method

.method public clearEnabledId()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1167
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 1168
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1170
    return-object p0
.end method

.method public clearEnabledRegexDomain()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1727
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 1728
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1730
    return-object p0
.end method

.method public clearEnabledRegexEmail()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1503
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1504
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1506
    return-object p0
.end method

.method public clearEnabledRegexId()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1279
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 1280
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1282
    return-object p0
.end method

.method public clearExperiment()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 2

    .prologue
    .line 1060
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 1061
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1063
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3

    .prologue
    .line 651
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 2

    .prologue
    .line 655
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledAllUser()Z
    .registers 2

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    return v0
.end method

.method public getDisabledDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1530
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledDomainCount()I
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledEmailCount()I
    .registers 2

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledIdCount()I
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledRegexDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexDomainCount()I
    .registers 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledRegexDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledRegexEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexEmailCount()I
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledRegexEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisabledRegexId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexIdCount()I
    .registers 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisabledRegexIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledAllUser()Z
    .registers 2

    .prologue
    .line 1765
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    return v0
.end method

.method public getEnabledDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledDomainCount()I
    .registers 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledEmailCount()I
    .registers 2

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledIdCount()I
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledRegexDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexDomainCount()I
    .registers 2

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledRegexDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledRegexEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexEmailCount()I
    .registers 2

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledRegexEmailList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledRegexId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexIdCount()I
    .registers 2

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledRegexIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExperiment(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExperimentCount()I
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDisabledAllUser()Z
    .registers 3

    .prologue
    .line 1741
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEnabledAllUser()Z
    .registers 3

    .prologue
    .line 1762
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 600
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 920
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_f8

    .line 925
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    :sswitch_d
    return-object p0

    .line 932
    :sswitch_e
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureExperimentIsMutable()V

    .line 933
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 937
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 938
    .local v0, length:I
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 939
    .local v1, limit:I
    :goto_27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_35

    .line 940
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->addExperiment(I)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    goto :goto_27

    .line 942
    :cond_35
    invoke-virtual {p1, v1}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 946
    .end local v0           #length:I
    .end local v1           #limit:I
    :sswitch_39
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledIdIsMutable()V

    .line 947
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 951
    :sswitch_46
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledIdIsMutable()V

    .line 952
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 956
    :sswitch_53
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexIdIsMutable()V

    .line 957
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 961
    :sswitch_60
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexIdIsMutable()V

    .line 962
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 966
    :sswitch_6d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledEmailIsMutable()V

    .line 967
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 971
    :sswitch_7a
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledEmailIsMutable()V

    .line 972
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 976
    :sswitch_88
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexEmailIsMutable()V

    .line 977
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 981
    :sswitch_96
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexEmailIsMutable()V

    .line 982
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 986
    :sswitch_a4
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledDomainIsMutable()V

    .line 987
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 991
    :sswitch_b2
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledDomainIsMutable()V

    .line 992
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 996
    :sswitch_c0
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexDomainIsMutable()V

    .line 997
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 1001
    :sswitch_ce
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexDomainIsMutable()V

    .line 1002
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 1006
    :sswitch_dc
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1007
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    goto/16 :goto_0

    .line 1011
    :sswitch_ea
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1012
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    goto/16 :goto_0

    .line 920
    :sswitch_data_f8
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0xa -> :sswitch_1f
        0x12 -> :sswitch_39
        0x1a -> :sswitch_46
        0x22 -> :sswitch_53
        0x2a -> :sswitch_60
        0x32 -> :sswitch_6d
        0x3a -> :sswitch_7a
        0x42 -> :sswitch_88
        0x4a -> :sswitch_96
        0x52 -> :sswitch_a4
        0x5a -> :sswitch_b2
        0x62 -> :sswitch_c0
        0x6a -> :sswitch_ce
        0x70 -> :sswitch_dc
        0x78 -> :sswitch_ea
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 770
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 907
    :cond_6
    :goto_6
    return-object p0

    .line 771
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 772
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 773
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    .line 774
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 781
    :cond_25
    :goto_25
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 782
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b7

    .line 783
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 784
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 791
    :cond_43
    :goto_43
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    .line 792
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 793
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 794
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 801
    :cond_61
    :goto_61
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$600(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 802
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 803
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$600(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 804
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 811
    :cond_7f
    :goto_7f
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$700(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 812
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 813
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$700(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 814
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 821
    :cond_9d
    :goto_9d
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$800(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_bb

    .line 822
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 823
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$800(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 824
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 831
    :cond_bb
    :goto_bb
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$900(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d9

    .line 832
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1fd

    .line 833
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$900(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 834
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 841
    :cond_d9
    :goto_d9
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1000(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f7

    .line 842
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 843
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1000(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 844
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 851
    :cond_f7
    :goto_f7
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1100(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_115

    .line 852
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_219

    .line 853
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1100(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 854
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 861
    :cond_115
    :goto_115
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1200(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_133

    .line 862
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_227

    .line 863
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1200(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 864
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 871
    :cond_133
    :goto_133
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_151

    .line 872
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_235

    .line 873
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 874
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 881
    :cond_151
    :goto_151
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16f

    .line 882
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_243

    .line 883
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 884
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 891
    :cond_16f
    :goto_16f
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18d

    .line 892
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_251

    .line 893
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 894
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 901
    :cond_18d
    :goto_18d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->hasDisabledAllUser()Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 902
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledAllUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->setDisabledAllUser(Z)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    .line 904
    :cond_19a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->hasEnabledAllUser()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 905
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledAllUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->setEnabledAllUser(Z)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    goto/16 :goto_6

    .line 776
    :cond_1a9
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureExperimentIsMutable()V

    .line 777
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_25

    .line 786
    :cond_1b7
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledIdIsMutable()V

    .line 787
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_43

    .line 796
    :cond_1c5
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledIdIsMutable()V

    .line 797
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_61

    .line 806
    :cond_1d3
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexIdIsMutable()V

    .line 807
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$600(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7f

    .line 816
    :cond_1e1
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexIdIsMutable()V

    .line 817
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$700(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9d

    .line 826
    :cond_1ef
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledEmailIsMutable()V

    .line 827
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$800(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_bb

    .line 836
    :cond_1fd
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledEmailIsMutable()V

    .line 837
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$900(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_d9

    .line 846
    :cond_20b
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexEmailIsMutable()V

    .line 847
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1000(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_f7

    .line 856
    :cond_219
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexEmailIsMutable()V

    .line 857
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1100(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_115

    .line 866
    :cond_227
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledDomainIsMutable()V

    .line 867
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1200(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_133

    .line 876
    :cond_235
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledDomainIsMutable()V

    .line 877
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_151

    .line 886
    :cond_243
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexDomainIsMutable()V

    .line 887
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_16f

    .line 896
    :cond_251
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexDomainIsMutable()V

    .line 897
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->access$1500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_18d
.end method

.method public setDisabledAllUser(Z)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1747
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1748
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledAllUser_:Z

    .line 1750
    return-object p0
.end method

.method public setDisabledDomain(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1534
    if-nez p2, :cond_8

    .line 1535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1537
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledDomainIsMutable()V

    .line 1538
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1540
    return-object p0
.end method

.method public setDisabledEmail(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1310
    if-nez p2, :cond_8

    .line 1311
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1313
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledEmailIsMutable()V

    .line 1314
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1316
    return-object p0
.end method

.method public setDisabledId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1086
    if-nez p2, :cond_8

    .line 1087
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1089
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledIdIsMutable()V

    .line 1090
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1092
    return-object p0
.end method

.method public setDisabledRegexDomain(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1646
    if-nez p2, :cond_8

    .line 1647
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1649
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexDomainIsMutable()V

    .line 1650
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1652
    return-object p0
.end method

.method public setDisabledRegexEmail(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1422
    if-nez p2, :cond_8

    .line 1423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1425
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexEmailIsMutable()V

    .line 1426
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1428
    return-object p0
.end method

.method public setDisabledRegexId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1198
    if-nez p2, :cond_8

    .line 1199
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1201
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureDisabledRegexIdIsMutable()V

    .line 1202
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1204
    return-object p0
.end method

.method public setEnabledAllUser(Z)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1768
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->bitField0_:I

    .line 1769
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledAllUser_:Z

    .line 1771
    return-object p0
.end method

.method public setEnabledDomain(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1590
    if-nez p2, :cond_8

    .line 1591
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1593
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledDomainIsMutable()V

    .line 1594
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1596
    return-object p0
.end method

.method public setEnabledEmail(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1366
    if-nez p2, :cond_8

    .line 1367
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1369
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledEmailIsMutable()V

    .line 1370
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1372
    return-object p0
.end method

.method public setEnabledId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1142
    if-nez p2, :cond_8

    .line 1143
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1145
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledIdIsMutable()V

    .line 1146
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1148
    return-object p0
.end method

.method public setEnabledRegexDomain(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1702
    if-nez p2, :cond_8

    .line 1703
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1705
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexDomainIsMutable()V

    .line 1706
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1708
    return-object p0
.end method

.method public setEnabledRegexEmail(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1478
    if-nez p2, :cond_8

    .line 1479
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1481
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexEmailIsMutable()V

    .line 1482
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1484
    return-object p0
.end method

.method public setEnabledRegexId(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1254
    if-nez p2, :cond_8

    .line 1255
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1257
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureEnabledRegexIdIsMutable()V

    .line 1258
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1260
    return-object p0
.end method

.method public setExperiment(II)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->ensureExperimentIsMutable()V

    .line 1042
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->experiment_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1044
    return-object p0
.end method
