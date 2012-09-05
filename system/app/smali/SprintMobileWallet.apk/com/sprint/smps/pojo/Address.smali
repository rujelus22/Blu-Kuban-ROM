.class public Lcom/sprint/smps/pojo/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private final addressKey:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private defaultAddress:Z

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stateName:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private zipcode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "lastName"
    .parameter "firstName"
    .parameter "street"
    .parameter "city"
    .parameter "zipcode"
    .parameter "state"
    .parameter "stateName"
    .parameter "addressKey"
    .parameter "defaultAddress"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->lastName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->firstName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->street:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->city:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->zipcode:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->state:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/sprint/smps/pojo/Address;->stateName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/smps/pojo/Address;->defaultAddress:Z

    .line 30
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->lastName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sprint/smps/pojo/Address;->firstName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/sprint/smps/pojo/Address;->street:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sprint/smps/pojo/Address;->city:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sprint/smps/pojo/Address;->zipcode:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/sprint/smps/pojo/Address;->state:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/sprint/smps/pojo/Address;->stateName:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/sprint/smps/pojo/Address;->addressKey:Ljava/lang/String;

    .line 38
    iput-boolean p9, p0, Lcom/sprint/smps/pojo/Address;->defaultAddress:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getAddressKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->addressKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->stateName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getZipcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sprint/smps/pojo/Address;->zipcode:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault(Z)V
    .registers 2
    .parameter "isDefaultAddress"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sprint/smps/pojo/Address;->defaultAddress:Z

    .line 90
    return-void
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/sprint/smps/pojo/Address;->defaultAddress:Z

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter "city"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->city:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2
    .parameter "firstName"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->firstName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2
    .parameter "lastName"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->lastName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->state:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .registers 2
    .parameter "stateName"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->stateName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .registers 2
    .parameter "street"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->street:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setZipcode(Ljava/lang/String;)V
    .registers 2
    .parameter "zipcode"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sprint/smps/pojo/Address;->zipcode:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/smps/pojo/Address;->firstName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/Address;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/Address;->street:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/Address;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/Address;->zipcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
