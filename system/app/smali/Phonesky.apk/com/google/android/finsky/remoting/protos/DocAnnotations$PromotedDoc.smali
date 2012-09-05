.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PromotedDoc"
.end annotation


# instance fields
.field private cachedSize:I

.field private descriptionHtml_:Ljava/lang/String;

.field private detailsUrl_:Ljava/lang/String;

.field private hasDescriptionHtml:Z

.field private hasDetailsUrl:Z

.field private hasSubtitle:Z

.field private hasTitle:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private subtitle_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1022
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    .line 1039
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    .line 1055
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    .line 1089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    .line 1106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    .line 1156
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    .line 1017
    return-void
.end method


# virtual methods
.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 3
    .parameter "value"

    .prologue
    .line 1072
    if-nez p1, :cond_8

    .line 1073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1075
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    .line 1078
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1079
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    if-gez v0, :cond_7

    .line 1160
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSerializedSize()I

    .line 1162
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    return v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1166
    const/4 v2, 0x0

    .line 1167
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1168
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1171
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1172
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1175
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getImageList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1176
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_29

    .line 1179
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_3c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1180
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1183
    :cond_4c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1184
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDetailsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1187
    :cond_5c
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->cachedSize:I

    .line 1188
    return v2
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescriptionHtml()Z
    .registers 2

    .prologue
    .line 1091
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .registers 2

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl:Z

    return v0
.end method

.method public hasSubtitle()Z
    .registers 2

    .prologue
    .line 1041
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1195
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1196
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_3a

    .line 1200
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1201
    :sswitch_d
    return-object p0

    .line 1206
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 1210
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 1214
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 1215
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1216
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 1220
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_2a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 1224
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    goto :goto_0

    .line 1196
    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
        0x22 -> :sswitch_2a
        0x2a -> :sswitch_32
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;

    move-result-object v0

    return-object v0
.end method

.method public setDescriptionHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 3
    .parameter "value"

    .prologue
    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml:Z

    .line 1094
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->descriptionHtml_:Ljava/lang/String;

    .line 1095
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 3
    .parameter "value"

    .prologue
    .line 1110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl:Z

    .line 1111
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->detailsUrl_:Ljava/lang/String;

    .line 1112
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 3
    .parameter "value"

    .prologue
    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle:Z

    .line 1044
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->subtitle_:Ljava/lang/String;

    .line 1045
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;
    .registers 3
    .parameter "value"

    .prologue
    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle:Z

    .line 1027
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->title_:Ljava/lang/String;

    .line 1028
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1140
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1142
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasSubtitle()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1143
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getSubtitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1145
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1146
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_24

    .line 1148
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDescriptionHtml()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1149
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDescriptionHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1151
    :cond_43
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->hasDetailsUrl()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 1152
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$PromotedDoc;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1154
    :cond_51
    return-void
.end method
