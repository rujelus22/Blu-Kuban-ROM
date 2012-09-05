.class public final Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Experiments.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Experiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExperimentMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

.field private static final serialVersionUID:J


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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1784
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    .line 1785
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->initFields()V

    .line 1786
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 325
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedIsInitialized:B

    .line 384
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedSerializedSize:I

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;Lcom/google/wireless/realtimechat/proto/Experiments$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;-><init>(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 325
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedIsInitialized:B

    .line 384
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedSerializedSize:I

    .line 94
    return-void
.end method

.method static synthetic access$1000(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    .line 310
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    .line 311
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    .line 312
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 313
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    .line 314
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 315
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    .line 316
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 317
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    .line 318
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 319
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    .line 320
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 321
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    .line 322
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z

    .line 323
    iput-boolean v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z

    .line 324
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    .registers 1

    .prologue
    .line 593
    #calls: Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->access$100()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    return-object v0
.end method

.method public getDisabledAllUser()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z

    return v0
.end method

.method public getDisabledDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledDomainCount()I
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

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
    .line 237
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDisabledEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledEmailCount()I
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

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
    .line 181
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDisabledId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledIdCount()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

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
    .line 125
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDisabledRegexDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexDomainCount()I
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

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
    .line 265
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDisabledRegexEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexEmailCount()I
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

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
    .line 209
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDisabledRegexId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDisabledRegexIdCount()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

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
    .line 153
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledAllUser()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z

    return v0
.end method

.method public getEnabledDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledDomainCount()I
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

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
    .line 251
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledEmailCount()I
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

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
    .line 195
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledIdCount()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

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
    .line 139
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledRegexDomain(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexDomainCount()I
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

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
    .line 279
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledRegexEmail(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexEmailCount()I
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

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
    .line 223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getEnabledRegexId(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledRegexIdCount()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

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
    .line 167
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getExperiment(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

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
    .line 114
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

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
    .line 111
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 386
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedSerializedSize:I

    .line 387
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    move v3, v2

    .line 516
    .end local v2           #size:I
    .local v3, size:I
    :goto_6
    return v3

    .line 389
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_7
    const/4 v2, 0x0

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_26

    .line 393
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 396
    :cond_26
    add-int/2addr v2, v0

    .line 397
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getExperimentList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 400
    const/4 v0, 0x0

    .line 401
    const/4 v1, 0x0

    :goto_34
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 402
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 405
    :cond_4a
    add-int/2addr v2, v0

    .line 406
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 409
    const/4 v0, 0x0

    .line 410
    const/4 v1, 0x0

    :goto_58
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6e

    .line 411
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 414
    :cond_6e
    add-int/2addr v2, v0

    .line 415
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 418
    const/4 v0, 0x0

    .line 419
    const/4 v1, 0x0

    :goto_7c
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_92

    .line 420
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 423
    :cond_92
    add-int/2addr v2, v0

    .line 424
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledRegexIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 427
    const/4 v0, 0x0

    .line 428
    const/4 v1, 0x0

    :goto_a0
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b6

    .line 429
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_a0

    .line 432
    :cond_b6
    add-int/2addr v2, v0

    .line 433
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledRegexIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 436
    const/4 v0, 0x0

    .line 437
    const/4 v1, 0x0

    :goto_c4
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_da

    .line 438
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_c4

    .line 441
    :cond_da
    add-int/2addr v2, v0

    .line 442
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 445
    const/4 v0, 0x0

    .line 446
    const/4 v1, 0x0

    :goto_e8
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_fe

    .line 447
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    .line 450
    :cond_fe
    add-int/2addr v2, v0

    .line 451
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 454
    const/4 v0, 0x0

    .line 455
    const/4 v1, 0x0

    :goto_10c
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_122

    .line 456
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_10c

    .line 459
    :cond_122
    add-int/2addr v2, v0

    .line 460
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledRegexEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 463
    const/4 v0, 0x0

    .line 464
    const/4 v1, 0x0

    :goto_130
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_146

    .line 465
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 464
    add-int/lit8 v1, v1, 0x1

    goto :goto_130

    .line 468
    :cond_146
    add-int/2addr v2, v0

    .line 469
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledRegexEmailList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 472
    const/4 v0, 0x0

    .line 473
    const/4 v1, 0x0

    :goto_154
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_16a

    .line 474
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_154

    .line 477
    :cond_16a
    add-int/2addr v2, v0

    .line 478
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledDomainList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 481
    const/4 v0, 0x0

    .line 482
    const/4 v1, 0x0

    :goto_178
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_18e

    .line 483
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_178

    .line 486
    :cond_18e
    add-int/2addr v2, v0

    .line 487
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledDomainList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 490
    const/4 v0, 0x0

    .line 491
    const/4 v1, 0x0

    :goto_19c
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1b2

    .line 492
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_19c

    .line 495
    :cond_1b2
    add-int/2addr v2, v0

    .line 496
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getDisabledRegexDomainList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 499
    const/4 v0, 0x0

    .line 500
    const/4 v1, 0x0

    :goto_1c0
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1d6

    .line 501
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c0

    .line 504
    :cond_1d6
    add-int/2addr v2, v0

    .line 505
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getEnabledRegexDomainList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 507
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f2

    .line 508
    const/16 v4, 0xe

    iget-boolean v5, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 511
    :cond_1f2
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_202

    .line 512
    const/16 v4, 0xf

    iget-boolean v5, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 515
    :cond_202
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedSerializedSize:I

    move v3, v2

    .line 516
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_6
.end method

.method public hasDisabledAllUser()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 292
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasEnabledAllUser()Z
    .registers 3

    .prologue
    .line 302
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

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
    const/4 v1, 0x1

    .line 327
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedIsInitialized:B

    .line 328
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 331
    :goto_8
    return v1

    .line 328
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 330
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 336
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->getSerializedSize()I

    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 338
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->experiment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 340
    :cond_20
    const/4 v0, 0x0

    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 341
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 343
    :cond_35
    const/4 v0, 0x0

    :goto_36
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 344
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 346
    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_61

    .line 347
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 349
    :cond_61
    const/4 v0, 0x0

    :goto_62
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_77

    .line 350
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexId_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 352
    :cond_77
    const/4 v0, 0x0

    :goto_78
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 353
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 355
    :cond_8d
    const/4 v0, 0x0

    :goto_8e
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a3

    .line 356
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 358
    :cond_a3
    const/4 v0, 0x0

    :goto_a4
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ba

    .line 359
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 361
    :cond_ba
    const/4 v0, 0x0

    :goto_bb
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d1

    .line 362
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_bb

    .line 364
    :cond_d1
    const/4 v0, 0x0

    :goto_d2
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e8

    .line 365
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_d2

    .line 367
    :cond_e8
    const/4 v0, 0x0

    :goto_e9
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ff

    .line 368
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_e9

    .line 370
    :cond_ff
    const/4 v0, 0x0

    :goto_100
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_116

    .line 371
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 370
    add-int/lit8 v0, v0, 0x1

    goto :goto_100

    .line 373
    :cond_116
    const/4 v0, 0x0

    :goto_117
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_12d

    .line 374
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledRegexDomain_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_117

    .line 376
    :cond_12d
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_13a

    .line 377
    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->disabledAllUser_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 379
    :cond_13a
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_147

    .line 380
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->enabledAllUser_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 382
    :cond_147
    return-void
.end method
