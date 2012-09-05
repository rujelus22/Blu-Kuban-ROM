.class Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/emailcommon/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/internet/MimeMessage;)V
    .registers 3
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 651
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 654
    return-void
.end method

.method private convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "str"
    .parameter "charset"

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 681
    .local v0, after:Ljava/lang/String;
    :try_start_1
    const-string v7, "8859_1"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 682
    .local v2, b:[B
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_e} :catch_27

    move-result-object v3

    .line 684
    .local v3, decoder:Ljava/nio/charset/CharsetDecoder;
    :try_start_f
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    .line 685
    .local v6, r:Ljava/nio/CharBuffer;
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_f .. :try_end_1a} :catch_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_1a} :catch_27

    move-result-object v0

    move-object v1, v0

    .line 698
    .end local v0           #after:Ljava/lang/String;
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v6           #r:Ljava/nio/CharBuffer;
    :goto_1c
    return-object v1

    .line 689
    .restart local v0       #after:Ljava/lang/String;
    .restart local v2       #b:[B
    .restart local v3       #decoder:Ljava/nio/charset/CharsetDecoder;
    :catch_1d
    move-exception v4

    .line 690
    .local v4, e:Ljava/nio/charset/CharacterCodingException;
    :try_start_1e
    new-instance v1, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v1, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_25
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_25} :catch_27

    .end local v0           #after:Ljava/lang/String;
    .local v1, after:Ljava/lang/String;
    move-object v0, v1

    .line 693
    .end local v1           #after:Ljava/lang/String;
    .restart local v0       #after:Ljava/lang/String;
    goto :goto_1c

    .line 695
    .end local v2           #b:[B
    .end local v3           #decoder:Ljava/nio/charset/CharsetDecoder;
    .end local v4           #e:Ljava/nio/charset/CharacterCodingException;
    :catch_27
    move-exception v5

    .line 696
    .local v5, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v0

    .line 698
    .local v1, after:Ljava/lang/Object;
    goto :goto_1c
.end method

.method private expect(Ljava/lang/Class;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 703
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_47
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 951
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 952
    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/emailcommon/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;

    move-result-object v1

    .line 954
    :try_start_d
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_18
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_18} :catch_19

    .line 958
    return-void

    .line 955
    :catch_19
    move-exception v0

    .line 956
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endBodyPart()V
    .registers 2

    .prologue
    .line 977
    const-class v0, Lcom/android/emailcommon/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 978
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 979
    return-void
.end method

.method public endHeader()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 896
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 897
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 898
    instance-of v3, v0, Lcom/android/emailcommon/mail/Message;

    if-eqz v3, :cond_16

    .line 900
    if-nez v0, :cond_17

    .line 935
    :cond_16
    :goto_16
    return-void

    .line 901
    :cond_17
    :try_start_17
    const-string v3, "Content-Type"

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 902
    if-eqz v3, :cond_16

    const-string v4, "charset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 905
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 906
    array-length v5, v4

    :goto_31
    if-ge v2, v5, :cond_8f

    aget-object v6, v4, v2

    .line 907
    const-string v7, "charset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 908
    const-string v2, "="

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 909
    array-length v4, v2

    if-ge v4, v8, :cond_80

    .line 911
    const-string v2, ":"

    const/4 v4, 0x2

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 912
    array-length v4, v2

    if-ne v4, v8, :cond_8f

    .line 913
    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 921
    :goto_5c
    if-eqz v2, :cond_66

    .line 922
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    :cond_66
    if-nez v1, :cond_16

    if-eqz v2, :cond_16

    .line 925
    const-string v1, "charset"

    const-string v4, "MBP; charset"

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 926
    const-string v3, "UTF-8"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 927
    const-string v2, "Content-Type"

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 930
    :catch_7e
    move-exception v0

    goto :goto_16

    .line 916
    :cond_80
    const/4 v4, 0x1

    aget-object v2, v2, v4

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_8a} :catch_7e

    move-result-object v2

    goto :goto_5c

    .line 906
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_8f
    move-object v2, v1

    goto :goto_5c
.end method

