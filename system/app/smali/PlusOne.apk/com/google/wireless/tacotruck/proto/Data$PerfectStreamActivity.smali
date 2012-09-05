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
.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private activityId_:Ljava/lang/Object;

.field private authorGaiaId_:J

.field private bitField0_:I

.field private collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

.field private creationSource_:Ljava/lang/Object;

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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private source_:Lcom/google/wireless/tacotruck/proto/Data$Source;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1320
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    .line 1321
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->initFields()V

    .line 1322
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 159
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 373
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 426
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 373
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 426
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 161
    return-void
.end method

.method static synthetic access$1002(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$Source;)Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;)Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    return-object p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 195
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 196
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 198
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 201
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
    .line 339
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 340
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 341
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 343
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 346
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
    .line 165
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method private getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 288
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 289
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 291
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 294
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
    .line 361
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 362
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Source;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Source;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    .line 363
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    .line 364
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    .line 365
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 366
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 368
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 369
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 370
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 372
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 1

    .prologue
    .line 554
    #calls: Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->access$100()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 557
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 180
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    .line 181
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 182
    check-cast v1, Ljava/lang/String;

    .line 190
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 184
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 186
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 188
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 190
    goto :goto_8
.end method

.method public getAuthorGaiaId()J
    .registers 3

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    return-wide v0
.end method

.method public getCollapsedData()Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    return-object v0
.end method

.method public getCreationSource()Ljava/lang/String;
    .registers 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    .line 326
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 327
    check-cast v1, Ljava/lang/String;

    .line 335
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 329
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 331
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 333
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->creationSource_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 335
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method public getExplanation(I)Lcom/google/wireless/tacotruck/proto/Data$Explanation;
    .registers 3
    .parameter "index"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Explanation;

    return-object v0
.end method

.method public getExplanationCount()I
    .registers 2

    .prologue
    .line 226
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
    .line 219
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method public getExplanationOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$ExplanationOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 233
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
    .line 223
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    return-object v0
.end method

.method public getFocusObfuscatedAuthorId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    .line 274
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 275
    check-cast v1, Ljava/lang/String;

    .line 283
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 277
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 279
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 281
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->focusObfuscatedAuthorId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 283
    goto :goto_8
.end method

.method public getHangoutData()Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    return-object v0
.end method

.method public getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 315
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

    .line 428
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    .line 429
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_c

    move v2, v1

    .line 477
    .end local v1           #size:I
    .local v2, size:I
    :goto_b
    return v2

    .line 431
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_c
    const/4 v1, 0x0

    .line 432
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1c

    .line 433
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 436
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_29

    .line 437
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 440
    :cond_29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 441
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 444
    :cond_43
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_50

    .line 445
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 448
    :cond_50
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v7, :cond_5e

    .line 449
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 452
    :cond_5e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6e

    .line 453
    const/4 v3, 0x6

    iget-wide v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v1, v3

    .line 456
    :cond_6e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_7e

    .line 457
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 460
    :cond_7e
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8d

    .line 461
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v7, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 464
    :cond_8d
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_a0

    .line 465
    const/16 v3, 0x9

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 468
    :cond_a0
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_b1

    .line 469
    const/16 v3, 0xa

    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 472
    :cond_b1
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_c4

    .line 473
    const/16 v3, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 476
    :cond_c4
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedSerializedSize:I

    move v2, v1

    .line 477
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_b
.end method

.method public getSource()Lcom/google/wireless/tacotruck/proto/Data$Source;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    return-object v0
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 302
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

    .line 177
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
    .line 260
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
    .line 240
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
    .line 322
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

.method public hasExpandedData()Z
    .registers 3

    .prologue
    .line 250
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
    .line 270
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

    .prologue
    .line 354
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

.method public hasPlusoneData()Z
    .registers 3

    .prologue
    .line 312
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
    .line 209
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
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 375
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    .line 376
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 385
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 376
    goto :goto_9

    .line 378
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hasExpandedData()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 379
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getExpandedData()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 380
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    move v1, v2

    .line 381
    goto :goto_9

    .line 384
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 484
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

    .line 390
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getSerializedSize()I

    .line 391
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 392
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 394
    :cond_15
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 395
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->source_:Lcom/google/wireless/tacotruck/proto/Data$Source;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 397
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_38

    .line 398
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->explanation_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 400
    :cond_38
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 401
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->collapsedData_:Lcom/google/wireless/tacotruck/proto/Data$CollapsedData;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 403
    :cond_43
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4f

    .line 404
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->expandedData_:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 406
    :cond_4f
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5d

    .line 407
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->authorGaiaId_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 409
    :cond_5d
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6b

    .line 410
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 412
    :cond_6b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_78

    .line 413
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->plusoneData_:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-virtual {p1, v5, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 415
    :cond_78
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_89

    .line 416
    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getCreationSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 418
    :cond_89
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_98

    .line 419
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->hangoutData_:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 421
    :cond_98
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a9

    .line 422
    const/16 v1, 0xb

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->getFocusObfuscatedAuthorIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 424
    :cond_a9
    return-void
.end method
