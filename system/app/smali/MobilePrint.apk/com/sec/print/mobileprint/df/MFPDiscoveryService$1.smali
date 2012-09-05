.class Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;
.super Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;
.source "MFPDiscoveryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/print/mobileprint/df/MFPDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;


# direct methods
.method constructor <init>(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)V
    .registers 2
    .parameter

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-direct {p0}, Lcom/sec/print/mobileprint/df/IDiscoveryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public IsDeviceSamsungPrinter(Ljava/lang/String;)I
    .registers 8
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1200
    :try_start_2
    iget-object v4, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1201
    iget-object v4, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    const/4 v5, 0x1

    #calls: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;
    invoke-static {v4, p1, v5}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$300(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v1

    .line 1202
    .local v1, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_27

    .line 1203
    const-string v4, "modelName"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1204
    .local v0, modelName:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string v4, "samsung"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_21} :catch_29

    move-result v4

    if-eqz v4, :cond_25

    .line 1214
    .end local v0           #modelName:Ljava/lang/String;
    .end local v1           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_24
    return v2

    .restart local v0       #modelName:Ljava/lang/String;
    .restart local v1       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_25
    move v2, v3

    .line 1208
    goto :goto_24

    .end local v0           #modelName:Ljava/lang/String;
    :cond_27
    move v2, v3

    .line 1211
    goto :goto_24

    .line 1212
    .end local v1           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_29
    move-exception v2

    .line 1214
    const/4 v2, -0x1

    goto :goto_24
.end method

