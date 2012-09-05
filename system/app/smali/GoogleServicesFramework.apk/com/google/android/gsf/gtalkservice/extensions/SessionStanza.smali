.class public Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;
.super Lorg/jivesoftware/smack/packet/IQ;
.source "SessionStanza.java"


# instance fields
.field private mRawStanza:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/IQ;-><init>()V

    .line 43
    return-void
.end method

.method private validateRawXml(Ljava/lang/String;)Z
    .registers 3
    .parameter "stanza"

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->mRawStanza:Ljava/lang/String;

    return-object v0
.end method

.method protected getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 65
    invoke-super {p0}, Lorg/jivesoftware/smack/packet/IQ;->getExtensionProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setSessionRawXml(Ljava/lang/String;)V
    .registers 3
    .parameter "stanza"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->validateRawXml(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanza;->mRawStanza:Ljava/lang/String;

    .line 49
    :cond_8
    return-void
.end method
