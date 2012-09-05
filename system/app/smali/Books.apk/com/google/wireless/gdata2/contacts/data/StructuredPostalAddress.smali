.class public Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;
.super Lcom/google/wireless/gdata2/contacts/data/ContactsElement;
.source "StructuredPostalAddress.java"


# instance fields
.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private neighborhood:Ljava/lang/String;

.field private pobox:Ljava/lang/String;

.field private postcode:Ljava/lang/String;

.field private region:Ljava/lang/String;

.field private street:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;-><init>()V

    return-void
.end method


# virtual methods
.method public toString(Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 195
    const-string v0, "PostalAddress"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/contacts/data/ContactsElement;->toString(Ljava/lang/StringBuffer;)V

    .line 197
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    if-eqz v0, :cond_17

    const-string v0, " street:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_17
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    if-eqz v0, :cond_26

    const-string v0, " pobox:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->pobox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    :cond_26
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    if-eqz v0, :cond_35

    const-string v0, " neighborhood:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->neighborhood:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_35
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    if-eqz v0, :cond_44

    const-string v0, " city:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_44
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    if-eqz v0, :cond_53

    const-string v0, " region:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->region:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    :cond_53
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    if-eqz v0, :cond_62

    const-string v0, " postcode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->postcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :cond_62
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    if-eqz v0, :cond_71

    const-string v0, " country:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_71
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    if-eqz v0, :cond_80

    const-string v0, " formattedAddress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->formattedAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_80
    return-void
.end method
