.class public Lorg/columba/ristretto/imap/ResponseTextCode;
.super Ljava/lang/Object;
.source "ResponseTextCode.java"


# static fields
.field public static final ALERT:I = 0x0

.field public static final BADCHARSET:I = 0x1

.field public static final CAPABILITY:I = 0x2

.field public static final PARSE:I = 0x3

.field public static final PERMANENTFLAGS:I = 0x4

.field public static final READ_ONLY:I = 0x5

.field public static final READ_WRITE:I = 0x6

.field public static final TRYCREATE:I = 0x7

.field public static final UIDNEXT:I = 0x9

.field public static final UIDVALIDITY:I = 0x8

.field public static final UNSEEN:I = 0xa

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field private longValue:I

.field private stringArrayValue:[Ljava/lang/String;

.field private stringValue:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntValue()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->longValue:I

    return v0
.end method

.method public getStringArrayValue()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->stringArrayValue:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->type:I

    return v0
.end method

.method public setIntValue(I)V
    .registers 2
    .parameter "intValue"

    .prologue
    .line 110
    iput p1, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->longValue:I

    .line 111
    return-void
.end method

.method public setStringArrayValue([Ljava/lang/String;)V
    .registers 2
    .parameter "stringArrayValue"

    .prologue
    .line 122
    iput-object p1, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->stringArrayValue:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 2
    .parameter "stringValue"

    .prologue
    .line 134
    iput-object p1, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->stringValue:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 146
    iput p1, p0, Lorg/columba/ristretto/imap/ResponseTextCode;->type:I

    .line 147
    return-void
.end method
