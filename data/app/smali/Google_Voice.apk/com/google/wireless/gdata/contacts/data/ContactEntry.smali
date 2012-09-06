.class public Lcom/google/wireless/gdata/contacts/data/ContactEntry;
.super Lcom/google/wireless/gdata/data/Entry;
.source "ContactEntry.java"


# instance fields
.field private final emailAddresses:Ljava/util/Vector;

.field private final extendedProperties:Ljava/util/Vector;

.field private final groups:Ljava/util/Vector;

.field private final imAddresses:Ljava/util/Vector;

.field private linkEditPhotoHref:Ljava/lang/String;

.field private linkEditPhotoType:Ljava/lang/String;

.field private linkPhotoHref:Ljava/lang/String;

.field private linkPhotoType:Ljava/lang/String;

.field private final organizations:Ljava/util/Vector;

.field private final phoneNumbers:Ljava/util/Vector;

.field private final postalAddresses:Ljava/util/Vector;

.field private yomiName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/wireless/gdata/data/Entry;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    .line 32
    return-void
.end method


# virtual methods
.method public addEmailAddress(Lcom/google/wireless/gdata/contacts/data/EmailAddress;)V
    .registers 3
    .parameter "emailAddress"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public addExtendedProperty(Lcom/google/wireless/gdata/data/ExtendedProperty;)V
    .registers 3
    .parameter "extendedProperty"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public addGroup(Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public addImAddress(Lcom/google/wireless/gdata/contacts/data/ImAddress;)V
    .registers 3
    .parameter "imAddress"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public addOrganization(Lcom/google/wireless/gdata/contacts/data/Organization;)V
    .registers 3
    .parameter "organization"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public addPhoneNumber(Lcom/google/wireless/gdata/contacts/data/PhoneNumber;)V
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public addPostalAddress(Lcom/google/wireless/gdata/contacts/data/PostalAddress;)V
    .registers 3
    .parameter "postalAddress"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->clear()V

    .line 130
    iput-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoHref:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoType:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 135
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 136
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 137
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 138
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 139
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 140
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 141
    iput-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->yomiName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public getEmailAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    return-object v0
.end method

.method public getGroups()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinkEditPhotoHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkEditPhotoType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getYomiName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->yomiName:Ljava/lang/String;

    return-object v0
.end method

.method public setLinkEditPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "href"
    .parameter "type"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoHref:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setLinkPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "href"
    .parameter "type"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setYomiName(Ljava/lang/String;)V
    .registers 2
    .parameter "yomiName"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->yomiName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .registers 5
    .parameter "sb"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/google/wireless/gdata/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 146
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    const-string v1, "ContactEntry:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 149
    const-string v1, " linkPhotoHref:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_26
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 152
    const-string v1, " linkPhotoType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_3f
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoHref:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 155
    const-string v1, " linkEditPhotoHref:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_58
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 158
    const-string v1, " linkEditPhotoType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->linkEditPhotoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_71
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 161
    .local v0, iter:Ljava/util/Enumeration;
    :goto_77
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 162
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 164
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_77

    .line 166
    :cond_91
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 167
    :goto_97
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 168
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 170
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_97

    .line 172
    :cond_b1
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 173
    :goto_b7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 174
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 176
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b7

    .line 178
    :cond_d1
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 179
    :goto_d7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 180
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->toString(Ljava/lang/StringBuffer;)V

    .line 182
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d7

    .line 184
    :cond_f1
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 185
    :goto_f7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 186
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/Organization;->toString(Ljava/lang/StringBuffer;)V

    .line 188
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f7

    .line 190
    :cond_111
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 191
    :goto_117
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_131

    .line 192
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/data/ExtendedProperty;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->toString(Ljava/lang/StringBuffer;)V

    .line 194
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_117

    .line 196
    :cond_131
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 197
    :goto_137
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 198
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 200
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_137

    .line 202
    :cond_151
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->yomiName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16a

    .line 203
    const-string v1, " yomiName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->yomiName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    :cond_16a
    return-void
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 208
    invoke-super {p0}, Lcom/google/wireless/gdata/data/Entry;->validate()V

    .line 209
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, iter:Ljava/util/Enumeration;
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 210
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/EmailAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/EmailAddress;->validate()V

    goto :goto_9

    .line 212
    :cond_19
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/ImAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/ImAddress;->validate()V

    goto :goto_1f

    .line 215
    :cond_2f
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 216
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/PostalAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/PostalAddress;->validate()V

    goto :goto_35

    .line 218
    :cond_45
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 219
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/PhoneNumber;->validate()V

    goto :goto_4b

    .line 221
    :cond_5b
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_61
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 222
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/Organization;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/Organization;->validate()V

    goto :goto_61

    .line 224
    :cond_71
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 225
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/data/ExtendedProperty;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/data/ExtendedProperty;->validate()V

    goto :goto_77

    .line 227
    :cond_87
    iget-object v1, p0, Lcom/google/wireless/gdata/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 228
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata/contacts/data/GroupMembershipInfo;->validate()V

    goto :goto_8d

    .line 230
    :cond_9d
    return-void
.end method
