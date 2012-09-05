.class public Lcom/samsung/swift/service/phonebook/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# instance fields
.field private peer:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 106
    invoke-direct {p0}, Lcom/samsung/swift/service/phonebook/Contact;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/swift/service/phonebook/Contact;->peer:J

    .line 107
    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "peer"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->inc()V

    .line 100
    iput-wide p1, p0, Lcom/samsung/swift/service/phonebook/Contact;->peer:J

    .line 101
    return-void
.end method

.method private native create()J
.end method

.method private native destroy(J)V
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/samsung/swift/service/phonebook/Contact;->peer:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/swift/service/phonebook/Contact;->destroy(J)V

    .line 119
    sget-object v0, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->dec()V

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    return-void
.end method

.method public native getAccount()Lcom/samsung/swift/service/phonebook/Account;
.end method

.method public native getCity(I)Ljava/lang/String;
.end method

.method public native getCountry(I)Ljava/lang/String;
.end method

.method public native getDefaultNumber()Ljava/lang/String;
.end method

.method public native getDisplayName()Ljava/lang/String;
.end method

.method public native getEmail(I)Ljava/lang/String;
.end method

.method public native getFavourite()Z
.end method

.method public native getFirstName()Ljava/lang/String;
.end method

.method public native getId()J
.end method

.method public native getJobTitle()Ljava/lang/String;
.end method

.method public native getLastName()Ljava/lang/String;
.end method

.method public native getLogo()Lcom/samsung/swift/util/Resource;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getNickName()Ljava/lang/String;
.end method

.method public native getNotes()Ljava/lang/String;
.end method

.method public native getNumber(I)Ljava/lang/String;
.end method

.method public native getOrganisation()Ljava/lang/String;
.end method

.method public native getPostCode(I)Ljava/lang/String;
.end method

.method public native getPostalAddress(I)Ljava/lang/String;
.end method

.method public native getState(I)Ljava/lang/String;
.end method

.method public native getStreet(I)Ljava/lang/String;
.end method

.method public native getSuffix()Ljava/lang/String;
.end method

.method public native getTitle()Ljava/lang/String;
.end method

.method public native setAccount(Lcom/samsung/swift/service/phonebook/Account;)V
.end method

.method public native setDefaultNumber(Ljava/lang/String;)V
.end method

.method public native setDisplayName(Ljava/lang/String;)V
.end method

.method public native setEmail(Ljava/lang/String;I)V
.end method

.method public native setFavourite(Z)V
.end method

.method public native setFirstName(Ljava/lang/String;)V
.end method

.method public native setId(J)V
.end method

.method public native setJobTitle(Ljava/lang/String;)V
.end method

.method public native setLastName(Ljava/lang/String;)V
.end method

.method public native setLogo(Lcom/samsung/swift/util/Resource;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setNickName(Ljava/lang/String;)V
.end method

.method public native setNotes(Ljava/lang/String;)V
.end method

.method public native setNumber(Ljava/lang/String;I)V
.end method

.method public native setOrganisation(Ljava/lang/String;)V
.end method

.method public native setPostalAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native setSuffix(Ljava/lang/String;)V
.end method

.method public native setTitle(Ljava/lang/String;)V
.end method
