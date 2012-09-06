.class public final Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private accountBalance_:I

.field private activeInUse_:Z

.field private alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

.field private alternateDid_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private displayableAccountBalance_:Ljava/lang/Object;

.field private displayableMaxBalance_:Ljava/lang/Object;

.field private displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

.field private label_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation
.end field

.field private maxBalance_:I

.field private paidCredit_:I

.field private primaryDidFormatted_:Ljava/lang/Object;

.field private primaryDid_:Ljava/lang/Object;

.field private status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

.field private type_:I

.field private validAmount_:Ljava/util/List;
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
    .line 2957
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 3229
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3293
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3346
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3399
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 3464
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 3529
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 3681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 3726
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3853
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2958
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maybeForceBuilderInitialization()V

    .line 2959
    return-void
.end method

.method static synthetic access$2700()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 1

    .prologue
    .line 2952
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 1

    .prologue
    .line 2964
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAlternateDidFormattedIsMutable()V
    .registers 3

    .prologue
    .line 3466
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_17

    .line 3467
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 3468
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3470
    :cond_17
    return-void
.end method

.method private ensureAlternateDidIsMutable()V
    .registers 3

    .prologue
    .line 3401
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_17

    .line 3402
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 3403
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3405
    :cond_17
    return-void
.end method

.method private ensureDisplayableValidAmountIsMutable()V
    .registers 3

    .prologue
    .line 3855
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_17

    .line 3856
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 3857
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3859
    :cond_17
    return-void
.end method

.method private ensureLabelIsMutable()V
    .registers 3

    .prologue
    .line 3532
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_17

    .line 3533
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 3534
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3536
    :cond_17
    return-void
.end method

.method private ensureValidAmountIsMutable()V
    .registers 3

    .prologue
    .line 3683
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_17

    .line 3684
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 3685
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3687
    :cond_17
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2962
    return-void
.end method