.method public IsDeviceSamsungScanner(Ljava/lang/String;)I
    .registers 8
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1219
    :try_start_1
    iget-object v4, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v4}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1220
    iget-object v4, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    const/4 v5, 0x1

    #calls: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;
    invoke-static {v4, p1, v5}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$300(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 1221
    .local v2, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_35

    .line 1222
    const-string v4, "modelName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1223
    .local v1, modelName:Ljava/lang/String;
    const-string v4, "isScanner"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1224
    .local v0, isScanner:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1225
    const-string v4, "samsung"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_34

    move-result v4

    if-eqz v4, :cond_32

    .line 1233
    .end local v0           #isScanner:Ljava/lang/Boolean;
    .end local v1           #modelName:Ljava/lang/String;
    .end local v2           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_31
    return v3

    .line 1228
    .restart local v0       #isScanner:Ljava/lang/Boolean;
    .restart local v1       #modelName:Ljava/lang/String;
    .restart local v2       #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_32
    const/4 v3, 0x0

    goto :goto_31

    .line 1231
    .end local v0           #isScanner:Ljava/lang/Boolean;
    .end local v1           #modelName:Ljava/lang/String;
    .end local v2           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_34
    move-exception v3

    .line 1233
    :cond_35
    const/4 v3, -0x1

    goto :goto_31
.end method

.method public IsPrinterAlive(Ljava/lang/String;)I
    .registers 4
    .parameter "printerHost"

    .prologue
    .line 1191
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1192
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->IsPrinterAlive(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 1194
    :goto_b
    return v1

    .line 1193
    :catch_c
    move-exception v0

    .line 1194
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public IsPrinterColorModel(Ljava/lang/String;)I
    .registers 4
    .parameter "printerHost"

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1183
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->IsPrinterColorModelBySNMP(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 1185
    :goto_b
    return v1

    .line 1184
    :catch_c
    move-exception v0

    .line 1185
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public Start(Z)I
    .registers 3
    .parameter "scanners"

    .prologue
    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartDiscovery(Z)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c

    .line 1096
    :goto_5
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartBroadcastDiscovery()V

    .line 1103
    const/4 v0, 0x1

    return v0

    .line 1094
    :catch_c
    move-exception v0

    goto :goto_5
.end method

.method public Stop()I
    .registers 3

    .prologue
    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopDiscovery()V

    .line 1109
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StopBroadcastDiscovery()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 1111
    const/4 v1, 0x1

    .line 1113
    :goto_b
    return v1

    .line 1112
    :catch_c
    move-exception v0

    .line 1113
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_b
.end method

.method public getDeviceMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1277
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1278
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceModeBySNMP(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1280
    :goto_b
    return-object v1

    .line 1279
    :catch_c
    move-exception v0

    .line 1280
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1238
    :try_start_0
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v3}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1239
    iget-object v3, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    const/4 v4, 0x1

    #calls: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDeviceProperties(Ljava/lang/String;I)Ljava/util/Map;
    invoke-static {v3, p1, v4}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$300(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v2

    .line 1240
    .local v2, properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v2, :cond_3d

    .line 1241
    const-string v3, "modelName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1242
    .local v1, modelName:Ljava/lang/String;
    const-string v3, "hostName"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1243
    .local v0, hostName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3c

    move-result-object v3

    .line 1247
    .end local v0           #hostName:Ljava/lang/String;
    .end local v1           #modelName:Ljava/lang/String;
    .end local v2           #properties:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_3b
    return-object v3

    .line 1245
    :catch_3c
    move-exception v3

    .line 1247
    :cond_3d
    const/4 v3, 0x0

    goto :goto_3b
.end method

.method public getDuplex(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "printerHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1252
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1253
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getDuplexBySNMP(Ljava/lang/String;)Ljava/util/List;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1255
    :goto_b
    return-object v1

    .line 1254
    :catch_c
    move-exception v0

    .line 1255
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getIppDevices(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1263
    :try_start_0
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #calls: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getCupsPrinters(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$400(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1264
    .local v1, result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1265
    iget-object v2, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #calls: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getIppPrinter(Ljava/lang/String;)Lcom/sec/print/mobileprint/df/MFPDevice;
    invoke-static {v2, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$500(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Ljava/lang/String;)Lcom/sec/print/mobileprint/df/MFPDevice;

    move-result-object v0

    .line 1266
    .local v0, device:Lcom/sec/print/mobileprint/df/MFPDevice;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1271
    .end local v0           #device:Lcom/sec/print/mobileprint/df/MFPDevice;
    .end local v1           #result:Ljava/util/List;,"Ljava/util/List<Lcom/sec/print/mobileprint/df/MFPDevice;>;"
    :cond_15
    :goto_15
    return-object v1

    .line 1269
    :catch_16
    move-exception v2

    .line 1271
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public getLanguages(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .parameter "printerHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1165
    :try_start_0
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->StartSnmp()V

    .line 1166
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v1, p1}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getLanguageBySNMP(Ljava/lang/String;)Ljava/util/List;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v1

    .line 1168
    :goto_b
    return-object v1

    .line 1167
    :catch_c
    move-exception v0

    .line 1168
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getMediaSizes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "printerHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPMediaSize;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1173
    invoke-static {}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$100()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTypes(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter "printerHost"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1177
    invoke-static {}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrinters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getPrinters()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanners()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->getScanners()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSmbDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/print/mobileprint/df/MFPDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_1
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1140
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->getDevices()Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    .line 1142
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_14

    .line 1143
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSmbState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1147
    monitor-enter p0

    .line 1148
    :try_start_1
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1149
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->getState()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    monitor-exit p0

    .line 1151
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_18

    .line 1152
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public startSmb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "host"
    .parameter "domain"
    .parameter "user"
    .parameter "password"

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    monitor-enter v1

    .line 1119
    :try_start_3
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1120
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    new-instance v2, Lcom/sec/print/mobileprint/df/SmbDiscovery;

    invoke-direct {v2}, Lcom/sec/print/mobileprint/df/SmbDiscovery;-><init>()V

    #setter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0, v2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$002(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Lcom/sec/print/mobileprint/df/SmbDiscovery;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    .line 1121
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->startDiscovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    :cond_1e
    monitor-exit v1

    .line 1124
    const/4 v0, 0x1

    return v0

    .line 1123
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public stopSmb()I
    .registers 4

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    monitor-enter v1

    .line 1129
    :try_start_3
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1130
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    #getter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$000(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/df/SmbDiscovery;->stopDiscovery()V

    .line 1131
    iget-object v0, p0, Lcom/sec/print/mobileprint/df/MFPDiscoveryService$1;->this$0:Lcom/sec/print/mobileprint/df/MFPDiscoveryService;

    const/4 v2, 0x0

    #setter for: Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->smbDiscovery:Lcom/sec/print/mobileprint/df/SmbDiscovery;
    invoke-static {v0, v2}, Lcom/sec/print/mobileprint/df/MFPDiscoveryService;->access$002(Lcom/sec/print/mobileprint/df/MFPDiscoveryService;Lcom/sec/print/mobileprint/df/SmbDiscovery;)Lcom/sec/print/mobileprint/df/SmbDiscovery;

    .line 1133
    :cond_1a
    monitor-exit v1

    .line 1134
    const/4 v0, 0x1

    return v0

    .line 1133
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method
