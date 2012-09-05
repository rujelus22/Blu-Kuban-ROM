.class public Lcom/samsung/upnp/Device;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Lcom/samsung/http/HTTPReceivedListener;
.implements Lcom/samsung/http/HTTPRequestListener;
.implements Lcom/samsung/upnp/device/SearchListener;


# instance fields
.field private descriptionCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private devUUID:Ljava/lang/String;

.field private deviceNode:Lcom/samsung/xml/Node;

.field private rootNode:Lcom/samsung/xml/Node;

.field private wirelessMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 215
    invoke-static {}, Lcom/samsung/upnp/UPnP;->initialize()V

    .line 158
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0, v0, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 234
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V
    .registers 4
    .parameter "root"
    .parameter "device"

    .prologue
    .line 223
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    .line 225
    iput-object p1, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    .line 226
    iput-object p2, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    .line 227
    invoke-static {}, Lcom/samsung/upnp/UPnP;->createUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->setUUID(Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setWirelessMode(Z)V

    .line 229
    return-void
.end method

.method private clearDescriptionCache()V
    .registers 3

    .prologue
    .line 1658
    iget-object v1, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 1659
    :try_start_3
    iget-object v0, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1658
    monitor-exit v1

    .line 1661
    return-void

    .line 1658
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private deviceActionControlRecieved(Lcom/samsung/upnp/control/ActionRequest;Lcom/samsung/upnp/Service;)V
    .registers 8
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1807
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 1823
    :cond_4
    :goto_4
    return-void

    .line 1809
    :cond_5
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1810
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->print()V

    .line 1811
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->getActionName()Ljava/lang/String;

    move-result-object v2

    .line 1812
    .local v2, actionName:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/Service;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1813
    .local v0, action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_1c

    .line 1814
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4

    .line 1818
    :cond_1c
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v1

    .line 1819
    .local v1, actionArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ActionRequest;->getArgumentList()Lcom/samsung/upnp/ArgumentList;

    move-result-object v3

    .line 1820
    .local v3, reqArgList:Lcom/samsung/upnp/ArgumentList;
    invoke-virtual {v1, v3}, Lcom/samsung/upnp/ArgumentList;->set(Lcom/samsung/upnp/ArgumentList;)V

    .line 1821
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Action;->performActionListener(Lcom/samsung/upnp/control/ActionRequest;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1822
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4
.end method

.method private deviceControlRequestRecieved(Lcom/samsung/upnp/control/ControlRequest;Lcom/samsung/upnp/Service;)V
    .registers 4
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1788
    if-nez p1, :cond_3

    .line 1794
    :goto_2
    return-void

    .line 1790
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/upnp/control/ControlRequest;->isQueryControl()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1791
    new-instance v0, Lcom/samsung/upnp/control/QueryRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/QueryRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/upnp/Device;->deviceQueryControlRecieved(Lcom/samsung/upnp/control/QueryRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2

    .line 1793
    :cond_12
    new-instance v0, Lcom/samsung/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/ActionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    invoke-direct {p0, v0, p2}, Lcom/samsung/upnp/Device;->deviceActionControlRecieved(Lcom/samsung/upnp/control/ActionRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2
.end method

.method private deviceEventNewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x19c

    .line 1915
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 1969
    :cond_6
    :goto_6
    return-void

    .line 1917
    :cond_7
    const-string v0, "Device"

    const-string v1, "Subscription : deviceEventNewSubscriptionRecieved"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string v0, "NT"

    invoke-virtual {p2, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1919
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getCallback()Ljava/lang/String;

    move-result-object v1

    .line 1921
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_28

    .line 1922
    if-eqz v1, :cond_28

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2e

    .line 1923
    :cond_28
    const/16 v0, 0x190

    invoke-direct {p0, p2, v0}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_6

    .line 1927
    :cond_2e
    const-string v2, "upnp:event"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1928
    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_6

    .line 1933
    :cond_3a
    :try_start_3a
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_96

    .line 1940
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v2

    .line 1941
    invoke-static {}, Lcom/samsung/upnp/event/Subscription;->createSID()Ljava/lang/String;

    move-result-object v0

    .line 1943
    new-instance v4, Lcom/samsung/upnp/event/Subscriber;

    invoke-direct {v4}, Lcom/samsung/upnp/event/Subscriber;-><init>()V

    .line 1944
    invoke-virtual {v4, v1}, Lcom/samsung/upnp/event/Subscriber;->setDeliveryURL(Ljava/lang/String;)V

    .line 1945
    invoke-virtual {v4, v2, v3}, Lcom/samsung/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1946
    invoke-virtual {v4, v0}, Lcom/samsung/upnp/event/Subscriber;->setSID(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Service;->addSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 1949
    new-instance v1, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1950
    const/16 v5, 0xc8

    invoke-virtual {v1, v5}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1951
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1952
    invoke-virtual {v1, v2, v3}, Lcom/samsung/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1953
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1954
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1955
    :cond_71
    invoke-virtual {p2, v1}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 1957
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->isKeepAliveConnection()Z

    move-result v0

    if-nez v0, :cond_81

    .line 1958
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSocket()Lcom/samsung/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/http/HTTPSocket;->close()Z

    .line 1964
    :cond_81
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1965
    invoke-virtual {v1}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    .line 1966
    :cond_8a
    const-string v0, "Device"

    const-string v1, "Subscription : Notify To Subscriber"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p1, v4}, Lcom/samsung/upnp/Service;->notifyAllStateVariablesToSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    goto/16 :goto_6

    .line 1935
    :catch_96
    move-exception v0

    .line 1936
    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto/16 :goto_6
.end method

.method private deviceEventRenewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 9
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 1974
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1996
    :cond_4
    :goto_4
    return-void

    .line 1976
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v1

    .line 1979
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v1, :cond_15

    .line 1980
    const/16 v5, 0x190

    invoke-direct {p0, p2, v5}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_4

    .line 1984
    :cond_15
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getTimeout()J

    move-result-wide v3

    .line 1985
    .local v3, timeOut:J
    invoke-virtual {v1, v3, v4}, Lcom/samsung/upnp/event/Subscriber;->setTimeOut(J)V

    .line 1986
    invoke-virtual {v1}, Lcom/samsung/upnp/event/Subscriber;->renew()V

    .line 1988
    new-instance v2, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1989
    .local v2, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 1990
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/event/SubscriptionResponse;->setSID(Ljava/lang/String;)V

    .line 1991
    invoke-virtual {v2, v3, v4}, Lcom/samsung/upnp/event/SubscriptionResponse;->setTimeout(J)V

    .line 1992
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 1994
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1995
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    goto :goto_4
.end method

.method private deviceEventSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x19c

    const/16 v3, 0x190

    .line 1857
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1858
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v0

    .line 1859
    if-nez v0, :cond_12

    .line 1860
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->returnBadRequest()Z

    .line 1903
    :goto_11
    return-void

    .line 1863
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1865
    const-string v0, "SID"

    invoke-virtual {p1, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->getHeader(Ljava/lang/String;)Lcom/samsung/http/HTTPHeader;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1866
    invoke-direct {p0, p1, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1868
    :cond_2a
    invoke-direct {p0, p1, v4}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1872
    :cond_2e
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasNT()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->getNT()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upnp:event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1873
    invoke-direct {p0, p1, v4}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11

    .line 1878
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1879
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventUnsubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1884
    :cond_4e
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1885
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventNewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1897
    :cond_58
    invoke-virtual {p1}, Lcom/samsung/upnp/event/SubscriptionRequest;->hasSID()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1898
    invoke-direct {p0, v0, p1}, Lcom/samsung/upnp/Device;->deviceEventRenewSubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_11

    .line 1902
    :cond_62
    invoke-direct {p0, p1, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_11
.end method

.method private deviceEventUnsubscriptionRecieved(Lcom/samsung/upnp/Service;Lcom/samsung/upnp/event/SubscriptionRequest;)V
    .registers 7
    .parameter "service"
    .parameter "subReq"

    .prologue
    .line 2000
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 2022
    :cond_4
    :goto_4
    return-void

    .line 2002
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/upnp/event/SubscriptionRequest;->getSID()Ljava/lang/String;

    move-result-object v0

    .line 2003
    .local v0, sid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/Service;->getSubscriber(Ljava/lang/String;)Lcom/samsung/upnp/event/Subscriber;

    move-result-object v1

    .line 2005
    .local v1, sub:Lcom/samsung/upnp/event/Subscriber;
    if-nez v1, :cond_15

    .line 2006
    const/16 v3, 0x19c

    invoke-direct {p0, p2, v3}, Lcom/samsung/upnp/Device;->upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V

    goto :goto_4

    .line 2011
    :cond_15
    monitor-enter p0

    .line 2012
    :try_start_16
    invoke-virtual {p1, v1}, Lcom/samsung/upnp/Service;->removeSubscriber(Lcom/samsung/upnp/event/Subscriber;)V

    .line 2011
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_31

    .line 2016
    new-instance v2, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 2017
    .local v2, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/event/SubscriptionResponse;->setStatusCode(I)V

    .line 2018
    invoke-virtual {p2, v2}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    .line 2020
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2021
    invoke-virtual {v2}, Lcom/samsung/upnp/event/SubscriptionResponse;->print()V

    goto :goto_4

    .line 2011
    .end local v2           #subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v3
.end method

.method private deviceQueryControlRecieved(Lcom/samsung/upnp/control/QueryRequest;Lcom/samsung/upnp/Service;)V
    .registers 6
    .parameter "ctlReq"
    .parameter "service"

    .prologue
    .line 1827
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 1839
    :cond_4
    :goto_4
    return-void

    .line 1829
    :cond_5
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1830
    invoke-virtual {p1}, Lcom/samsung/upnp/control/QueryRequest;->print()V

    .line 1831
    :cond_e
    invoke-virtual {p1}, Lcom/samsung/upnp/control/QueryRequest;->getVarName()Ljava/lang/String;

    move-result-object v1

    .line 1832
    .local v1, varName:Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/samsung/upnp/Service;->hasStateVariable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1833
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4

    .line 1836
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    .line 1837
    .local v0, stateVar:Lcom/samsung/upnp/StateVariable;
    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/StateVariable;->performQueryListener(Lcom/samsung/upnp/control/QueryRequest;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1838
    :cond_28
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V

    goto :goto_4
.end method

.method private getAdvertiser()Lcom/samsung/upnp/device/Advertiser;
    .registers 2

    .prologue
    .line 2045
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getAdvertiser()Lcom/samsung/upnp/device/Advertiser;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getDescriptionData(Ljava/lang/String;)[B
    .registers 5
    .parameter

    .prologue
    .line 1643
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 1644
    if-nez v0, :cond_c

    .line 1645
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_51

    .line 1653
    :goto_a
    monitor-exit p0

    return-object v0

    .line 1648
    :cond_c
    :try_start_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1649
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<?xml version=\"1.0\"?>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1653
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catchall {:try_start_c .. :try_end_4f} :catchall_51

    move-result-object v0

    goto :goto_a

    .line 1643
    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDescriptionURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceData()Lcom/samsung/upnp/xml/DeviceData;
    .registers 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 376
    .local v0, node:Lcom/samsung/xml/Node;
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/upnp/xml/DeviceData;

    .line 377
    .local v1, userData:Lcom/samsung/upnp/xml/DeviceData;
    if-nez v1, :cond_17

    .line 378
    new-instance v1, Lcom/samsung/upnp/xml/DeviceData;

    .end local v1           #userData:Lcom/samsung/upnp/xml/DeviceData;
    invoke-direct {v1}, Lcom/samsung/upnp/xml/DeviceData;-><init>()V

    .line 379
    .restart local v1       #userData:Lcom/samsung/upnp/xml/DeviceData;
    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->setUserData(Ljava/lang/Object;)V

    .line 380
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/xml/DeviceData;->setNode(Lcom/samsung/xml/Node;)V

    .line 382
    :cond_17
    return-object v1
.end method

.method private getHTTPServerList()Lcom/samsung/http/HTTPServerList;
    .registers 2

    .prologue
    .line 2030
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v0

    return-object v0
.end method

.method private getNotifyDeviceNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1227
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1228
    :goto_a
    return-object v0

    :cond_b
    const-string v0, "upnp:rootdevice"

    goto :goto_a
.end method

.method private getSSDPSearchSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;
    .registers 2

    .prologue
    .line 2035
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getSSDPSearchSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    return-object v0
.end method

.method private getUUID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/upnp/Device;->devUUID:Ljava/lang/String;

    return-object v0
.end method

.method private httpGetRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 1698
    if-nez p1, :cond_3

    .line 1722
    :goto_2
    return-void

    .line 1700
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 1702
    if-nez v0, :cond_d

    .line 1703
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnNotFoundRequest()Z

    goto :goto_2

    .line 1707
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-direct {p0, v1, v0}, Lcom/samsung/upnp/Device;->requestDescriptionData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 1711
    if-nez v1, :cond_1b

    .line 1712
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnNotFoundRequest()Z

    goto :goto_2

    .line 1716
    :cond_1b
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v2

    .line 1717
    invoke-static {v0}, Lcom/samsung/util/FileUtil;->isXMLFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1718
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setContentType(Ljava/lang/String;)V

    .line 1719
    :cond_2a
    const/16 v0, 0xc8

    invoke-virtual {v2, v0}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 1720
    invoke-virtual {v2, v1}, Lcom/samsung/http/HTTPResponse;->setContent([B)V

    .line 1721
    invoke-virtual {p1, v2}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private httpHostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 1618
    if-nez p1, :cond_3

    .line 1632
    :goto_2
    return-void

    .line 1620
    :cond_3
    invoke-static {p1}, Lcom/samsung/http/HTTPResponse;->buildHTTPResponse(Lcom/samsung/http/HTTPRequest;)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 1621
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    .line 1622
    if-eqz v1, :cond_1a

    .line 1623
    const-string v2, "contentFeatures.dlna.org"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1624
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/samsung/http/HTTPResponse;->setStatusCode(I)V

    .line 1627
    :cond_1a
    const-string v1, "Device_Header"

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const-string v1, "Device_Header"

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getHeaderString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private httpPostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 3
    .parameter "httpReq"

    .prologue
    .line 1732
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isSOAPAction()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1735
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->soapActionRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 1739
    :goto_9
    return-void

    .line 1738
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_9
.end method

.method private initializeLoadedDescription()Z
    .registers 2

    .prologue
    .line 498
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->setDescriptionURI(Ljava/lang/String;)V

    .line 499
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setLeaseTime(I)V

    .line 500
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setHTTPPort(I)V

    .line 503
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->hasUDN()Z

    move-result v0

    if-nez v0, :cond_18

    .line 504
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->updateUDN()V

    .line 506
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method private invalidActionControlRecieved(Lcom/samsung/upnp/control/ControlRequest;)V
    .registers 4
    .parameter "ctlReq"

    .prologue
    .line 1798
    if-nez p1, :cond_3

    .line 1803
    :goto_2
    return-void

    .line 1800
    :cond_3
    new-instance v0, Lcom/samsung/upnp/control/ActionResponse;

    invoke-direct {v0}, Lcom/samsung/upnp/control/ActionResponse;-><init>()V

    .line 1801
    .local v0, actRes:Lcom/samsung/upnp/control/ControlResponse;
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/control/ControlResponse;->setFaultResponse(I)V

    .line 1802
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/control/ControlRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private isDescriptionURI(Ljava/lang/String;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, descriptionURI:Ljava/lang/String;
    if-eqz p1, :cond_8

    if-nez v0, :cond_a

    .line 413
    :cond_8
    const/4 v1, 0x0

    .line 414
    :goto_9
    return v1

    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_9
.end method

.method public static isDeviceNode(Lcom/samsung/xml/Node;)Z
    .registers 3
    .parameter "node"

    .prologue
    .line 515
    const-string v0, "device"

    invoke-virtual {p0}, Lcom/samsung/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final notifyWait()V
    .registers 1

    .prologue
    .line 1255
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/samsung/util/TimerUtil;->waitRandom(I)V

    .line 1256
    return-void
.end method

.method private requestDescriptionData(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9
    .parameter "localAddr"
    .parameter "uri"

    .prologue
    .line 1664
    iget-object v5, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    monitor-enter v5

    .line 1665
    :try_start_3
    iget-object v4, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1667
    .local v0, buffer:[B
    if-eqz v0, :cond_10

    .line 1668
    monitor-exit v5

    move-object v1, v0

    .line 1684
    .end local v0           #buffer:[B
    .local v1, buffer:[B
    :goto_f
    return-object v1

    .line 1673
    .end local v1           #buffer:[B
    .restart local v0       #buffer:[B
    :cond_10
    invoke-direct {p0, p2}, Lcom/samsung/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1674
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    .line 1682
    :cond_1a
    :goto_1a
    if-eqz v0, :cond_21

    .line 1683
    iget-object v4, p0, Lcom/samsung/upnp/Device;->descriptionCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    :cond_21
    monitor-exit v5

    move-object v1, v0

    .end local v0           #buffer:[B
    .restart local v1       #buffer:[B
    goto :goto_f

    .line 1676
    .end local v1           #buffer:[B
    .restart local v0       #buffer:[B
    :cond_24
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v2

    .local v2, embDev:Lcom/samsung/upnp/Device;
    if-eqz v2, :cond_2f

    .line 1677
    invoke-direct {v2, p1}, Lcom/samsung/upnp/Device;->getDescriptionData(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1a

    .line 1679
    :cond_2f
    invoke-virtual {p0, p2}, Lcom/samsung/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v3

    .local v3, embService:Lcom/samsung/upnp/Service;
    if-eqz v3, :cond_1a

    .line 1680
    invoke-virtual {v3}, Lcom/samsung/upnp/Service;->getSCPDData()[B

    move-result-object v0

    goto :goto_1a

    .line 1664
    .end local v0           #buffer:[B
    .end local v2           #embDev:Lcom/samsung/upnp/Device;
    .end local v3           #embService:Lcom/samsung/upnp/Service;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method private setAdvertiser(Lcom/samsung/upnp/device/Advertiser;)V
    .registers 3
    .parameter "adv"

    .prologue
    .line 2040
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setAdvertiser(Lcom/samsung/upnp/device/Advertiser;)V

    .line 2041
    return-void
.end method

.method private setDescriptionFile(Ljava/io/File;)V
    .registers 3
    .parameter "file"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setDescriptionFile(Ljava/io/File;)V

    .line 392
    return-void
.end method

.method private setDescriptionURI(Ljava/lang/String;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setDescriptionURI(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method private setUUID(Ljava/lang/String;)V
    .registers 2
    .parameter "uuid"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/upnp/Device;->devUUID:Ljava/lang/String;

    .line 326
    return-void
.end method

.method private soapActionRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 5
    .parameter "soapReq"

    .prologue
    .line 1762
    if-nez p1, :cond_3

    .line 1780
    :goto_2
    return-void

    .line 1764
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 1765
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/samsung/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v1

    .line 1766
    .local v1, ctlService:Lcom/samsung/upnp/Service;
    if-eqz v1, :cond_16

    .line 1767
    new-instance v0, Lcom/samsung/upnp/control/ActionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/control/ActionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 1768
    .local v0, crlReq:Lcom/samsung/upnp/control/ActionRequest;
    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/Device;->deviceControlRequestRecieved(Lcom/samsung/upnp/control/ControlRequest;Lcom/samsung/upnp/Service;)V

    goto :goto_2

    .line 1779
    .end local v0           #crlReq:Lcom/samsung/upnp/control/ActionRequest;
    :cond_16
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->soapBadActionRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_2
.end method

.method private soapBadActionRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "soapReq"

    .prologue
    .line 1750
    if-nez p1, :cond_3

    .line 1755
    :goto_2
    return-void

    .line 1752
    :cond_3
    new-instance v0, Lcom/samsung/soap/SOAPResponse;

    invoke-direct {v0}, Lcom/samsung/soap/SOAPResponse;-><init>()V

    .line 1753
    .local v0, soapRes:Lcom/samsung/soap/SOAPResponse;
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/samsung/soap/SOAPResponse;->setStatusCode(I)V

    .line 1754
    invoke-virtual {p1, v0}, Lcom/samsung/http/HTTPRequest;->post(Lcom/samsung/http/HTTPResponse;)Z

    goto :goto_2
.end method

.method private stop(Z)Z
    .registers 8
    .parameter "doByeBye"

    .prologue
    .line 2103
    const/4 v2, 0x0

    .line 2104
    .local v2, isHttpClosed:Z
    const/4 v3, 0x0

    .line 2106
    .local v3, isSsdpClosed:Z
    if-eqz p1, :cond_7

    .line 2107
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->byebye()V

    .line 2109
    :cond_7
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v1

    .line 2110
    .local v1, httpServerList:Lcom/samsung/http/HTTPServerList;
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->stop()V

    .line 2111
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->close()Z

    move-result v2

    .line 2112
    invoke-virtual {v1}, Lcom/samsung/http/HTTPServerList;->clear()V

    .line 2114
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getSSDPSearchSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v4

    .line 2115
    .local v4, ssdpSearchSockList:Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->stop()V

    .line 2116
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->close()Z

    move-result v3

    .line 2117
    invoke-virtual {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->clear()V

    .line 2119
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getAdvertiser()Lcom/samsung/upnp/device/Advertiser;

    move-result-object v0

    .line 2120
    .local v0, adv:Lcom/samsung/upnp/device/Advertiser;
    if-eqz v0, :cond_30

    .line 2121
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Advertiser;->stop()V

    .line 2122
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/upnp/Device;->setAdvertiser(Lcom/samsung/upnp/device/Advertiser;)V

    .line 2125
    :cond_30
    if-eqz v2, :cond_36

    if-eqz v3, :cond_36

    const/4 v5, 0x1

    :goto_35
    return v5

    :cond_36
    const/4 v5, 0x0

    goto :goto_35
.end method

.method private updateUDN()V
    .registers 3

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uuid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setUDN(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method private upnpBadSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;I)V
    .registers 4
    .parameter "subReq"
    .parameter "code"

    .prologue
    .line 1847
    if-nez p1, :cond_3

    .line 1852
    :goto_2
    return-void

    .line 1849
    :cond_3
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionResponse;

    invoke-direct {v0}, Lcom/samsung/upnp/event/SubscriptionResponse;-><init>()V

    .line 1850
    .local v0, subRes:Lcom/samsung/upnp/event/SubscriptionResponse;
    invoke-virtual {v0, p2}, Lcom/samsung/upnp/event/SubscriptionResponse;->setErrorResponse(I)V

    .line 1851
    invoke-virtual {p1, v0}, Lcom/samsung/upnp/event/SubscriptionRequest;->post(Lcom/samsung/upnp/event/SubscriptionResponse;)V

    goto :goto_2
.end method


# virtual methods
.method public announce()V
    .registers 9

    .prologue
    .line 1326
    invoke-static {}, Lcom/samsung/upnp/Device;->notifyWait()V

    .line 1328
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v4

    .line 1329
    .local v4, nHostAddrs:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_8
    if-lt v3, v4, :cond_b

    .line 1343
    return-void

    .line 1330
    :cond_b
    invoke-static {v3}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, bindAddr:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1a

    .line 1329
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1333
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPAnnounceCount()I

    move-result v5

    .line 1334
    .local v5, ssdpCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v5, :cond_17

    .line 1335
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1337
    const-wide/16 v6, 0xc8

    :try_start_26
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_29} :catch_2c

    .line 1334
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1338
    :catch_2c
    move-exception v1

    .line 1339
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_29
.end method

.method public announce(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1269
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1270
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v2, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1271
    new-instance v3, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1272
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setServer(Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLeaseTime(I)V

    .line 1274
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setLocation(Ljava/lang/String;)V

    .line 1275
    const-string v1, "ssdp:alive"

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1278
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 1279
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1281
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1282
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1286
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1287
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v1

    .line 1288
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyRootDeviceUSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1290
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1294
    :cond_49
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v1

    .line 1295
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v4

    .line 1296
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v3, v1}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1301
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1303
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v2

    .line 1304
    invoke-virtual {v2}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 1305
    :goto_66
    if-lt v1, v3, :cond_73

    .line 1310
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 1311
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 1312
    :goto_70
    if-lt v0, v2, :cond_7d

    .line 1316
    return-void

    .line 1306
    :cond_73
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1307
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->announce(Ljava/lang/String;)V

    .line 1305
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 1313
    :cond_7d
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 1314
    invoke-virtual {v3, p1}, Lcom/samsung/upnp/Device;->announce(Ljava/lang/String;)V

    .line 1312
    add-int/lit8 v0, v0, 0x1

    goto :goto_70
.end method

.method public byebye()V
    .registers 7

    .prologue
    .line 1408
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->clearDescriptionCache()V

    .line 1409
    invoke-static {}, Lcom/samsung/net/HostInterface;->getNHostAddresses()I

    move-result v3

    .line 1410
    .local v3, nHostAddrs:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_8
    if-lt v2, v3, :cond_b

    .line 1418
    return-void

    .line 1411
    :cond_b
    invoke-static {v2}, Lcom/samsung/net/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 1412
    .local v0, bindAddr:Ljava/lang/String;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1a

    .line 1410
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1414
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPAnnounceCount()I

    move-result v4

    .line 1415
    .local v4, ssdpCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1f
    if-ge v1, v4, :cond_17

    .line 1416
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f
.end method

.method public byebye(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1354
    new-instance v1, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;

    invoke-direct {v1, p1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;-><init>(Ljava/lang/String;)V

    .line 1355
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;

    invoke-direct {v2}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;-><init>()V

    .line 1356
    const-string v3, "ssdp:byebye"

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNTS(Ljava/lang/String;)V

    .line 1358
    const-string v3, ""

    .line 1359
    const-string v3, ""

    .line 1361
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    .line 1362
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    .line 1363
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1368
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1369
    const-string v3, "upnp:rootdevice"

    .line 1370
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyRootDeviceUSN()Ljava/lang/String;

    move-result-object v4

    .line 1371
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1377
    :cond_3a
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v3

    .line 1378
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v4

    .line 1379
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setNT(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v2, v4}, Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;->setUSN(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v1, v2}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->post(Lcom/samsung/upnp/ssdp/SSDPNotifyRequest;)Z

    .line 1384
    invoke-virtual {v1}, Lcom/samsung/upnp/ssdp/SSDPNotifySocket;->close()Z

    .line 1386
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v2

    .line 1387
    invoke-virtual {v2}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v3

    move v1, v0

    .line 1388
    :goto_57
    if-lt v1, v3, :cond_64

    .line 1393
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v1

    .line 1394
    invoke-virtual {v1}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 1395
    :goto_61
    if-lt v0, v2, :cond_6e

    .line 1399
    return-void

    .line 1389
    :cond_64
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1390
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->byebye(Ljava/lang/String;)V

    .line 1388
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 1396
    :cond_6e
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v3

    .line 1397
    invoke-virtual {v3, p1}, Lcom/samsung/upnp/Device;->byebye(Ljava/lang/String;)V

    .line 1395
    add-int/lit8 v0, v0, 0x1

    goto :goto_61
.end method

.method public deviceSearchReceived(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 2
    .parameter "ssdpPacket"

    .prologue
    .line 1553
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/Device;->deviceSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 1554
    return-void
.end method

.method public deviceSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1478
    const-string v0, "Device"

    const-string v2, "SSDP : Device Search Response"

    invoke-static {v0, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1546
    :cond_e
    return-void

    .line 1483
    :cond_f
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getST()Ljava/lang/String;

    move-result-object v2

    .line 1485
    if-eqz v2, :cond_e

    .line 1488
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v3

    .line 1490
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1491
    if-eqz v3, :cond_32

    .line 1492
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "::upnp:rootdevice"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    :cond_32
    invoke-static {v2}, Lcom/samsung/upnp/device/ST;->isAllDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1495
    const-string v2, "Device"

    const-string v3, "SSDP : All Device"

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DeviceSSDP : All Device"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    .line 1498
    invoke-virtual {p0, p1, v2, v2}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1499
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceNT()Ljava/lang/String;

    move-result-object v2

    .line 1500
    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1501
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeNT()Ljava/lang/String;

    move-result-object v0

    .line 1502
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getNotifyDeviceTypeUSN()Ljava/lang/String;

    move-result-object v2

    .line 1503
    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1532
    :cond_5f
    :goto_5f
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v2

    .line 1533
    invoke-virtual {v2}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v3

    move v0, v1

    .line 1534
    :goto_68
    if-lt v0, v3, :cond_fb

    .line 1540
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1541
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v3

    move v0, v1

    .line 1542
    :goto_73
    if-ge v0, v3, :cond_e

    .line 1543
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 1544
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->deviceSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 1542
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 1505
    :cond_7f
    invoke-static {v2}, Lcom/samsung/upnp/device/ST;->isRootDevice(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 1506
    if-eqz v3, :cond_5f

    .line 1507
    const-string v2, "Device"

    const-string v3, "SSDP : Root Device"

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DeviceSSDP : Root Device"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    const-string v2, "upnp:rootdevice"

    invoke-virtual {p0, p1, v2, v0}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5f

    .line 1512
    :cond_9b
    invoke-static {v2}, Lcom/samsung/upnp/device/ST;->isUUIDDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1513
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1515
    const-string v2, "Device"

    const-string v3, "SSDP : UUID Device"

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DeviceSSDP : UUID Device"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5f

    .line 1521
    :cond_bd
    invoke-static {v2}, Lcom/samsung/upnp/device/ST;->isURNDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1522
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 1523
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1525
    const-string v2, "Device"

    const-string v3, "SSDP : URN Device"

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DeviceSSDP : URN Device"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1528
    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/upnp/Device;->postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_5f

    .line 1535
    :cond_fb
    invoke-virtual {v2, v0}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1536
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " of service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->serviceSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;)Z

    .line 1534
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_68
.end method

.method public getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;
    .registers 15
    .parameter "name"

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v11

    .line 1159
    .local v11, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v11}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v10

    .line 1160
    .local v10, serviceCnt:I
    const/4 v8, 0x0

    .local v8, n:I
    :goto_9
    if-lt v8, v10, :cond_18

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v6

    .line 1175
    .local v6, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v5

    .line 1176
    .local v5, devCnt:I
    const/4 v8, 0x0

    :goto_14
    if-lt v8, v5, :cond_3e

    .line 1183
    const/4 v0, 0x0

    .end local v5           #devCnt:I
    .end local v6           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    :goto_17
    return-object v0

    .line 1161
    :cond_18
    invoke-virtual {v11, v8}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v9

    .line 1162
    .local v9, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v9}, Lcom/samsung/upnp/Service;->getActionList()Lcom/samsung/upnp/ActionList;

    move-result-object v2

    .line 1163
    .local v2, actionList:Lcom/samsung/upnp/ActionList;
    invoke-virtual {v2}, Lcom/samsung/upnp/ActionList;->size()I

    move-result v1

    .line 1164
    .local v1, actionCnt:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_25
    if-lt v7, v1, :cond_2a

    .line 1160
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 1165
    :cond_2a
    invoke-virtual {v2, v7}, Lcom/samsung/upnp/ActionList;->getAction(I)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1166
    .local v0, action:Lcom/samsung/upnp/Action;
    invoke-virtual {v0}, Lcom/samsung/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1167
    .local v3, actionName:Ljava/lang/String;
    if-nez v3, :cond_37

    .line 1164
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1169
    :cond_37
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_34

    goto :goto_17

    .line 1177
    .end local v0           #action:Lcom/samsung/upnp/Action;
    .end local v1           #actionCnt:I
    .end local v2           #actionList:Lcom/samsung/upnp/ActionList;
    .end local v3           #actionName:Ljava/lang/String;
    .end local v7           #i:I
    .end local v9           #service:Lcom/samsung/upnp/Service;
    .restart local v5       #devCnt:I
    .restart local v6       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_3e
    invoke-virtual {v6, v8}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v4

    .line 1178
    .local v4, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Device;->getAction(Ljava/lang/String;)Lcom/samsung/upnp/Action;

    move-result-object v0

    .line 1179
    .restart local v0       #action:Lcom/samsung/upnp/Action;
    if-nez v0, :cond_17

    .line 1176
    add-int/lit8 v8, v8, 0x1

    goto :goto_14
.end method

.method public getDescriptionFile()Ljava/io/File;
    .registers 2

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionFilePath()Ljava/lang/String;
    .registers 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDescriptionFile()Ljava/io/File;

    move-result-object v0

    .line 420
    .local v0, descriptionFile:Ljava/io/File;
    if-nez v0, :cond_9

    .line 421
    const-string v1, ""

    .line 422
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "name"

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 932
    .local v3, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v3}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 933
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v2, :cond_d

    .line 941
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 934
    :cond_d
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 935
    .local v1, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 937
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDevice(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 938
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 939
    goto :goto_c

    .line 933
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;
    .registers 8
    .parameter "uri"

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v3

    .line 947
    .local v3, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v3}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v2

    .line 948
    .local v2, devCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_9
    if-lt v4, v2, :cond_d

    .line 956
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return-object v1

    .line 949
    :cond_d
    invoke-virtual {v3, v4}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v1

    .line 950
    .local v1, dev:Lcom/samsung/upnp/Device;
    invoke-direct {v1, p1}, Lcom/samsung/upnp/Device;->isDescriptionURI(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 952
    invoke-virtual {v1, p1}, Lcom/samsung/upnp/Device;->getDeviceByDescriptionURI(Ljava/lang/String;)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 953
    .local v0, cdev:Lcom/samsung/upnp/Device;
    if-eqz v0, :cond_1f

    move-object v1, v0

    .line 954
    goto :goto_c

    .line 948
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 707
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 708
    const-string v1, ""

    .line 709
    :goto_8
    return-object v1

    :cond_9
    const-string v1, "sec:deviceID"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getDeviceList()Lcom/samsung/upnp/DeviceList;
    .registers 7

    .prologue
    .line 890
    new-instance v1, Lcom/samsung/upnp/DeviceList;

    invoke-direct {v1}, Lcom/samsung/upnp/DeviceList;-><init>()V

    .line 891
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v2, "deviceList"

    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v3

    .line 892
    if-nez v3, :cond_13

    move-object v0, v1

    .line 905
    :goto_12
    return-object v0

    .line 894
    :cond_13
    invoke-virtual {v3}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v4

    .line 895
    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-lt v2, v4, :cond_1d

    move-object v0, v1

    .line 905
    goto :goto_12

    .line 896
    :cond_1d
    invoke-virtual {v3, v2}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 897
    invoke-static {v0}, Lcom/samsung/upnp/Device;->isDeviceNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 895
    :cond_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    .line 899
    :cond_2b
    new-instance v5, Lcom/samsung/upnp/Device;

    invoke-direct {v5, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;)V

    .line 900
    invoke-virtual {v1, v5}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-virtual {v5}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Lcom/samsung/upnp/DeviceList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/Device;

    .line 903
    invoke-virtual {v1, v0}, Lcom/samsung/upnp/DeviceList;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method

.method public getDeviceNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 696
    .local v0, node:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 697
    const-string v1, ""

    .line 698
    :goto_8
    return-object v1

    :cond_9
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getHTTPPort()I
    .registers 2

    .prologue
    .line 1567
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getHTTPPort()I

    move-result v0

    return v0
.end method

.method public getIcon(I)Lcom/samsung/upnp/Icon;
    .registers 4
    .parameter "n"

    .prologue
    .line 1209
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getIconList()Lcom/samsung/upnp/IconList;

    move-result-object v0

    .line 1210
    .local v0, iconList:Lcom/samsung/upnp/IconList;
    if-gez p1, :cond_10

    invoke-virtual {v0}, Lcom/samsung/upnp/IconList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v1, p1, :cond_10

    .line 1211
    const/4 v1, 0x0

    .line 1212
    :goto_f
    return-object v1

    :cond_10
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/IconList;->getIcon(I)Lcom/samsung/upnp/Icon;

    move-result-object v1

    goto :goto_f
.end method

.method public getIconList()Lcom/samsung/upnp/IconList;
    .registers 7

    .prologue
    .line 1192
    new-instance v0, Lcom/samsung/upnp/IconList;

    invoke-direct {v0}, Lcom/samsung/upnp/IconList;-><init>()V

    .line 1193
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "iconList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 1194
    if-nez v2, :cond_12

    .line 1204
    :cond_11
    return-object v0

    .line 1196
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 1197
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_11

    .line 1198
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 1199
    invoke-static {v4}, Lcom/samsung/upnp/Icon;->isIconNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1197
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1201
    :cond_26
    new-instance v5, Lcom/samsung/upnp/Icon;

    invoke-direct {v5, v4}, Lcom/samsung/upnp/Icon;-><init>(Lcom/samsung/xml/Node;)V

    .line 1202
    invoke-virtual {v0, v5}, Lcom/samsung/upnp/IconList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2140
    .local v0, ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_9

    .line 2141
    const-string v1, ""

    .line 2142
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getLeaseTime()I
    .registers 3

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 577
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_b

    .line 578
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLeaseTime()I

    move-result v1

    .line 579
    :goto_a
    return v1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/xml/DeviceData;->getLeaseTime()I

    move-result v1

    goto :goto_a
.end method

.method public getLocation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 555
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_b

    .line 556
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v1

    .line 557
    :goto_a
    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/upnp/xml/DeviceData;->getLocation()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method public getLocationURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "host"

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getHTTPPort()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDescriptionURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/samsung/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .registers 3

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModelNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "modelNumber"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyDeviceTypeNT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyDeviceTypeUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNotifyRootDeviceUSN()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteInterfaceAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2146
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 2147
    .local v0, ssdpPacket:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-nez v0, :cond_9

    .line 2148
    const-string v1, ""

    .line 2149
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getRootDevice()Lcom/samsung/upnp/Device;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v1

    .line 345
    .local v1, rootNode:Lcom/samsung/xml/Node;
    if-nez v1, :cond_8

    .line 350
    :cond_7
    :goto_7
    return-object v2

    .line 347
    :cond_8
    const-string v3, "device"

    invoke-virtual {v1, v3}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v0

    .line 348
    .local v0, devNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_7

    .line 350
    new-instance v2, Lcom/samsung/upnp/Device;

    invoke-direct {v2, v1, v0}, Lcom/samsung/upnp/Device;-><init>(Lcom/samsung/xml/Node;Lcom/samsung/xml/Node;)V

    goto :goto_7
.end method

.method public getRootNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    if-eqz v0, :cond_7

    .line 188
    iget-object v0, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    .line 191
    :goto_6
    return-object v0

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    if-nez v0, :cond_d

    .line 190
    const/4 v0, 0x0

    goto :goto_6

    .line 191
    :cond_d
    iget-object v0, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    goto :goto_6
.end method

.method public getSSDPAnnounceCount()I
    .registers 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isNMPRMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isWirelessMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    const/4 v0, 0x4

    .line 314
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x2

    goto :goto_d
.end method

.method public getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;
    .registers 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v0

    if-nez v0, :cond_8

    .line 539
    const/4 v0, 0x0

    .line 540
    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/upnp/xml/DeviceData;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    goto :goto_7
.end method

.method public getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "name"

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 983
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 984
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 990
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 991
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 992
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 999
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 985
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 986
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isService(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 984
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 993
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 994
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getService(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 995
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 992
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1027
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1028
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1034
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1035
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1036
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1043
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 1029
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1030
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isControlURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1028
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1037
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1038
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceByControlURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1039
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1036
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 1048
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1049
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1050
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1056
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1057
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1058
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1065
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 1051
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1052
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isEventSubURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1050
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1059
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1060
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceByEventSubURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1061
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1058
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;
    .registers 10
    .parameter "searchUrl"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1005
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1006
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_9
    if-lt v3, v5, :cond_18

    .line 1012
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1013
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1014
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_14
    if-lt v3, v1, :cond_25

    .line 1021
    const/4 v4, 0x0

    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_17
    return-object v4

    .line 1007
    :cond_18
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1008
    .local v4, service:Lcom/samsung/upnp/Service;
    invoke-virtual {v4, p1}, Lcom/samsung/upnp/Service;->isSCPDURL(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 1006
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1015
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_25
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1016
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1}, Lcom/samsung/upnp/Device;->getServiceBySCPDURL(Ljava/lang/String;)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1017
    .restart local v4       #service:Lcom/samsung/upnp/Service;
    if-nez v4, :cond_17

    .line 1014
    add-int/lit8 v3, v3, 0x1

    goto :goto_14
.end method

.method public getServiceList()Lcom/samsung/upnp/ServiceList;
    .registers 7

    .prologue
    .line 965
    new-instance v0, Lcom/samsung/upnp/ServiceList;

    invoke-direct {v0}, Lcom/samsung/upnp/ServiceList;-><init>()V

    .line 966
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    .line 967
    if-nez v2, :cond_12

    .line 977
    :cond_11
    return-object v0

    .line 969
    :cond_12
    invoke-virtual {v2}, Lcom/samsung/xml/Node;->getNNodes()I

    move-result v3

    .line 970
    const/4 v1, 0x0

    :goto_17
    if-ge v1, v3, :cond_11

    .line 971
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v4

    .line 972
    invoke-static {v4}, Lcom/samsung/upnp/Service;->isServiceNode(Lcom/samsung/xml/Node;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 970
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 974
    :cond_26
    new-instance v5, Lcom/samsung/upnp/Service;

    invoke-direct {v5, v4}, Lcom/samsung/upnp/Service;-><init>(Lcom/samsung/xml/Node;)V

    .line 975
    invoke-virtual {v0, v5}, Lcom/samsung/upnp/ServiceList;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 3
    .parameter "name"

    .prologue
    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v0

    return-object v0
.end method

.method public getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;
    .registers 13
    .parameter "serviceType"
    .parameter "name"

    .prologue
    const/4 v8, 0x0

    .line 1118
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    move-object v7, v8

    .line 1144
    :cond_6
    :goto_6
    return-object v7

    .line 1121
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getServiceList()Lcom/samsung/upnp/ServiceList;

    move-result-object v6

    .line 1122
    .local v6, serviceList:Lcom/samsung/upnp/ServiceList;
    invoke-virtual {v6}, Lcom/samsung/upnp/ServiceList;->size()I

    move-result v5

    .line 1123
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_10
    if-lt v3, v5, :cond_1f

    .line 1135
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceList()Lcom/samsung/upnp/DeviceList;

    move-result-object v2

    .line 1136
    .local v2, devList:Lcom/samsung/upnp/DeviceList;
    invoke-virtual {v2}, Lcom/samsung/upnp/DeviceList;->size()I

    move-result v1

    .line 1137
    .local v1, devCnt:I
    const/4 v3, 0x0

    :goto_1b
    if-lt v3, v1, :cond_39

    move-object v7, v8

    .line 1144
    goto :goto_6

    .line 1124
    .end local v1           #devCnt:I
    .end local v2           #devList:Lcom/samsung/upnp/DeviceList;
    :cond_1f
    invoke-virtual {v6, v3}, Lcom/samsung/upnp/ServiceList;->getService(I)Lcom/samsung/upnp/Service;

    move-result-object v4

    .line 1126
    .local v4, service:Lcom/samsung/upnp/Service;
    if-eqz p1, :cond_32

    .line 1127
    invoke-virtual {v4}, Lcom/samsung/upnp/Service;->getServiceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_32

    .line 1123
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1130
    :cond_32
    invoke-virtual {v4, p2}, Lcom/samsung/upnp/Service;->getStateVariable(Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v7

    .line 1131
    .local v7, stateVar:Lcom/samsung/upnp/StateVariable;
    if-eqz v7, :cond_2f

    goto :goto_6

    .line 1138
    .end local v4           #service:Lcom/samsung/upnp/Service;
    .end local v7           #stateVar:Lcom/samsung/upnp/StateVariable;
    .restart local v1       #devCnt:I
    .restart local v2       #devList:Lcom/samsung/upnp/DeviceList;
    :cond_39
    invoke-virtual {v2, v3}, Lcom/samsung/upnp/DeviceList;->getDevice(I)Lcom/samsung/upnp/Device;

    move-result-object v0

    .line 1139
    .local v0, dev:Lcom/samsung/upnp/Device;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/upnp/Device;->getStateVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/upnp/StateVariable;

    move-result-object v7

    .line 1140
    .restart local v7       #stateVar:Lcom/samsung/upnp/StateVariable;
    if-nez v7, :cond_6

    .line 1137
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b
.end method

.method public getUDN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 838
    .local v0, deviceNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_9

    .line 839
    const-string v1, ""

    .line 840
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v1

    const-string v2, "UDN"

    invoke-virtual {v1, v2}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public getURLBase()Ljava/lang/String;
    .registers 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 640
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 641
    .local v0, rootNode:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_13

    .line 642
    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 644
    .end local v0           #rootNode:Lcom/samsung/xml/Node;
    :goto_12
    return-object v1

    :cond_13
    const-string v1, ""

    goto :goto_12
.end method

.method public hasUDN()Z
    .registers 3

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, udn:Ljava/lang/String;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    .line 847
    :cond_c
    const/4 v1, 0x0

    .line 848
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public httpRequestRecieved(Lcom/samsung/http/HTTPRequest;)V
    .registers 4
    .parameter "httpReq"

    .prologue
    .line 1578
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1579
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->print()V

    .line 1582
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isHeadRequest()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1583
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpHostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    .line 1603
    :goto_12
    return-void

    .line 1587
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isGetRequest()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1588
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpGetRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_12

    .line 1591
    :cond_1d
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isPostRequest()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1592
    invoke-direct {p0, p1}, Lcom/samsung/upnp/Device;->httpPostRequestRecieved(Lcom/samsung/http/HTTPRequest;)V

    goto :goto_12

    .line 1596
    :cond_27
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isSubscribeRequest()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->isUnsubscribeRequest()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1597
    :cond_33
    new-instance v0, Lcom/samsung/upnp/event/SubscriptionRequest;

    invoke-direct {v0, p1}, Lcom/samsung/upnp/event/SubscriptionRequest;-><init>(Lcom/samsung/http/HTTPRequest;)V

    .line 1598
    .local v0, subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->deviceEventSubscriptionRecieved(Lcom/samsung/upnp/event/SubscriptionRequest;)V

    goto :goto_12

    .line 1602
    .end local v0           #subReq:Lcom/samsung/upnp/event/SubscriptionRequest;
    :cond_3c
    invoke-virtual {p1}, Lcom/samsung/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_12
.end method

.method public httptRecieved(Ljava/lang/String;)V
    .registers 2
    .parameter "firstLine"

    .prologue
    .line 1607
    return-void
.end method

.method public isDevice(Ljava/lang/String;)Z
    .registers 7
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 910
    if-nez p1, :cond_5

    .line 926
    :cond_4
    :goto_4
    return v2

    .line 912
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v2, v3

    .line 913
    goto :goto_4

    .line 914
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move v2, v3

    .line 915
    goto :goto_4

    .line 919
    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPPacket()Lcom/samsung/upnp/ssdp/SSDPPacket;

    move-result-object v0

    .line 920
    .local v0, packet:Lcom/samsung/upnp/ssdp/SSDPPacket;
    if-eqz v0, :cond_4

    .line 921
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/upnp/device/USN;->getUUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, uuid:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 923
    goto :goto_4
.end method

.method public isNMPRMode()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 289
    .local v0, devNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 291
    :cond_7
    :goto_7
    return v1

    :cond_8
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_7
.end method

.method public isRootDevice()Z
    .registers 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isWirelessMode()Z
    .registers 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/samsung/upnp/Device;->wirelessMode:Z

    return v0
.end method

.method public loadDescription(Ljava/io/InputStream;)Z
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 475
    :try_start_0
    invoke-static {}, Lcom/samsung/upnp/UPnP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v1

    .line 476
    .local v1, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v1, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    .line 477
    iget-object v2, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    if-nez v2, :cond_1d

    .line 478
    new-instance v2, Lcom/samsung/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root node"

    invoke-direct {v2, v3, p1}, Lcom/samsung/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    throw v2
    :try_end_16
    .catch Lcom/samsung/xml/ParserException; {:try_start_0 .. :try_end_16} :catch_16

    .line 483
    .end local v1           #parser:Lcom/samsung/xml/Parser;
    :catch_16
    move-exception v0

    .line 484
    .local v0, e:Lcom/samsung/xml/ParserException;
    new-instance v2, Lcom/samsung/upnp/device/InvalidDescriptionException;

    invoke-direct {v2, v0}, Lcom/samsung/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 479
    .end local v0           #e:Lcom/samsung/xml/ParserException;
    .restart local v1       #parser:Lcom/samsung/xml/Parser;
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/samsung/upnp/Device;->rootNode:Lcom/samsung/xml/Node;

    const-string v3, "device"

    invoke-virtual {v2, v3}, Lcom/samsung/xml/Node;->getNode(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    .line 480
    iget-object v2, p0, Lcom/samsung/upnp/Device;->deviceNode:Lcom/samsung/xml/Node;

    if-nez v2, :cond_33

    .line 481
    new-instance v2, Lcom/samsung/upnp/device/InvalidDescriptionException;

    const-string v3, "Couldn\'t find a root device node"

    invoke-direct {v2, v3, p1}, Lcom/samsung/upnp/device/InvalidDescriptionException;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    throw v2
    :try_end_33
    .catch Lcom/samsung/xml/ParserException; {:try_start_1d .. :try_end_33} :catch_16

    .line 487
    :cond_33
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->initializeLoadedDescription()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 488
    const/4 v2, 0x0

    .line 493
    :goto_3a
    return v2

    .line 491
    :cond_3b
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/upnp/Device;->setDescriptionFile(Ljava/io/File;)V

    .line 493
    const/4 v2, 0x1

    goto :goto_3a
.end method

.method public postSearchResponse(Lcom/samsung/upnp/ssdp/SSDPPacket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1434
    if-nez p1, :cond_4

    .line 1466
    :cond_3
    :goto_3
    return v0

    .line 1436
    :cond_4
    const-string v1, "[yjkim] SSDP :"

    const-string v2, "postSearchResponse"

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    .line 1438
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getRootDevice()Lcom/samsung/upnp/Device;

    move-result-object v2

    .line 1439
    const-string v3, ""

    .line 1440
    if-eqz v2, :cond_3

    .line 1441
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/Device;->getLocationURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1445
    new-instance v2, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;

    invoke-direct {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;-><init>()V

    .line 1446
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getLeaseTime()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setLeaseTime(I)V

    .line 1447
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setDate(Ljava/util/Calendar;)V

    .line 1448
    invoke-virtual {v2, p2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setST(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v2, p3}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setUSN(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v2, v1}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->setLocation(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getMX()I

    move-result v1

    .line 1455
    mul-int/lit16 v1, v1, 0xc8

    invoke-static {v1}, Lcom/samsung/util/TimerUtil;->waitRandom(I)V

    .line 1457
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getRemoteAddress()Ljava/lang/String;

    move-result-object v1

    .line 1458
    invoke-virtual {p1}, Lcom/samsung/upnp/ssdp/SSDPPacket;->getRemotePort()I

    move-result v3

    .line 1459
    new-instance v4, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;

    invoke-direct {v4}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;-><init>()V

    .line 1460
    invoke-static {}, Lcom/samsung/api/Debugs;->isOn()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1461
    invoke-virtual {v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponse;->print()V

    .line 1462
    :cond_56
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getSSDPAnnounceCount()I

    move-result v5

    .line 1463
    :goto_5a
    if-lt v0, v5, :cond_5e

    .line 1466
    const/4 v0, 0x1

    goto :goto_3

    .line 1464
    :cond_5e
    invoke-virtual {v4, v1, v3, v2}, Lcom/samsung/upnp/ssdp/SSDPSearchResponseSocket;->post(Ljava/lang/String;ILcom/samsung/upnp/ssdp/SSDPSearchResponse;)Z

    .line 1463
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a
.end method

.method public setFriendlyName(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "value"
    .parameter "needAnnounce"

    .prologue
    const/4 v1, 0x0

    .line 679
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_12

    .line 690
    :cond_11
    :goto_11
    return v1

    .line 682
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 683
    .local v0, node:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_11

    .line 685
    const-string v1, "friendlyName"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    if-eqz p2, :cond_25

    .line 687
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->byebye()V

    .line 688
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->announce()V

    .line 690
    :cond_25
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public setHTTPPort(I)V
    .registers 3
    .parameter "port"

    .prologue
    .line 1562
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setHTTPPort(I)V

    .line 1563
    return-void
.end method

.method public setLeaseTime(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 566
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/upnp/xml/DeviceData;->setLeaseTime(I)V

    .line 567
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getAdvertiser()Lcom/samsung/upnp/device/Advertiser;

    move-result-object v0

    .line 568
    .local v0, adv:Lcom/samsung/upnp/device/Advertiser;
    if-eqz v0, :cond_13

    .line 569
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->announce()V

    .line 570
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Advertiser;->restart()V

    .line 572
    :cond_13
    return-void
.end method

.method public setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V
    .registers 3
    .parameter "packet"

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getDeviceData()Lcom/samsung/upnp/xml/DeviceData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/upnp/xml/DeviceData;->setSSDPPacket(Lcom/samsung/upnp/ssdp/SSDPPacket;)V

    .line 534
    return-void
.end method

.method public setUDN(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getDeviceNode()Lcom/samsung/xml/Node;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/xml/Node;->setNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setWirelessMode(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/samsung/upnp/Device;->wirelessMode:Z

    .line 303
    return-void
.end method

.method public start()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2050
    invoke-direct {p0, v3}, Lcom/samsung/upnp/Device;->stop(Z)Z

    .line 2056
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getHTTPPort()I

    move-result v0

    .line 2057
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getHTTPServerList()Lcom/samsung/http/HTTPServerList;

    move-result-object v4

    move v1, v2

    .line 2058
    :goto_e
    invoke-virtual {v4, v0}, Lcom/samsung/http/HTTPServerList;->open(I)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 2066
    invoke-virtual {v4, p0}, Lcom/samsung/http/HTTPServerList;->addRequestListener(Lcom/samsung/http/HTTPRequestListener;)V

    .line 2067
    invoke-virtual {v4, p0}, Lcom/samsung/http/HTTPServerList;->addReceivedListener(Lcom/samsung/http/HTTPReceivedListener;)V

    .line 2069
    invoke-virtual {v4}, Lcom/samsung/http/HTTPServerList;->start()V

    .line 2074
    invoke-direct {p0}, Lcom/samsung/upnp/Device;->getSSDPSearchSocketList()Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;

    move-result-object v0

    .line 2075
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->open()Z

    move-result v1

    if-nez v1, :cond_38

    .line 2098
    :cond_27
    :goto_27
    return v2

    .line 2059
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 2060
    const/16 v5, 0x64

    if-lt v5, v1, :cond_27

    .line 2062
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/Device;->setHTTPPort(I)V

    .line 2063
    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getHTTPPort()I

    move-result v0

    goto :goto_e

    .line 2077
    :cond_38
    invoke-virtual {v0, p0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->addSearchListener(Lcom/samsung/upnp/device/SearchListener;)V

    .line 2078
    invoke-virtual {v0}, Lcom/samsung/upnp/ssdp/SSDPSearchSocketList;->start()V

    .line 2082
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/upnp/Device$1;

    invoke-direct {v1, p0}, Lcom/samsung/upnp/Device$1;-><init>(Lcom/samsung/upnp/Device;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2088
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2094
    new-instance v0, Lcom/samsung/upnp/device/Advertiser;

    invoke-direct {v0, p0}, Lcom/samsung/upnp/device/Advertiser;-><init>(Lcom/samsung/upnp/Device;)V

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ADVERTISER :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/device/Advertiser;->setName(Ljava/lang/String;)V

    .line 2096
    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->setAdvertiser(Lcom/samsung/upnp/device/Advertiser;)V

    .line 2097
    invoke-virtual {v0}, Lcom/samsung/upnp/device/Advertiser;->start()V

    move v2, v3

    .line 2098
    goto :goto_27
.end method

.method public stop()Z
    .registers 2

    .prologue
    .line 2130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/upnp/Device;->stop(Z)Z

    move-result v0

    return v0
.end method