# virtual methods
.method public addAllAlternateDid(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3441
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidIsMutable()V

    .line 3442
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3444
    return-object p0
.end method

.method public addAllAlternateDidFormatted(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3506
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidFormattedIsMutable()V

    .line 3507
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3509
    return-object p0
.end method

.method public addAllDisplayableValidAmount(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3895
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureDisplayableValidAmountIsMutable()V

    .line 3896
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3898
    return-object p0
.end method

.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3599
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3600
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3602
    return-object p0
.end method

.method public addAllValidAmount(Ljava/lang/Iterable;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 3713
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureValidAmountIsMutable()V

    .line 3714
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3716
    return-object p0
.end method

.method public addAlternateDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3431
    if-nez p1, :cond_8

    .line 3432
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3434
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidIsMutable()V

    .line 3435
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3437
    return-object p0
.end method

.method public addAlternateDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3454
    if-nez p1, :cond_8

    .line 3455
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3457
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidIsMutable()V

    .line 3458
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3460
    return-object p0
.end method

.method public addAlternateDidFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3496
    if-nez p1, :cond_8

    .line 3497
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3499
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidFormattedIsMutable()V

    .line 3500
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3502
    return-object p0
.end method

.method public addAlternateDidFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3519
    if-nez p1, :cond_8

    .line 3520
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3522
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidFormattedIsMutable()V

    .line 3523
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3525
    return-object p0
.end method

.method public addDisplayableValidAmount(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3885
    if-nez p1, :cond_8

    .line 3886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3888
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureDisplayableValidAmountIsMutable()V

    .line 3889
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3891
    return-object p0
.end method

.method public addDisplayableValidAmountBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3908
    if-nez p1, :cond_8

    .line 3909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3911
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureDisplayableValidAmountIsMutable()V

    .line 3912
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3914
    return-object p0
.end method

.method public addLabel(ILcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3592
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3593
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3595
    return-object p0
.end method

.method public addLabel(ILcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3575
    if-nez p2, :cond_8

    .line 3576
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3578
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3579
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3581
    return-object p0
.end method

.method public addLabel(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 3585
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3586
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3588
    return-object p0
.end method

.method public addLabel(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3565
    if-nez p1, :cond_8

    .line 3566
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3568
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3569
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3571
    return-object p0
.end method

.method public addValidAmount(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3706
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureValidAmountIsMutable()V

    .line 3707
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3709
    return-object p0
.end method

.method public build()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 3

    .prologue
    .line 3011
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    .line 3012
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 3013
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 3015
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 6

    .prologue
    .line 3019
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 3020
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3021
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 3022
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 3023
    or-int/lit8 v2, v2, 0x1

    .line 3025
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$2902(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3026
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 3027
    or-int/lit8 v2, v2, 0x2

    .line 3029
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->type_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->type_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3002(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I

    .line 3030
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 3031
    or-int/lit8 v2, v2, 0x4

    .line 3033
    :cond_28
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3034
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 3035
    or-int/lit8 v2, v2, 0x8

    .line 3037
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3038
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_51

    .line 3039
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 3041
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3043
    :cond_51
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3302(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3044
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_6d

    .line 3045
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 3047
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x21

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3049
    :cond_6d
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3402(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3050
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_88

    .line 3051
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 3052
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x41

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3054
    :cond_88
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3502(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 3055
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_95

    .line 3056
    or-int/lit8 v2, v2, 0x10

    .line 3058
    :cond_95
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->accountBalance_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->accountBalance_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3602(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I

    .line 3059
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a2

    .line 3060
    or-int/lit8 v2, v2, 0x20

    .line 3062
    :cond_a2
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->paidCredit_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->paidCredit_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3702(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I

    .line 3063
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_af

    .line 3064
    or-int/lit8 v2, v2, 0x40

    .line 3066
    :cond_af
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maxBalance_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->maxBalance_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3802(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I

    .line 3067
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_ca

    .line 3068
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 3069
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3071
    :cond_ca
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3902(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/util/List;)Ljava/util/List;

    .line 3072
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d7

    .line 3073
    or-int/lit16 v2, v2, 0x80

    .line 3075
    :cond_d7
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4002(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3076
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e4

    .line 3077
    or-int/lit16 v2, v2, 0x100

    .line 3079
    :cond_e4
    iget-boolean v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->activeInUse_:Z

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->activeInUse_:Z
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4102(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Z)Z

    .line 3080
    and-int/lit16 v3, v0, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_f1

    .line 3081
    or-int/lit16 v2, v2, 0x200

    .line 3083
    :cond_f1
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4202(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_10d

    .line 3085
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 3087
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x4001

    iput v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3089
    :cond_10d
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4302(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 3090
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4402(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;I)I

    .line 3091
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2968
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2969
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 2970
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2971
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->type_:I

    .line 2972
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2973
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 2974
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2975
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 2976
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2977
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 2978
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2979
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 2980
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2981
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 2982
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2983
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->accountBalance_:I

    .line 2984
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2985
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->paidCredit_:I

    .line 2986
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2987
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maxBalance_:I

    .line 2988
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2989
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 2990
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2991
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 2992
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2993
    iput-boolean v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->activeInUse_:Z

    .line 2994
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2995
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 2996
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2997
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 2998
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 2999
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAccountBalance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3632
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3633
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->accountBalance_:I

    .line 3635
    return-object p0
.end method

.method public clearActiveInUse()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3793
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3794
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->activeInUse_:Z

    .line 3796
    return-object p0
.end method

.method public clearAlternateDid()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3447
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 3448
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3450
    return-object p0
.end method

.method public clearAlternateDidFormatted()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3512
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 3513
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3515
    return-object p0
.end method

.method public clearDisplayableAccountBalance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3762
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3763
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableAccountBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3765
    return-object p0
.end method

.method public clearDisplayableMaxBalance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3836
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3837
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDisplayableMaxBalance()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3839
    return-object p0
.end method

.method public clearDisplayableValidAmount()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3901
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 3902
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3904
    return-object p0
.end method

.method public clearLabel()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3605
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 3606
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3608
    return-object p0
.end method

.method public clearMaxBalance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3674
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3675
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maxBalance_:I

    .line 3677
    return-object p0
.end method

.method public clearPaidCredit()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3653
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3654
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->paidCredit_:I

    .line 3656
    return-object p0
.end method

.method public clearPrimaryDid()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3329
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3330
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3332
    return-object p0
.end method

.method public clearPrimaryDidFormatted()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3382
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3383
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPrimaryDidFormatted()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3385
    return-object p0
.end method

.method public clearStatus()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3265
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3267
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3268
    return-object p0
.end method

.method public clearType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3286
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3287
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->type_:I

    .line 3289
    return-object p0
.end method

.method public clearValidAmount()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 2

    .prologue
    .line 3719
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 3720
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3722
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3

    .prologue
    .line 3003
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

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
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAccountBalance()I
    .registers 2

    .prologue
    .line 3623
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->accountBalance_:I

    return v0
.end method

.method public getActiveInUse()Z
    .registers 2

    .prologue
    .line 3784
    iget-boolean v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->activeInUse_:Z

    return v0
.end method

.method public getAlternateDid(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateDidBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDidCount()I
    .registers 2

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateDidFormatted(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateDidFormattedBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDidFormattedCount()I
    .registers 2

    .prologue
    .line 3476
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAlternateDidFormattedList()Ljava/util/List;
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
    .line 3473
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateDidList()Ljava/util/List;
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
    .line 3408
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    .registers 2

    .prologue
    .line 3007
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2952
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableAccountBalance()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3731
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3732
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3733
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3734
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3737
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getDisplayableAccountBalanceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3742
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3743
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3744
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3746
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3749
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDisplayableMaxBalance()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3805
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3806
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3807
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3808
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3811
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getDisplayableMaxBalanceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3816
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3817
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3818
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3820
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3823
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getDisplayableValidAmount(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayableValidAmountBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3
    .parameter "index"

    .prologue
    .line 3872
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayableValidAmountCount()I
    .registers 2

    .prologue
    .line 3865
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getDisplayableValidAmountList()Ljava/util/List;
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
    .line 3862
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3
    .parameter "index"

    .prologue
    .line 3545
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    return-object v0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 3542
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3539
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxBalance()I
    .registers 2

    .prologue
    .line 3665
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maxBalance_:I

    return v0
.end method

.method public getPaidCredit()I
    .registers 2

    .prologue
    .line 3644
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->paidCredit_:I

    return v0
.end method

.method public getPrimaryDid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3298
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3299
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3300
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3301
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3304
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPrimaryDidBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3309
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3310
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3311
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3313
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3316
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getPrimaryDidFormatted()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3352
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3353
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3354
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3357
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPrimaryDidFormattedBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3362
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3363
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3364
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3366
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3369
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
    .registers 2

    .prologue
    .line 3234
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 3277
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->type_:I

    return v0
.end method

.method public getValidAmount(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValidAmountCount()I
    .registers 2

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValidAmountList()Ljava/util/List;
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
    .line 3690
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountBalance()Z
    .registers 3

    .prologue
    .line 3620
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasActiveInUse()Z
    .registers 3

    .prologue
    .line 3781
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDisplayableAccountBalance()Z
    .registers 3

    .prologue
    .line 3728
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasDisplayableMaxBalance()Z
    .registers 3

    .prologue
    .line 3802
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

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

.method public hasMaxBalance()Z
    .registers 3

    .prologue
    .line 3662
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPaidCredit()Z
    .registers 3

    .prologue
    .line 3641
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPrimaryDid()Z
    .registers 3

    .prologue
    .line 3295
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPrimaryDidFormatted()Z
    .registers 3

    .prologue
    .line 3348
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3231
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasType()Z
    .registers 3

    .prologue
    .line 3274
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3188
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->hasStatus()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3206
    :cond_7
    :goto_7
    return v1

    .line 3192
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->hasType()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3196
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3200
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->getLabelCount()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 3201
    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->getLabel(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3200
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 3206
    :cond_2c
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 3095
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 3184
    :cond_6
    :goto_6
    return-object p0

    .line 3096
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3097
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3099
    :cond_14
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasType()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3100
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3102
    :cond_21
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasPrimaryDid()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3103
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3104
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDid_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3100(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3107
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasPrimaryDidFormatted()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 3108
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3109
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->primaryDidFormatted_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3200(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3112
    :cond_45
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_63

    .line 3113
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_135

    .line 3114
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    .line 3115
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3122
    :cond_63
    :goto_63
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3400(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_81

    .line 3123
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 3124
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3400(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    .line 3125
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3132
    :cond_81
    :goto_81
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3500(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 3133
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 3134
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3500(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    .line 3135
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3142
    :cond_9f
    :goto_9f
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasAccountBalance()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 3143
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getAccountBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->setAccountBalance(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3145
    :cond_ac
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasPaidCredit()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 3146
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getPaidCredit()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->setPaidCredit(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3148
    :cond_b9
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasMaxBalance()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 3149
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getMaxBalance()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->setMaxBalance(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3151
    :cond_c6
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3900(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e4

    .line 3152
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 3153
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3900(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    .line 3154
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3161
    :cond_e4
    :goto_e4
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasDisplayableAccountBalance()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 3162
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3163
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableAccountBalance_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4000(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3166
    :cond_f6
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasActiveInUse()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 3167
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->getActiveInUse()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->setActiveInUse(Z)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3169
    :cond_103
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->hasDisplayableMaxBalance()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 3170
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3171
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableMaxBalance_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4200(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3174
    :cond_115
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3175
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 3176
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    .line 3177
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    goto/16 :goto_6

    .line 3117
    :cond_135
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidIsMutable()V

    .line 3118
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDid_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_63

    .line 3127
    :cond_143
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidFormattedIsMutable()V

    .line 3128
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3400(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_81

    .line 3137
    :cond_151
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3138
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3500(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9f

    .line 3156
    :cond_15f
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureValidAmountIsMutable()V

    .line 3157
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->validAmount_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$3900(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e4

    .line 3179
    :cond_16d
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureDisplayableValidAmountIsMutable()V

    .line 3180
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->access$4300(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3213
    const/4 v2, 0x0

    .line 3215
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 3220
    if-eqz v2, :cond_10

    .line 3221
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    .line 3224
    :cond_10
    return-object p0

    .line 3216
    :catch_11
    move-exception v1

    .line 3217
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    move-object v2, v0

    .line 3218
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 3220
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 3221
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    :cond_21
    throw v3
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
    .line 2952
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 2952
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

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
    .line 2952
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 3253
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 3255
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3261
    :goto_1f
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3262
    return-object p0

    .line 3258
    :cond_26
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    goto :goto_1f
.end method

.method public removeLabel(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3611
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3612
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3614
    return-object p0
.end method

.method public setAccountBalance(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3626
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3627
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->accountBalance_:I

    .line 3629
    return-object p0
.end method

.method public setActiveInUse(Z)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3787
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3788
    iput-boolean p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->activeInUse_:Z

    .line 3790
    return-object p0
.end method

.method public setAlternateDid(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3422
    if-nez p2, :cond_8

    .line 3423
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3425
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidIsMutable()V

    .line 3426
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDid_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3428
    return-object p0
.end method

.method public setAlternateDidFormatted(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3487
    if-nez p2, :cond_8

    .line 3488
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3490
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureAlternateDidFormattedIsMutable()V

    .line 3491
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->alternateDidFormatted_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3493
    return-object p0
.end method

.method public setDisplayableAccountBalance(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3753
    if-nez p1, :cond_8

    .line 3754
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3756
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3757
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3759
    return-object p0
.end method

.method public setDisplayableAccountBalanceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3769
    if-nez p1, :cond_8

    .line 3770
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3772
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3773
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableAccountBalance_:Ljava/lang/Object;

    .line 3775
    return-object p0
.end method

.method public setDisplayableMaxBalance(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3827
    if-nez p1, :cond_8

    .line 3828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3830
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3831
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3833
    return-object p0
.end method

.method public setDisplayableMaxBalanceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3843
    if-nez p1, :cond_8

    .line 3844
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3846
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3847
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableMaxBalance_:Ljava/lang/Object;

    .line 3849
    return-object p0
.end method

.method public setDisplayableValidAmount(ILjava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3876
    if-nez p2, :cond_8

    .line 3877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3879
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureDisplayableValidAmountIsMutable()V

    .line 3880
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->displayableValidAmount_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3882
    return-object p0
.end method

.method public setLabel(ILcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 3559
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3560
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3562
    return-object p0
.end method

.method public setLabel(ILcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3549
    if-nez p2, :cond_8

    .line 3550
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3552
    :cond_8
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureLabelIsMutable()V

    .line 3553
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3555
    return-object p0
.end method

.method public setMaxBalance(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3668
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3669
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->maxBalance_:I

    .line 3671
    return-object p0
.end method

.method public setPaidCredit(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3647
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3648
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->paidCredit_:I

    .line 3650
    return-object p0
.end method

.method public setPrimaryDid(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3320
    if-nez p1, :cond_8

    .line 3321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3323
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3324
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3326
    return-object p0
.end method

.method public setPrimaryDidBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3336
    if-nez p1, :cond_8

    .line 3337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3339
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3340
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDid_:Ljava/lang/Object;

    .line 3342
    return-object p0
.end method

.method public setPrimaryDidFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3373
    if-nez p1, :cond_8

    .line 3374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3376
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3377
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3379
    return-object p0
.end method

.method public setPrimaryDidFormattedBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3389
    if-nez p1, :cond_8

    .line 3390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3392
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3393
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->primaryDidFormatted_:Ljava/lang/Object;

    .line 3395
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 3247
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiStatus$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3249
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3250
    return-object p0
.end method

.method public setStatus(Lcom/google/grandcentral/api2/Api2$ApiStatus;)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3237
    if-nez p1, :cond_8

    .line 3238
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3240
    :cond_8
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->status_:Lcom/google/grandcentral/api2/Api2$ApiStatus;

    .line 3242
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3243
    return-object p0
.end method

.method public setType(I)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 3280
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->bitField0_:I

    .line 3281
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->type_:I

    .line 3283
    return-object p0
.end method

.method public setValidAmount(II)Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3700
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->ensureValidAmountIsMutable()V

    .line 3701
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiAccountStatusResponse$Builder;->validAmount_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3703
    return-object p0
.end method