.method public endMessage()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    .line 726
    const-class v0, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 727
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 728
    instance-of v1, v0, Lcom/android/emailcommon/mail/Message;

    if-eqz v1, :cond_1b

    .line 730
    :try_start_13
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 879
    :cond_1b
    :goto_1b
    return-void

    .line 732
    :cond_1c
    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    .line 733
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v1, :cond_1b

    .line 735
    const-string v3, "charset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_fc

    const-string v3, "MBP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 743
    const-string v3, "="

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 744
    array-length v4, v3

    if-ge v4, v6, :cond_ef

    .line 746
    const-string v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-object v1, v2

    .line 750
    :goto_60
    if-eqz v1, :cond_66

    .line 751
    invoke-static {v1}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    :cond_66
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "org charset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",javacharset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    if-nez v2, :cond_176

    .line 765
    :goto_8a
    const-string v2, "From"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 774
    if-eqz v2, :cond_a9

    if-eqz v1, :cond_a9

    .line 776
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 777
    const-string v3, "From"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :cond_a9
    const-string v2, "To"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 796
    if-eqz v2, :cond_c8

    if-eqz v1, :cond_c8

    .line 798
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c8

    .line 799
    const-string v3, "To"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_c8
    const-string v2, "CC"

    invoke-interface {v0, v2}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 816
    if-eqz v2, :cond_1b

    if-eqz v1, :cond_1b

    .line 818
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 819
    const-string v3, "CC"

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-direct {p0, v2, v1}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_e7} :catch_e9

    goto/16 :goto_1b

    .line 871
    :catch_e9
    move-exception v0

    .line 873
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    .line 748
    :cond_ef
    const/4 v1, 0x1

    :try_start_f0
    aget-object v1, v3, v1

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_60

    .line 841
    :cond_fc
    const-string v1, "From"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 842
    if-eqz v1, :cond_124

    .line 843
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_124

    .line 844
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 845
    if-eqz v2, :cond_124

    .line 846
    const-string v3, "From"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_124
    const-string v1, "To"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 853
    if-eqz v1, :cond_14c

    .line 854
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14c

    .line 855
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 856
    if-eqz v2, :cond_14c

    .line 857
    const-string v3, "To"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_14c
    const-string v1, "CC"

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 862
    if-eqz v1, :cond_1b

    .line 863
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 864
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->chardet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 865
    if-eqz v2, :cond_1b

    .line 866
    const-string v3, "CC"

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-direct {p0, v1, v2}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->convert2utf8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_174} :catch_e9

    goto/16 :goto_1b

    :cond_176
    move-object v1, v2

    goto/16 :goto_8a
.end method

.method public endMultipart()V
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 962
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 983
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 985
    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 986
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 989
    :cond_16
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 886
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 888
    :try_start_5
    const-string v0, ":"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 889
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/emailcommon/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_21} :catch_22

    .line 893
    return-void

    .line 890
    :catch_22
    move-exception v0

    .line 891
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public preamble(Ljava/io/InputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 995
    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    .line 996
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    .line 999
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_16 .. :try_end_25} :catch_26

    .line 1003
    return-void

    .line 1000
    :catch_26
    move-exception v0

    .line 1001
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public raw(Ljava/io/InputStream;)V
    .registers 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1006
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .registers 3

    .prologue
    .line 965
    const-class v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 968
    :try_start_5
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 969
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 970
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 974
    return-void

    .line 971
    :catch_1b
    move-exception v0

    .line 972
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startHeader()V
    .registers 2

    .prologue
    .line 882
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 883
    return-void
.end method

.method public startMessage()V
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 710
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :goto_f
    return-void

    .line 712
    :cond_10
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 714
    :try_start_15
    new-instance v1, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 715
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 716
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_15 .. :try_end_2a} :catch_2b

    goto :goto_f

    .line 717
    :catch_2b
    move-exception v0

    .line 718
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .registers 5
    .parameter

    .prologue
    .line 938
    const-class v0, Lcom/android/emailcommon/mail/Part;

    invoke-direct {p0, v0}, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 940
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Part;

    .line 942
    :try_start_d
    new-instance v1, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 943
    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 944
    iget-object v0, p0, Lcom/android/emailcommon/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_d .. :try_end_1e} :catch_1f

    .line 948
    return-void

    .line 945
    :catch_1f
    move-exception v0

    .line 946
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
