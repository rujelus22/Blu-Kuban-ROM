.class public final Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RenderedAdToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;",
        "Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private line1_:Ljava/lang/Object;

.field private line2_:Ljava/lang/Object;

.field private line3_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1033
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line1_:Ljava/lang/Object;

    .line 1193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line2_:Ljava/lang/Object;

    .line 1229
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line3_:Ljava/lang/Object;

    .line 1034
    invoke-direct {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->maybeForceBuilderInitialization()V

    .line 1035
    return-void
.end method

.method static synthetic access$1200()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 1

    .prologue
    .line 1040
    new-instance v0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    invoke-direct {v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1038
    return-void
.end method


# virtual methods
.method public buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 6

    .prologue
    .line 1081
    new-instance v1, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;-><init>(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;Lcom/google/contentads/frontend/token/proto/RenderedAdToken$1;)V

    .line 1082
    .local v1, result:Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1083
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1084
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1085
    or-int/lit8 v2, v2, 0x1

    .line 1087
    :cond_10
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line1_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line1_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->access$1402(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1089
    or-int/lit8 v2, v2, 0x2

    .line 1091
    :cond_1c
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line2_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line2_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->access$1502(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1093
    or-int/lit8 v2, v2, 0x4

    .line 1095
    :cond_28
    iget-object v3, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line3_:Ljava/lang/Object;

    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->line3_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->access$1602(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    #setter for: Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->access$1702(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;I)I

    .line 1097
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 2

    .prologue
    .line 1044
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1045
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line1_:Ljava/lang/Object;

    .line 1046
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1047
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line2_:Ljava/lang/Object;

    .line 1048
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1049
    const-string v0, ""

    iput-object v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line3_:Ljava/lang/Object;

    .line 1050
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1051
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->clear()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 3

    .prologue
    .line 1055
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->create()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->buildPartial()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

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
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->clone()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;
    .registers 2

    .prologue
    .line 1059
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->getDefaultInstanceForType()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1101
    invoke-static {}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getDefaultInstance()Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1111
    :cond_6
    :goto_6
    return-object p0

    .line 1102
    :cond_7
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->hasLine1()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1103
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->setLine1(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    .line 1105
    :cond_14
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->hasLine2()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1106
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->setLine2(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    .line 1108
    :cond_21
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->hasLine3()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1109
    invoke-virtual {p1}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement;->getLine3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->setLine3(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1124
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 1129
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    :sswitch_d
    return-object p0

    .line 1136
    :sswitch_e
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1137
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line1_:Ljava/lang/Object;

    goto :goto_0

    .line 1141
    :sswitch_1b
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1142
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line2_:Ljava/lang/Object;

    goto :goto_0

    .line 1146
    :sswitch_28
    iget v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1147
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line3_:Ljava/lang/Object;

    goto :goto_0

    .line 1124
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0x52 -> :sswitch_e
        0x5a -> :sswitch_1b
        0x62 -> :sswitch_28
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
    .line 1028
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

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
    .line 1028
    invoke-virtual {p0, p1, p2}, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLine1(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1172
    if-nez p1, :cond_8

    .line 1173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1175
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1176
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line1_:Ljava/lang/Object;

    .line 1178
    return-object p0
.end method

.method public setLine2(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1208
    if-nez p1, :cond_8

    .line 1209
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1211
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1212
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line2_:Ljava/lang/Object;

    .line 1214
    return-object p0
.end method

.method public setLine3(Ljava/lang/String;)Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1244
    if-nez p1, :cond_8

    .line 1245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1247
    :cond_8
    iget v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->bitField0_:I

    .line 1248
    iput-object p1, p0, Lcom/google/contentads/frontend/token/proto/RenderedAdToken$TextElement$Builder;->line3_:Ljava/lang/Object;

    .line 1250
    return-object p0
.end method
