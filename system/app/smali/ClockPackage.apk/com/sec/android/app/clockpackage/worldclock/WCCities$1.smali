.class Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;
.super Landroid/os/Handler;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 192
    .local v0, bundle:Landroid/os/Bundle;
    const-string v9, "Source"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WCCitiesLocationListener"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 194
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 196
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v9

    const-string v10, "Latitude"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    const-string v12, "Longitude"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->updateLocationGPSAtActivity(DD)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, result:Ljava/lang/String;
    if-eqz v7, :cond_6e

    .line 201
    const-string v9, "OK"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_79

    .line 203
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getIsoCode2CitiesMap()Ljava/util/Map;

    move-result-object v5

    .line 206
    .local v5, isoCode2CitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Integer;>;>;"
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 208
    .local v1, cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 210
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 212
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 214
    .local v8, uniqueID:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, cn:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_4a

    .line 264
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v2           #cn:Ljava/lang/String;
    .end local v5           #isoCode2CitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Integer;>;>;"
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #uniqueID:I
    :catch_6a
    move-exception v3

    .line 266
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v3           #e:Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return-void

    .line 220
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .restart local v5       #isoCode2CitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Integer;>;>;"
    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v7       #result:Ljava/lang/String;
    :cond_6f
    :try_start_6f
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v10

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/util/List;)V

    goto :goto_6e

    .line 224
    .end local v1           #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    .end local v5           #isoCode2CitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Integer;>;>;"
    .end local v6           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_79
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getCurrentCityID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .restart local v2       #cn:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v10

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/util/List;)V

    goto :goto_6e

    .line 235
    .end local v2           #cn:Ljava/lang/String;
    .end local v7           #result:Ljava/lang/String;
    :cond_9a
    const-string v9, "Source"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "DelayTimerTask_external"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 237
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getCurrentISOCode()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, isoCode:Ljava/lang/String;
    const-string v9, "undefined"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6e

    .line 241
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$100()Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/clockpackage/worldclock/common/TimeZoneFinder;->getIsoCode2CitiesMap()Ljava/util/Map;

    move-result-object v5

    .line 244
    .restart local v5       #isoCode2CitiesMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/LinkedList<Ljava/lang/Integer;>;>;"
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 246
    .restart local v1       #cities:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 248
    .restart local v6       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_ca
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 250
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 252
    .restart local v8       #uniqueID:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .restart local v2       #cn:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 258
    .end local v2           #cn:Ljava/lang/String;
    .end local v8           #uniqueID:I
    :cond_ea
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCCities$1;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCCities;

    invoke-static {}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v10

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v9, v10}, Lcom/sec/android/app/clockpackage/worldclock/WCCities;->access$200(Lcom/sec/android/app/clockpackage/worldclock/WCCities;Ljava/util/List;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_f3} :catch_6a

    goto/16 :goto_6e
.end method
