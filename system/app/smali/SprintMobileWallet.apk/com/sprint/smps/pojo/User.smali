.class public Lcom/sprint/smps/pojo/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private city:Ljava/lang/String;

.field private emailAddress:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stateName:Ljava/lang/String;

.field private street1:Ljava/lang/String;

.field private final userKey:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "userKey"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street1"
    .parameter "city"
    .parameter "state"
    .parameter "stateName"
    .parameter "zip"
    .parameter "emailAddress"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->userKey:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/sprint/smps/pojo/User;->firstName:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/sprint/smps/pojo/User;->lastName:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/sprint/smps/pojo/User;->street1:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/sprint/smps/pojo/User;->city:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/sprint/smps/pojo/User;->state:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/sprint/smps/pojo/User;->stateName:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/sprint/smps/pojo/User;->zip:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lcom/sprint/smps/pojo/User;->emailAddress:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->stateName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->street1:Ljava/lang/String;

    return-object v0
.end method

.method public getUserKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->userKey:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprint/smps/pojo/User;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter "city"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->city:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddress"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->emailAddress:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2
    .parameter "firstName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->firstName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2
    .parameter "lastName"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->lastName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->state:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .registers 2
    .parameter "stateName"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->stateName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setStreet1(Ljava/lang/String;)V
    .registers 2
    .parameter "street1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->street1:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .registers 2
    .parameter "zip"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sprint/smps/pojo/User;->zip:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->userKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->street1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->stateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/User;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
