.class public Lcom/google/wireless/gdata/contacts/data/ImAddress;
.super Lcom/google/wireless/gdata/contacts/data/ContactsElement;
.source "ImAddress.java"


# static fields
.field public static final PROTOCOL_AIM:B = 0x2t

.field public static final PROTOCOL_CUSTOM:B = 0x1t

.field public static final PROTOCOL_GOOGLE_TALK:B = 0x7t

.field public static final PROTOCOL_ICQ:B = 0x8t

.field public static final PROTOCOL_JABBER:B = 0x9t

.field public static final PROTOCOL_MSN:B = 0x3t

.field public static final PROTOCOL_NONE:B = 0xat

.field public static final PROTOCOL_QQ:B = 0x6t

.field public static final PROTOCOL_SKYPE:B = 0x5t

.field public static final PROTOCOL_YAHOO:B = 0x4t

.field public static final TYPE_HOME:B = 0x1t

.field public static final TYPE_OTHER:B = 0x3t

.field public static final TYPE_WORK:B = 0x2t


# instance fields
.field private address:Ljava/lang/String;

.field private protocolCustom:Ljava/lang/String;

.field private protocolPredefined:B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolCustom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolPredefined()B
    .registers 2

    .prologue
    .line 29
    iget-byte v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolPredefined:B

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "address"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setProtocolCustom(Ljava/lang/String;)V
    .registers 2
    .parameter "protocolCustom"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setProtocolPredefined(B)V
    .registers 2
    .parameter "protocolPredefined"

    .prologue
    .line 33
    iput-byte p1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolPredefined:B

    .line 34
    return-void
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 53
    const-string v0, "ImAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 55
    const-string v0, " protocolPredefined:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolPredefined:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 56
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v0, " protocolCustom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->protocolCustom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    :cond_22
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_31

    const-string v0, " address:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ImAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_31
    return-void
.end method
