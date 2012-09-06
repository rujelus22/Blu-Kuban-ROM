.class public final Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslatedText"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasSourceLocale:Z

.field private hasTargetLocale:Z

.field private hasText:Z

.field private sourceLocale_:Ljava/lang/String;

.field private targetLocale_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 596
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 613
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 630
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 672
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 591
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .registers 2

    .prologue
    .line 675
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    if-gez v0, :cond_7

    .line 677
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSerializedSize()I

    .line 679
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 686
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 689
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 690
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 693
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 694
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 697
    :cond_31
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->cachedSize:I

    .line 698
    return v0
.end method

.method public getSourceLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasSourceLocale()Z
    .registers 2

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    return v0
.end method

.method public hasTargetLocale()Z
    .registers 2

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    return v0
.end method

.method public hasText()Z
    .registers 2

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 707
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_26

    .line 711
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    :sswitch_d
    return-object p0

    .line 717
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 721
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 725
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    goto :goto_0

    .line 707
    :sswitch_data_26
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_16
        0x1a -> :sswitch_1e
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
    .line 588
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    move-result-object v0

    return-object v0
.end method

.method public setSourceLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 617
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale:Z

    .line 618
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->sourceLocale_:Ljava/lang/String;

    .line 619
    return-object p0
.end method

.method public setTargetLocale(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale:Z

    .line 635
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->targetLocale_:Ljava/lang/String;

    .line 636
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    .registers 3
    .parameter "value"

    .prologue
    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText:Z

    .line 601
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->text_:Ljava/lang/String;

    .line 602
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasText()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 662
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 664
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasSourceLocale()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 665
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getSourceLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 667
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->hasTargetLocale()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 668
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;->getTargetLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 670
    :cond_2a
    return-void
.end method
