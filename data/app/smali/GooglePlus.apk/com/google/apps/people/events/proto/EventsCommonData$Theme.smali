.class public final Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$ThemeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private category_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;",
            ">;"
        }
    .end annotation
.end field

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private themeId_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3371
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    .line 3372
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->initFields()V

    .line 3373
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2825
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2896
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedIsInitialized:B

    .line 2919
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedSerializedSize:I

    .line 2826
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2820
    invoke-direct {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2896
    iput-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedIsInitialized:B

    .line 2919
    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedSerializedSize:I

    .line 2827
    return-void
.end method

.method static synthetic access$4102(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2820
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I

    return p1
.end method

.method static synthetic access$4200(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2820
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2820
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2820
    iput p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 1

    .prologue
    .line 2831
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2892
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I

    .line 2893
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    .line 2894
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    .line 2895
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 1

    .prologue
    .line 3015
    #calls: Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->access$3900()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3018
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCategoryCount()I
    .registers 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCategoryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;
    .registers 2

    .prologue
    .line 2835
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->defaultInstance:Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme;

    move-result-object v0

    return-object v0
.end method

.method public getImageCount()I
    .registers 2

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/apps/people/events/proto/EventsCommonData$ThemeImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 2921
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedSerializedSize:I

    .line 2922
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 2938
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 2924
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 2925
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_16

    .line 2926
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 2929
    :cond_16
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_30

    .line 2930
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2929
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 2933
    :cond_30
    const/4 v0, 0x0

    :goto_31
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4a

    .line 2934
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 2933
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 2937
    :cond_4a
    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedSerializedSize:I

    move v2, v1

    .line 2938
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getThemeId()I
    .registers 2

    .prologue
    .line 2846
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I

    return v0
.end method

.method public hasThemeId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2843
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->bitField0_:I

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

    .line 2898
    iget-byte v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedIsInitialized:B

    .line 2899
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2902
    :goto_8
    return v1

    .line 2899
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2901
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 2

    .prologue
    .line 3016
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilderForType()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;
    .registers 2

    .prologue
    .line 3020
    invoke-static {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->newBuilder(Lcom/google/apps/people/events/proto/EventsCommonData$Theme;)Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2820
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->toBuilder()Lcom/google/apps/people/events/proto/EventsCommonData$Theme$Builder;

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
    .line 2945
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2907
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->getSerializedSize()I

    .line 2908
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_f

    .line 2909
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->themeId_:I

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2911
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 2912
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->image_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2911
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2914
    :cond_27
    const/4 v0, 0x0

    :goto_28
    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 2915
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$Theme;->category_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2914
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 2917
    :cond_3f
    return-void
.end method
