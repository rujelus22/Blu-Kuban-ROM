.class Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;
.super Ljava/lang/Object;
.source "DeviceInfoLoader.java"


# instance fields
.field modelCapabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;",
            ">;"
        }
    .end annotation
.end field

.field productLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->productLists:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->modelCapabilities:Ljava/util/HashMap;

    .line 134
    return-void
.end method


# virtual methods
.method public addDevice(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;)V
    .registers 5
    .parameter "modelName"
    .parameter
    .parameter "capability"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, productNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 168
    :goto_2
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->productLists:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->modelCapabilities:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .registers 8
    .parameter "modelName"

    .prologue
    .line 138
    iget-object v4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->modelCapabilities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 139
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, findKey:Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 142
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 144
    move-object v0, v2

    .line 149
    .end local v2           #key:Ljava/lang/String;
    :cond_1f
    if-nez v0, :cond_23

    .line 151
    const/4 v4, 0x0

    .line 153
    :goto_22
    return-object v4

    :cond_23
    iget-object v4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->modelCapabilities:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    goto :goto_22
.end method

.method public getProductList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->productLists:Ljava/util/HashMap;

    return-object v0
.end method
