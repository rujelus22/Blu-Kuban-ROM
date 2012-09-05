.class public final Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6700()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 1

    .prologue
    .line 2858
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 3

    .prologue
    .line 2867
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;-><init>()V

    .line 2868
    .local v0, builder:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    new-instance v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;-><init>(Lcom/google/ocean/frontend/javascript/proto/PageInfo$1;)V

    iput-object v1, v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 2869
    return-object v0
.end method


# virtual methods
.method public buildPartial()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    .registers 4

    .prologue
    .line 2913
    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    if-nez v1, :cond_c

    .line 2914
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2917
    :cond_c
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 2918
    .local v0, returnMe:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    .line 2919
    return-object v0
.end method

.method public clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 3

    .prologue
    .line 2886
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->create()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    invoke-virtual {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2858
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

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
    .line 2858
    invoke-virtual {p0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->clone()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 2923
    invoke-static {}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getDefaultInstance()Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2930
    :cond_6
    :goto_6
    return-object p0

    .line 2924
    :cond_7
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2925
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    .line 2927
    :cond_14
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2928
    invoke-virtual {p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2938
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2939
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1e

    .line 2943
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2944
    :sswitch_d
    return-object p0

    .line 2949
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    goto :goto_0

    .line 2953
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    goto :goto_0

    .line 2939
    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
    .end sparse-switch
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
    .line 2858
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

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
    .line 2858
    invoke-virtual {p0, p1, p2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2990
    if-nez p1, :cond_8

    .line 2991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2993
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasMimeType:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->access$7102(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Z)Z

    .line 2994
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->mimeType_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->access$7202(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Ljava/lang/String;)Ljava/lang/String;

    .line 2995
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 2969
    if-nez p1, :cond_8

    .line 2970
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2972
    :cond_8
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    const/4 v1, 0x1

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->hasUrl:Z
    invoke-static {v0, v1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->access$6902(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Z)Z

    .line 2973
    iget-object v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource$Builder;->result:Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;

    #setter for: Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->url_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;->access$7002(Lcom/google/ocean/frontend/javascript/proto/PageInfo$Resource;Ljava/lang/String;)Ljava/lang/String;

    .line 2974
    return-object p0
.end method
