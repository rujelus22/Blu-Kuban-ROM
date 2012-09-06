.class public Lcom/google/wireless/gdata2/contacts/data/ContactEntry;
.super Lcom/google/wireless/gdata2/data/Entry;
.source "ContactEntry.java"


# static fields
.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final TYPE_PRIORITY_HIGH:B = 0x1t

.field public static final TYPE_PRIORITY_LOW:B = 0x3t

.field public static final TYPE_PRIORITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_CONFIDENTIAL:B = 0x1t

.field public static final TYPE_SENSITIVITY_NORMAL:B = 0x2t

.field public static final TYPE_SENSITIVITY_PERSONAL:B = 0x3t

.field public static final TYPE_SENSITIVITY_PRIVATE:B = 0x4t


# instance fields
.field private billingInformation:Ljava/lang/String;

.field private birthday:Ljava/lang/String;

.field private final calendarLinks:Ljava/util/Vector;

.field private directoryServer:Ljava/lang/String;

.field private final emailAddresses:Ljava/util/Vector;

.field private final events:Ljava/util/Vector;

.field private final extendedProperties:Ljava/util/Vector;

.field private final externalIds:Ljava/util/Vector;

.field private gender:Ljava/lang/String;

.field private final groups:Ljava/util/Vector;

.field private final hobbies:Ljava/util/Vector;

.field private final imAddresses:Ljava/util/Vector;

.field private initials:Ljava/lang/String;

.field private final jots:Ljava/util/Vector;

.field private final languages:Ljava/util/Vector;

.field private linkPhotoEtag:Ljava/lang/String;

.field private linkPhotoHref:Ljava/lang/String;

.field private linkPhotoType:Ljava/lang/String;

.field private maidenName:Ljava/lang/String;

.field private mileage:Ljava/lang/String;

.field private name:Lcom/google/wireless/gdata2/contacts/data/Name;

.field private nickname:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private final organizations:Ljava/util/Vector;

.field private final phoneNumbers:Ljava/util/Vector;

.field private final postalAddresses:Ljava/util/Vector;

.field private priority:B

.field private final relations:Ljava/util/Vector;

.field private sensitivity:B

.field private shortName:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private final userDefinedFields:Ljava/util/Vector;

.field private final webSites:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 71
    invoke-direct {p0}, Lcom/google/wireless/gdata2/data/Entry;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    .line 22
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    .line 24
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    .line 25
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    .line 57
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 63
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 72
    return-void
.end method


# virtual methods
.method public addCalendarLink(Lcom/google/wireless/gdata2/contacts/data/CalendarLink;)V
    .registers 3
    .parameter "calendarLink"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public addEmailAddress(Lcom/google/wireless/gdata2/contacts/data/EmailAddress;)V
    .registers 3
    .parameter "emailAddress"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 94
    return-void
.end method

