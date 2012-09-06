.class public final Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PerfectStreamActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

.field private static final serialVersionUID:J


# instance fields
.field private a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private activityId_:Ljava/lang/Object;

.field private authorGaiaId_:J

.field private bitField0_:I

.field private collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

.field private creationSource_:Ljava/lang/Object;

.field private embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

.field private embedClientJspb_:Ljava/lang/Object;

.field private expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

.field private explanation_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;"
        }
    .end annotation
.end field

.field private focusObfuscatedAuthorId_:Ljava/lang/Object;

.field private hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

.field private isPopularPost_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private source_:Lcom/google/wireless/tacotruck/proto/Data$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1661
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 1662
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->initFields()V

    .line 1663
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 175
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 455
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 532
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 177
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 455
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 532
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 177
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/protos/embed/EmbedClient$EmbedClientItem;)Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    return-object p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 211
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 212
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 214
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 217
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

.method private getCreationSourceBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 355
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 356
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 357
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 359
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 362
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method private getEmbedClientJspbBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 417
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    .line 418
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 419
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 421
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    .line 424
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

.method private getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 304
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 305
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 307
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 310
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

.method private initFields()V
    .registers 3

    .prologue
    .line 439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 440
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    .line 442
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 443
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 444
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    .line 445
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 446
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 447
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 449
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 450
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    .line 451
    invoke-static {}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->getDefaultInstance()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    .line 452
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z

    .line 454
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 676
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->access$100()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 679
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    return-object v0
.end method

.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 196
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 197
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 198
    check-cast v1, Ljava/lang/String;

    .line 206
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 200
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 202
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 204
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 206
    goto :goto_8
.end method

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 279
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method public getCreationSource()Ljava/lang/String;
    .registers 5

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 342
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 343
    check-cast v1, Ljava/lang/String;

    .line 351
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 345
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 347
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 348
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 349
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 351
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 185
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    return-object v0
.end method

.method public getEmbedClientJspb()Ljava/lang/String;
    .registers 5

    .prologue
    .line 403
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    .line 404
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 405
    check-cast v1, Ljava/lang/String;

    .line 413
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 407
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 409
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 411
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientJspb_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 413
    goto :goto_8
.end method

.method public getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method public getExplanation(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3
    .parameter "index"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getExplanationCount()I
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExplanationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Explanation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method public getExplanationOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;

    return-object v0
.end method

.method public getExplanationOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 289
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 290
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 291
    check-cast v1, Ljava/lang/String;

    .line 299
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 293
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 295
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 297
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 299
    goto :goto_8
.end method

.method public getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object v0
.end method

.method public getIsPopularPost()Z
    .registers 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z

    return v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 534
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 535
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 599
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 537
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 538
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 539
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 542
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 543
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 546
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 547
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 550
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 551
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 554
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5e

    .line 555
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 558
    :cond_5e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 559
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 562
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7e

    .line 563
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 566
    :cond_7e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8d

    .line 567
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 570
    :cond_8d
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a0

    .line 571
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 574
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b1

    .line 575
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 578
    :cond_b1
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_c4

    .line 579
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 582
    :cond_c4
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_d5

    .line 583
    const/16 v3, 0xc

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 586
    :cond_d5
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_e8

    .line 587
    const/16 v3, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientJspbBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 590
    :cond_e8
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_f9

    .line 591
    const/16 v3, 0xe

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 594
    :cond_f9
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_10a

    .line 595
    const/16 v3, 0xf

    iget-boolean v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 598
    :cond_10a
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    move v2, v1

    .line 599
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public hasA2AHangoutData()Z
    .registers 3

    .prologue
    .line 380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 318
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 193
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasAuthorGaiaId()Z
    .registers 3

    .prologue
    .line 276
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCollapsedData()Z
    .registers 3

    .prologue
    .line 256
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasCreationSource()Z
    .registers 3

    .prologue
    .line 338
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasEmbedClientItem()Z
    .registers 3

    .prologue
    .line 390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasEmbedClientJspb()Z
    .registers 3

    .prologue
    .line 400
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasExpandedData()Z
    .registers 3

    .prologue
    .line 266
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasFocusObfuscatedAuthorId()Z
    .registers 3

    .prologue
    .line 286
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasHangoutData()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasIsPopularPost()Z
    .registers 3

    .prologue
    .line 432
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 328
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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

.method public hasSource()Z
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 457
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 458
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    if-ne v0, v1, :cond_b

    :goto_9
    move v2, v1

    .line 479
    :goto_a
    return v2

    :cond_b
    move v1, v2

    .line 458
    goto :goto_9

    .line 460
    :cond_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 461
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 462
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    goto :goto_a

    .line 466
    :cond_20
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasA2AHangoutData()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 467
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getA2AHangoutData()Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_33

    .line 468
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    goto :goto_a

    .line 472
    :cond_33
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasEmbedClientItem()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 473
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientItem()Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protos/embed/EmbedClient$EmbedClientItem;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_46

    .line 474
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    goto :goto_a

    .line 478
    :cond_46
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    move v2, v1

    .line 479
    goto :goto_a
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 677
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2

    .prologue
    .line 681
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 484
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSerializedSize()I

    .line 485
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 486
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 488
    :cond_15
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 489
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 491
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 492
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 494
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 495
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 497
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4f

    .line 498
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 500
    :cond_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d

    .line 501
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 503
    :cond_5d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6b

    .line 504
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 506
    :cond_6b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_78

    .line 507
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 509
    :cond_78
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_89

    .line 510
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 512
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_98

    .line 513
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 515
    :cond_98
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a9

    .line 516
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 518
    :cond_a9
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_b8

    .line 519
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->embedClientItem_:Lcom/google/protos/embed/EmbedClient$EmbedClientItem;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 521
    :cond_b8
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_c9

    .line 522
    const/16 v1, 0xd

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getEmbedClientJspbBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 524
    :cond_c9
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_d8

    .line 525
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->a2AHangoutData_:Lcom/google/apps/tacotown/proto/A2a$HangoutData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 527
    :cond_d8
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e7

    .line 528
    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isPopularPost_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 530
    :cond_e7
    return-void
.end method
