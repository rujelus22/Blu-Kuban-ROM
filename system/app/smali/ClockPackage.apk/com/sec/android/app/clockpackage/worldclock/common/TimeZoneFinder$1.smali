.class Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;
.super Landroid/os/Handler;
.source "TimeZoneFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 177
    const/4 v13, 0x0

    .local v13, rawISOCode:Ljava/lang/String;
    const/4 v11, 0x0

    .line 179
    .local v11, cityName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 191
    .local v10, bundle:Landroid/os/Bundle;
    :try_start_6
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    const-string v1, "Latitude"

    invoke-virtual {v10, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "Longitude"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v5, 0x1

    const-string v6, "EN"

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getAddress(DDZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 194
    .local v9, address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_77

    .line 196
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 198
    .local v8, address:Landroid/location/Address;
    invoke-virtual {v8}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    .line 200
    invoke-virtual {v8}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v11

    .line 220
    if-eqz v13, :cond_87

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$002(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Z)Z

    .line 224
    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, ISOCode:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->isoCode2CityMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$100(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$202(I)I

    .line 250
    :goto_5e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$400(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->updateWorldClockDB(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$500(Landroid/content/Context;)V

    .line 258
    .end local v7           #ISOCode:Ljava/lang/String;
    :goto_67
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->mcontext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$400(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->ADD_CITY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    .end local v8           #address:Landroid/location/Address;
    .end local v9           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_77
    :goto_77
    return-void

    .line 242
    .restart local v7       #ISOCode:Ljava/lang/String;
    .restart local v8       #address:Landroid/location/Address;
    .restart local v9       #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_78
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    #calls: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->determineCityID(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v11, v7}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$300(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$202(I)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_81} :catch_82

    goto :goto_5e

    .line 268
    .end local v7           #ISOCode:Ljava/lang/String;
    .end local v8           #address:Landroid/location/Address;
    .end local v9           #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_82
    move-exception v12

    .line 270
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77

    .line 254
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v8       #address:Landroid/location/Address;
    .restart local v9       #address_list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->findTimezoneflag:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->access$002(Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;Z)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8d} :catch_82

    goto :goto_67
.end method
