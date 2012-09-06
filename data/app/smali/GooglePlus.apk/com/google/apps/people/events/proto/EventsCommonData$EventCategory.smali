.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventCategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventCategory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;,
        Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1472
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .line 1473
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->initFields()V

    .line 1474
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1136
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1228
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedIsInitialized:B

    .line 1245
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedSerializedSize:I

    .line 1137
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1138
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1228
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedIsInitialized:B

    .line 1245
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedSerializedSize:I

    .line 1138
    return-void
.end method

.method static synthetic access$2002(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1131
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 1

    .prologue
    .line 1142
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1226
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1227
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 1

    .prologue
    .line 1333
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->access$1800()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1336
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategory()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 2

    .prologue
    .line 1146
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1247
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedSerializedSize:I

    .line 1248
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 1256
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 1250
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 1251
    iget v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 1252
    iget-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    invoke-virtual {v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1255
    :cond_1a
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedSerializedSize:I

    move v1, v0

    .line 1256
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasCategory()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1219
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1230
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedIsInitialized:B

    .line 1231
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1234
    :goto_8
    return v1

    .line 1231
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1233
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 2

    .prologue
    .line 1334
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 2

    .prologue
    .line 1338
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

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
    .line 1263
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1239
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getSerializedSize()I

    .line 1240
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 1241
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1243
    :cond_13
    return-void
.end method
