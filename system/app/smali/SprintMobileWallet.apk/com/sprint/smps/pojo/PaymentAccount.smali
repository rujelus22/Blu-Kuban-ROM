.class public Lcom/sprint/smps/pojo/PaymentAccount;
.super Ljava/lang/Object;
.source "PaymentAccount.java"


# instance fields
.field private accountNumber:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private active:Z

.field private cardAssociation:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private defaultPaymentType:Z

.field private expiryMonth:Ljava/lang/String;

.field private expiryYear:Ljava/lang/String;

.field private externalRef1:Ljava/lang/String;

.field private externalRef2:Ljava/lang/String;

.field private maskedAccountNumber:Ljava/lang/String;

.field private nameOnAccount:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private paKey:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private stateAbbr:Ljava/lang/String;

.field private street:Ljava/lang/String;

.field private truncatedAccountNumber:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 22
    .parameter "accountNumber"
    .parameter "accountType"
    .parameter "active"
    .parameter "cardAssociation"
    .parameter "expiryMonth"
    .parameter "expiryYear"
    .parameter "externalRef1"
    .parameter "externalRef2"
    .parameter "maskedAccountNumber"
    .parameter "nameOnAccount"
    .parameter "nickName"
    .parameter "paKey"
    .parameter "truncatedAccountNumber"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "stateAbbr"
    .parameter "zip"
    .parameter "defaultPayment"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountNumber:Ljava/lang/String;

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountType:Ljava/lang/String;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->active:Z

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->cardAssociation:Ljava/lang/String;

    .line 25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryMonth:Ljava/lang/String;

    .line 26
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryYear:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef1:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef2:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->maskedAccountNumber:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nameOnAccount:Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nickName:Ljava/lang/String;

    .line 32
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->paKey:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->truncatedAccountNumber:Ljava/lang/String;

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->street:Ljava/lang/String;

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->city:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->state:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->stateAbbr:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->zip:Ljava/lang/String;

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->defaultPaymentType:Z

    .line 49
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountNumber:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountType:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/sprint/smps/pojo/PaymentAccount;->active:Z

    .line 52
    iput-object p4, p0, Lcom/sprint/smps/pojo/PaymentAccount;->cardAssociation:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryMonth:Ljava/lang/String;

    .line 54
    iput-object p6, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryYear:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef1:Ljava/lang/String;

    .line 56
    iput-object p8, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef2:Ljava/lang/String;

    .line 57
    iput-object p9, p0, Lcom/sprint/smps/pojo/PaymentAccount;->maskedAccountNumber:Ljava/lang/String;

    .line 58
    iput-object p10, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nameOnAccount:Ljava/lang/String;

    .line 59
    iput-object p11, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nickName:Ljava/lang/String;

    .line 60
    iput-object p12, p0, Lcom/sprint/smps/pojo/PaymentAccount;->paKey:Ljava/lang/String;

    .line 61
    iput-object p13, p0, Lcom/sprint/smps/pojo/PaymentAccount;->truncatedAccountNumber:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->street:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->city:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->state:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->stateAbbr:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->zip:Ljava/lang/String;

    .line 67
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->defaultPaymentType:Z

    .line 68
    return-void
.end method


# virtual methods
.method public getAccountNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getCardAssociation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->cardAssociation:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryMonth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryYear()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryYear:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalRef1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef1:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalRef2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef2:Ljava/lang/String;

    return-object v0
.end method

.method public getMaskedAccountNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->maskedAccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nameOnAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->paKey:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getStateAbbr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->stateAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->street:Ljava/lang/String;

    return-object v0
.end method

.method public getTruncatedAccountNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->truncatedAccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->active:Z

    return v0
.end method

.method public isDefaultPayment(Z)V
    .registers 2
    .parameter "isDefaultPayment"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->defaultPaymentType:Z

    .line 176
    return-void
.end method

.method public isDefaultPayment()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sprint/smps/pojo/PaymentAccount;->defaultPaymentType:Z

    return v0
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "accountNumber"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountNumber:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .registers 2
    .parameter "accountType"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->accountType:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setActive(Z)V
    .registers 2
    .parameter "active"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->active:Z

    .line 86
    return-void
.end method

.method public setCardAssociation(Ljava/lang/String;)V
    .registers 2
    .parameter "cardAssociation"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->cardAssociation:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .parameter "city"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->city:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setExpiryMonth(Ljava/lang/String;)V
    .registers 2
    .parameter "expiryMonth"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryMonth:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setExpiryYear(Ljava/lang/String;)V
    .registers 2
    .parameter "expiryYear"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->expiryYear:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setExternalRef1(Ljava/lang/String;)V
    .registers 2
    .parameter "externalRef1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef1:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setExternalRef2(Ljava/lang/String;)V
    .registers 2
    .parameter "externalRef2"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->externalRef2:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setMaskedAccountNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "maskedAccountNumber"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->maskedAccountNumber:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setNameOnAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "nameOnAccount"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nameOnAccount:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .registers 2
    .parameter "nickName"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nickName:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->state:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setStateAbbr(Ljava/lang/String;)V
    .registers 2
    .parameter "stateAbbr"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->stateAbbr:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .registers 2
    .parameter "street"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->street:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTruncatedAccountNumber(Ljava/lang/String;)V
    .registers 2
    .parameter "truncatedAccountNumber"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->truncatedAccountNumber:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .registers 2
    .parameter "zip"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->zip:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->nickName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/PaymentAccount;->truncatedAccountNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