.method public addEvent(Lcom/google/wireless/gdata2/contacts/data/Event;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public addExtendedProperty(Lcom/google/wireless/gdata2/data/ExtendedProperty;)V
    .registers 3
    .parameter "extendedProperty"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public addExternalId(Lcom/google/wireless/gdata2/contacts/data/ExternalId;)V
    .registers 3
    .parameter "externalId"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public addGroup(Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;)V
    .registers 3
    .parameter "group"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public addHobby(Ljava/lang/String;)V
    .registers 3
    .parameter "hobby"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public addImAddress(Lcom/google/wireless/gdata2/contacts/data/ImAddress;)V
    .registers 3
    .parameter "imAddress"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public addJot(Lcom/google/wireless/gdata2/contacts/data/Jot;)V
    .registers 3
    .parameter "jot"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public addLanguage(Lcom/google/wireless/gdata2/contacts/data/Language;)V
    .registers 3
    .parameter "language"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 232
    return-void
.end method

.method public addOrganization(Lcom/google/wireless/gdata2/contacts/data/Organization;)V
    .registers 3
    .parameter "organization"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public addPhoneNumber(Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;)V
    .registers 3
    .parameter "phoneNumber"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public addPostalAddress(Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;)V
    .registers 3
    .parameter "postalAddress"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public addRelation(Lcom/google/wireless/gdata2/contacts/data/Relation;)V
    .registers 3
    .parameter "relation"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public addUserDefinedField(Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;)V
    .registers 3
    .parameter "userDefinedField"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    return-void
.end method

.method public addWebSite(Lcom/google/wireless/gdata2/contacts/data/WebSite;)V
    .registers 3
    .parameter "webSite"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 274
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 479
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->clear()V

    .line 480
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 481
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 482
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 483
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 484
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 487
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 490
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 491
    iput-byte v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 492
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 497
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 498
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 499
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 500
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 501
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 502
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 503
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 504
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 505
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 506
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 507
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 508
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 509
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 510
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 511
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 512
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 514
    return-void
.end method

.method public getBillingInformation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarLinks()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    return-object v0
.end method

.method public getDirectoryServer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getEvents()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    return-object v0
.end method

.method public getExtendedProperties()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    return-object v0
.end method

.method public getExternalIds()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public getHobbies()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getJots()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    return-object v0
.end method

.method public getLinkPhotoETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoHref()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkPhotoType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    return-object v0
.end method

.method public getMaidenName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    return-object v0
.end method

.method public getMileage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/google/wireless/gdata2/contacts/data/Name;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganizations()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    return-object v0
.end method

.method public getPostalAddresses()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    return-object v0
.end method

.method public getPriority()B
    .registers 2

    .prologue
    .line 378
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    return v0
.end method

.method public getRelations()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    return-object v0
.end method

.method public getSensitivity()B
    .registers 2

    .prologue
    .line 393
    iget-byte v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    return v0
.end method

.method public getShortName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getUserDefinedFields()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    return-object v0
.end method

.method public getWebSites()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    return-object v0
.end method

.method public setBillingInformation(Ljava/lang/String;)V
    .registers 2
    .parameter "billingInformation"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    .line 472
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2
    .parameter "birthday"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setDirectoryServer(Ljava/lang/String;)V
    .registers 2
    .parameter "directoryServer"

    .prologue
    .line 287
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .parameter "gender"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setInitials(Ljava/lang/String;)V
    .registers 2
    .parameter "initials"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public setLinkPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "href"
    .parameter "type"
    .parameter "photoEtag"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setMaidenName(Ljava/lang/String;)V
    .registers 2
    .parameter "maidenName"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMileage(Ljava/lang/String;)V
    .registers 2
    .parameter "mileage"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setName(Lcom/google/wireless/gdata2/contacts/data/Name;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    .line 444
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2
    .parameter "nickname"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    .line 358
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .registers 2
    .parameter "occupation"

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public setPriority(B)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 385
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    .line 386
    return-void
.end method

.method public setSensitivity(B)V
    .registers 2
    .parameter "sensitiviy"

    .prologue
    .line 401
    iput-byte p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    .line 402
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .registers 2
    .parameter "shortName"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    .line 430
    return-void
.end method

.method protected toString(Ljava/lang/StringBuffer;)V
    .registers 5
    .parameter "sb"

    .prologue
    .line 517
    invoke-super {p0, p1}, Lcom/google/wireless/gdata2/data/Entry;->toString(Ljava/lang/StringBuffer;)V

    .line 518
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    const-string v1, "ContactEntry:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 520
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 521
    const-string v1, " linkPhotoHref:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoHref:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 523
    :cond_20
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 524
    const-string v1, " linkPhotoType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 526
    :cond_33
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 527
    const-string v1, " linkPhotoEtag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->linkPhotoEtag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_46
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 530
    const-string v1, " directoryServer:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->directoryServer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :cond_59
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 533
    const-string v1, " gender:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    :cond_6c
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 536
    const-string v1, " initials:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->initials:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    :cond_7f
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 539
    const-string v1, " maidenName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->maidenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    :cond_92
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    .line 542
    const-string v1, " mileage:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->mileage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    :cond_a5
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 545
    const-string v1, " nickname:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    :cond_b8
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 548
    const-string v1, " occupaton:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->occupation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 550
    :cond_cb
    const-string v1, " priority:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->priority:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 552
    const-string v1, " sensitivity:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->sensitivity:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 554
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f4

    .line 555
    const-string v1, " shortName:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    :cond_f4
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_107

    .line 558
    const-string v1, " subject:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    :cond_107
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11a

    .line 561
    const-string v1, " birthday:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    :cond_11a
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12d

    .line 564
    const-string v1, " billingInformation:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->billingInformation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :cond_12d
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    if-eqz v1, :cond_140

    .line 568
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->name:Lcom/google/wireless/gdata2/contacts/data/Name;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Name;->toString(Ljava/lang/StringBuffer;)V

    .line 569
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    :cond_140
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 572
    .local v0, iter:Ljava/util/Enumeration;
    :goto_146
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_160

    .line 573
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 574
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 575
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_146

    .line 577
    :cond_160
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 578
    :goto_166
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_180

    .line 579
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 581
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_166

    .line 583
    :cond_180
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 584
    :goto_186
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1a0

    .line 585
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 586
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->toString(Ljava/lang/StringBuffer;)V

    .line 587
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_186

    .line 589
    :cond_1a0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 590
    :goto_1a6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1c0

    .line 591
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 592
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->toString(Ljava/lang/StringBuffer;)V

    .line 593
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a6

    .line 595
    :cond_1c0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 596
    :goto_1c6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 597
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->toString(Ljava/lang/StringBuffer;)V

    .line 599
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1c6

    .line 601
    :cond_1e0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 602
    :goto_1e6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_200

    .line 603
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 604
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->toString(Ljava/lang/StringBuffer;)V

    .line 605
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1e6

    .line 607
    :cond_200
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 608
    :goto_206
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_220

    .line 609
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->toString(Ljava/lang/StringBuffer;)V

    .line 611
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_206

    .line 613
    :cond_220
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 614
    :goto_226
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_240

    .line 615
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->toString(Ljava/lang/StringBuffer;)V

    .line 617
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_226

    .line 619
    :cond_240
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 620
    :goto_246
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_260

    .line 621
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Event;->toString(Ljava/lang/StringBuffer;)V

    .line 623
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_246

    .line 625
    :cond_260
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 626
    :goto_266
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_280

    .line 627
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->toString(Ljava/lang/StringBuffer;)V

    .line 629
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_266

    .line 631
    :cond_280
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->hobbies:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 632
    :goto_286
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2a0

    .line 633
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 634
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_286

    .line 637
    :cond_2a0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->jots:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 638
    :goto_2a6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2c0

    .line 639
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 640
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Jot;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 641
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a6

    .line 643
    :cond_2c0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 644
    :goto_2c6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2e0

    .line 645
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Language;->toString(Ljava/lang/StringBuffer;)V

    .line 647
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c6

    .line 649
    :cond_2e0
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 650
    :goto_2e6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_300

    .line 651
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->toString(Ljava/lang/StringBuffer;)V

    .line 653
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2e6

    .line 655
    :cond_300
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 656
    :goto_306
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_320

    .line 657
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 658
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->toString(Ljava/lang/StringBuffer;)V

    .line 659
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_306

    .line 661
    :cond_320
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 662
    :goto_326
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_340

    .line 663
    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1, p1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->toString(Ljava/lang/StringBuffer;)V

    .line 665
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_326

    .line 667
    :cond_340
    return-void
.end method

.method public validate()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-super {p0}, Lcom/google/wireless/gdata2/data/Entry;->validate()V

    .line 671
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    if-eqz v1, :cond_39

    const-string v1, "female"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "male"

    iget-object v2, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 672
    new-instance v1, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v2, "invalid gender \"%s\", must be one of \"%s\" or \"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->gender:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "female"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "male"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_39
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->emailAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, iter:Ljava/util/Enumeration;
    :goto_3f
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 677
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/EmailAddress;->validate()V

    goto :goto_3f

    .line 679
    :cond_4f
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->imAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 680
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ImAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ImAddress;->validate()V

    goto :goto_55

    .line 682
    :cond_65
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->postalAddresses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 683
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/StructuredPostalAddress;->validate()V

    goto :goto_6b

    .line 685
    :cond_7b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->phoneNumbers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_81
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 686
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/PhoneNumber;->validate()V

    goto :goto_81

    .line 688
    :cond_91
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->organizations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 689
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Organization;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Organization;->validate()V

    goto :goto_97

    .line 691
    :cond_a7
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->extendedProperties:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_ad
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 692
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/data/ExtendedProperty;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/data/ExtendedProperty;->validate()V

    goto :goto_ad

    .line 694
    :cond_bd
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->groups:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_c3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 695
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/GroupMembershipInfo;->validate()V

    goto :goto_c3

    .line 698
    :cond_d3
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->calendarLinks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_d9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 699
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/CalendarLink;->validate()V

    goto :goto_d9

    .line 701
    :cond_e9
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->events:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_ef
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_ff

    .line 702
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Event;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Event;->validate()V

    goto :goto_ef

    .line 704
    :cond_ff
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->externalIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_105
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_115

    .line 705
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/ExternalId;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/ExternalId;->validate()V

    goto :goto_105

    .line 707
    :cond_115
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->languages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_11b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 708
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Language;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Language;->validate()V

    goto :goto_11b

    .line 710
    :cond_12b
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->relations:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_131
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_141

    .line 711
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/Relation;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/Relation;->validate()V

    goto :goto_131

    .line 713
    :cond_141
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->userDefinedFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_147
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_157

    .line 714
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/UserDefinedField;->validate()V

    goto :goto_147

    .line 716
    :cond_157
    iget-object v1, p0, Lcom/google/wireless/gdata2/contacts/data/ContactEntry;->webSites:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_15d
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 717
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/gdata2/contacts/data/WebSite;

    invoke-virtual {v1}, Lcom/google/wireless/gdata2/contacts/data/WebSite;->validate()V

    goto :goto_15d

    .line 719
    :cond_16d
    return-void
.end method
