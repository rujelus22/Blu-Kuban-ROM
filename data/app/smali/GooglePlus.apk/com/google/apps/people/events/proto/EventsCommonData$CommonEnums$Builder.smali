.class public final Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnumsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnumsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1888
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1889
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->maybeForceBuilderInitialization()V

    .line 1890
    return-void
.end method

.method static synthetic access$2300()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 1

    .prologue
    .line 1883
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 1

    .prologue
    .line 1895
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1893
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    .registers 3

    .prologue
    .line 1912
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    .line 1913
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1914
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1916
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    .registers 3

    .prologue
    .line 1930
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 1931
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 1

    .prologue
    .line 1899
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1900
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 3

    .prologue
    .line 1904
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

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
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;
    .registers 2

    .prologue
    .line 1908
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1940
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1935
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1936
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1948
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1949
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 1954
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1956
    :pswitch_d
    return-object p0

    .line 1949
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
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
    .line 1883
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1883
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

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
    .line 1883
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$CommonEnums$Builder;

    move-result-object v0

    return-object v0
.end method
