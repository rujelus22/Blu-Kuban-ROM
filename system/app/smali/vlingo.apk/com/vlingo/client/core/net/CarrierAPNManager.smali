.class public Lcom/vlingo/client/core/net/CarrierAPNManager;
.super Ljava/lang/Object;
.source "CarrierAPNManager.java"


# instance fields
.field private carrierAPNTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/core/net/CarrierAPNManager;->carrierAPNTable:Ljava/util/Hashtable;

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/net/CarrierAPNManager;->carrierAPNTable:Ljava/util/Hashtable;

    .line 21
    const-string v0, "AT&T"

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ";apn=wap.cingular;tunnelauthusername=WAP@CINGULARGPRS.COM;tunnelauthpassword=CINGULAR1"

    aput-object v2, v1, v3

    const-string v2, ";apn=proxy"

    aput-object v2, v1, v4

    const-string v2, ";apn=public"

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 25
    const-string v0, "Cellular_One_DCS"

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, ";apn=cellular1wap"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    const-string v0, "Cingular"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ";apn=wap.cingular;tunnelauthusername=WAP@CINGULARGPRS.COM;tunnelauthpassword=CINGULAR1"

    aput-object v2, v1, v3

    const-string v2, ";apn=isp.cingular;tunnelauthusername=ISPDA@CINGULARGPRS.COM;tunnelauthpassword=CINGULAR1"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 32
    const-string v0, "T-Mobile"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ";apn=epc.tmobile.com"

    aput-object v2, v1, v3

    const-string v2, ";apn=wap.voicestream.com"

    aput-object v2, v1, v4

    const-string v2, ";apn=internet2.voicestream.com"

    aput-object v2, v1, v5

    const-string v2, ";apn=internet3.voicestream.com"

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 41
    const-string v0, "Rogers_Wireless"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ";apn=internet.com"

    aput-object v2, v1, v3

    const-string v2, ";apn=blackberry.net"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 47
    const-string v0, "Orange"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ";apn=orangeinternet"

    aput-object v2, v1, v3

    const-string v2, ";apn=orangewap"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 48
    const-string v0, "T-Mobile_UK"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ";apn=blackberry.net"

    aput-object v2, v1, v3

    const-string v2, ";apn=general.t-mobile.uk"

    aput-object v2, v1, v4

    const-string v2, ";apn=general.t-mobile.uk;tunnelauthusername=user;tunnelauthpassword=wap"

    aput-object v2, v1, v5

    const-string v2, ";apn=general.t-mobile.uk;tunnelauthusername=user;tunnelauthpassword=mms"

    aput-object v2, v1, v6

    const-string v2, ";apn=general.t-mobile.uk;tunnelauthusername=Username;tunnelauthpassword=one2one"

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const-string v0, "O2_-_UK"

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, ";apn=mobile.o2.co.uk;tunnelauthusername=mobileweb;tunnelauthpassword=password"

    aput-object v2, v1, v3

    const-string v2, ";apn=wap.o2.co.uk;tunnelauthusername=o2wap;tunnelauthpassword=password"

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    const-string v0, "vodafone_UK"

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, ";apn=internet;tunnelauthusername=web;tunnelauthpassword=web"

    aput-object v2, v1, v3

    const-string v2, ";apn=pp.vodafone.co.uk;tunnelauthusername=web;tunnelauthpassword=web"

    aput-object v2, v1, v4

    const-string v2, ";apn=wap.vodafone.co.uk;tunnelauthusername=wap;tunnelauthpassword=wap"

    aput-object v2, v1, v5

    const-string v2, ";apn=wap.vodafone.co.uk;tunnelauthusername=wap;tunnelauthpassword=wap"

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/core/net/CarrierAPNManager;->add(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected add(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "carrier"
    .parameter "apns"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vlingo/client/core/net/CarrierAPNManager;->carrierAPNTable:Ljava/util/Hashtable;

    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public getAPNsForCarrier(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "networkName"

    .prologue
    const/4 v3, 0x0

    .line 100
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 101
    :cond_9
    new-array v0, v3, [Ljava/lang/String;

    .line 108
    :cond_b
    :goto_b
    return-object v0

    .line 103
    :cond_c
    const/16 v1, 0x20

    const/16 v2, 0x5f

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/vlingo/client/core/net/CarrierAPNManager;->carrierAPNTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 105
    .local v0, apns:[Ljava/lang/String;
    if-nez v0, :cond_b

    .line 106
    new-array v0, v3, [Ljava/lang/String;

    goto :goto_b
.end method
