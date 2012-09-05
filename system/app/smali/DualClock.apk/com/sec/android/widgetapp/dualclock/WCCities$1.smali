.class Lcom/sec/android/widgetapp/dualclock/WCCities$1;
.super Landroid/os/Handler;
.source "WCCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/WCCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/WCCities;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    const-string v1, "Source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/sec/android/widgetapp/dualclock/WCCities$NetworkLocationListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 95
    const-string v1, "TODmobile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Latitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v1, "TODmobile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Longitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v1

    const-string v2, "Latitude"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v4, "Longitude"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->findLocationNameUsingGC(DD)Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_b2

    .line 104
    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 105
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getIsoCode2CitiesMap()Ljava/util/Map;

    move-result-object v1

    .line 107
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 110
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    :goto_8a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v2, v2, Lcom/sec/android/widgetapp/dualclock/WCCities;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ad} :catch_ae

    goto :goto_8a

    .line 165
    :catch_ae
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :cond_b2
    :goto_b2
    return-void

    .line 123
    :cond_b3
    :try_start_b3
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$200(Lcom/sec/android/widgetapp/dualclock/WCCities;Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities;->isCurrentLocationfind:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$302(Lcom/sec/android/widgetapp/dualclock/WCCities;Z)Z

    goto :goto_b2

    .line 126
    :cond_c3
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v0, v0, Lcom/sec/android/widgetapp/dualclock/WCCities;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentCityID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$200(Lcom/sec/android/widgetapp/dualclock/WCCities;Ljava/util/List;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities;->isCurrentLocationfind:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$302(Lcom/sec/android/widgetapp/dualclock/WCCities;Z)Z

    goto :goto_b2

    .line 137
    :cond_ee
    const-string v1, "Source"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sec/android/widgetapp/dualclock/WCCities$TimoutTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 139
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getCurrentISOCode()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$002(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 142
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$100()Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/TimeZoneFinder;->getIsoCode2CitiesMap()Ljava/util/Map;

    move-result-object v1

    .line 144
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 147
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 149
    :goto_12a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    iget-object v2, v2, Lcom/sec/android/widgetapp/dualclock/WCCities;->aCity:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/dualclock/City;->findCity_objectByUniqueID(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    .line 160
    :cond_14e
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    invoke-static {}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$000()Ljava/util/ArrayList;

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/dualclock/WCCities;->setCityList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$200(Lcom/sec/android/widgetapp/dualclock/WCCities;Ljava/util/List;)V

    .line 161
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/WCCities$1;->this$0:Lcom/sec/android/widgetapp/dualclock/WCCities;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/widgetapp/dualclock/WCCities;->isCurrentLocationfind:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/WCCities;->access$302(Lcom/sec/android/widgetapp/dualclock/WCCities;Z)Z
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_15d} :catch_ae

    goto/16 :goto_b2
.end method
