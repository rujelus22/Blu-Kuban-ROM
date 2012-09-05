.class public Lcom/infraware/office/evengine/EvCodeConversion;
.super Ljava/lang/Object;
.source "EvCodeConversion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/infraware/office/evengine/EvCodeConversion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/infraware/office/evengine/EvCodeConversion;->$assertionsDisabled:Z

    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/evengine/EvCodeConversion;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    return-void

    .line 8
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCodeConversion()Lcom/infraware/office/evengine/EvCodeConversion;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/infraware/office/evengine/EvCodeConversion;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lcom/infraware/office/evengine/EvCodeConversion;

    invoke-direct {v0}, Lcom/infraware/office/evengine/EvCodeConversion;-><init>()V

    sput-object v0, Lcom/infraware/office/evengine/EvCodeConversion;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    .line 17
    :cond_b
    sget-object v0, Lcom/infraware/office/evengine/EvCodeConversion;->mEvCodeConversion:Lcom/infraware/office/evengine/EvCodeConversion;

    return-object v0
.end method


# virtual methods
.method DecodeToUnicode(ILjava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 7
    .parameter "nCodePage"
    .parameter "byteBuffer"

    .prologue
    .line 23
    sparse-switch p1, :sswitch_data_30

    .line 35
    const-string v3, "windows-949"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 38
    .local v2, charset:Ljava/nio/charset/Charset;
    :goto_9
    invoke-virtual {v2, p2}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 40
    .local v1, charBuffer:Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, UCode:Ljava/lang/String;
    return-object v0

    .line 26
    .end local v0           #UCode:Ljava/lang/String;
    .end local v1           #charBuffer:Ljava/nio/CharBuffer;
    .end local v2           #charset:Ljava/nio/charset/Charset;
    :sswitch_12
    sget-boolean v3, Lcom/infraware/office/evengine/EvCodeConversion;->$assertionsDisabled:Z

    if-nez v3, :cond_21

    const v3, 0xfde9

    if-ne p1, v3, :cond_21

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 28
    :cond_21
    :sswitch_21
    const-string v3, "windows-936"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 29
    .restart local v2       #charset:Ljava/nio/charset/Charset;
    goto :goto_9

    .line 31
    .end local v2           #charset:Ljava/nio/charset/Charset;
    :sswitch_28
    const-string v3, "windows-949"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 32
    .restart local v2       #charset:Ljava/nio/charset/Charset;
    goto :goto_9

    .line 23
    nop

    :sswitch_data_30
    .sparse-switch
        0x3a8 -> :sswitch_21
        0x3b5 -> :sswitch_28
        0xfde9 -> :sswitch_12
    .end sparse-switch
.end method

.method EncodeToAscii(ILjava/lang/String;[B)V
    .registers 8
    .parameter "nCodePage"
    .parameter "str"
    .parameter "buffer"

    .prologue
    .line 47
    sparse-switch p1, :sswitch_data_24

    .line 57
    const-string v2, "windows-949"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 60
    .local v1, charset:Ljava/nio/charset/Charset;
    :goto_9
    invoke-virtual {v1, p2}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, p3, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 62
    return-void

    .line 50
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    .end local v1           #charset:Ljava/nio/charset/Charset;
    :sswitch_16
    const-string v2, "windows-936"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 51
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    goto :goto_9

    .line 53
    .end local v1           #charset:Ljava/nio/charset/Charset;
    :sswitch_1d
    const-string v2, "windows-949"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 54
    .restart local v1       #charset:Ljava/nio/charset/Charset;
    goto :goto_9

    .line 47
    :sswitch_data_24
    .sparse-switch
        0x3a8 -> :sswitch_16
        0x3b5 -> :sswitch_1d
    .end sparse-switch
.end method
