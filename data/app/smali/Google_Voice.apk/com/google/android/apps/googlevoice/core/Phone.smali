.class public Lcom/google/android/apps/googlevoice/core/Phone;
.super Ljava/lang/Object;
.source "Phone.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/core/Phone;-><init>(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)V
    .registers 3
    .parameter "apiPhone"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "apiPhone"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;->newBuilder(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 27
    return-void
.end method

.method public static createPhoneArray([Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)[Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 5
    .parameter "apiForwardingPhones"

    .prologue
    .line 158
    array-length v2, p0

    new-array v1, v2, [Lcom/google/android/apps/googlevoice/core/Phone;

    .line 159
    .local v1, phones:[Lcom/google/android/apps/googlevoice/core/Phone;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 160
    new-instance v2, Lcom/google/android/apps/googlevoice/core/Phone;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lcom/google/android/apps/googlevoice/core/Phone;-><init>(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)V

    aput-object v2, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 162
    :cond_13
    return-object v1
.end method


# virtual methods
.method public clone()Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/apps/googlevoice/core/Phone;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/core/Phone;-><init>(Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Phone;->clone()Lcom/google/android/apps/googlevoice/core/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasNumberFormatted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getNumberFormatted()Ljava/lang/String;

    move-result-object v0

    .line 40
    :goto_e
    return-object v0

    .line 37
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasNumber()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 40
    :cond_22
    const-string v0, ""

    goto :goto_e
.end method

.method public getDomesticCallInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getDomesticCallsInterceptionEnabled()Z

    move-result v0

    return v0
.end method

.method public getFormattedNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getNumberFormatted()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInternationalCallInterceptionEnabled()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getInternationalCallsInterceptionEnabled()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getPolicy()I

    move-result v0

    return v0
.end method

.method public getSmsEnabled()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getSmsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    .registers 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->hasType()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 70
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->valueOf(I)Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    move-result-object v0

    .line 71
    .local v0, type:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    if-eqz v0, :cond_15

    .line 75
    .end local v0           #type:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;
    :goto_14
    return-object v0

    :cond_15
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    goto :goto_14
.end method

.method public getVoicemailDiversionSetupEnabled()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->getVoicemailDiversionSetupEnabled()Z

    move-result v0

    return v0
.end method

.method public isPhysicalPhone()Z
    .registers 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/core/Phone;->getType()Lcom/google/grandcentral/api2/Constants$Forwarding$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->getNumber()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 153
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 150
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 145
    nop

    :sswitch_data_10
    .sparse-switch
        0x4 -> :sswitch_d
        0x7 -> :sswitch_d
        0x9 -> :sswitch_d
        0x63 -> :sswitch_d
    .end sparse-switch
.end method

.method public setDomesticCallInterceptionEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setDomesticCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 119
    return-void
.end method

.method public setFormattedNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3
    .parameter "formattedNumber"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setNumberFormatted(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 80
    return-object p0
.end method

.method public setId(Ljava/lang/Integer;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 4
    .parameter "id"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setId(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 85
    return-object p0
.end method

.method public setInternationalCallInterceptionEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setInternationalCallsInterceptionEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3
    .parameter "name"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 90
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 3
    .parameter "number"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0, p1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setNumber(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 95
    return-object p0
.end method

.method public setPhoneType(Lcom/google/grandcentral/api2/Constants$Forwarding$Type;)V
    .registers 4
    .parameter "type"

    .prologue
    .line 109
    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/google/android/apps/common/base/Preconditions;->checkArgumentIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Constants$Forwarding$Type;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setType(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 111
    return-void
.end method

.method public setPolicy(Ljava/lang/Integer;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 4
    .parameter "policy"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setPolicy(I)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 100
    return-object p0
.end method

.method public setSmsEnabled(Ljava/lang/Boolean;)Lcom/google/android/apps/googlevoice/core/Phone;
    .registers 4
    .parameter "smsEnabled"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->setSmsEnabled(Z)Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    .line 105
    return-object p0
.end method

.method public toApiForwardingPhone()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/core/Phone;->apiPhoneBuilder:Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiForwardingPhone;

    move-result-object v0

    return-object v0
.end method
