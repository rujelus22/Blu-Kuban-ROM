.class public Lcom/google/android/apps/plus/util/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public static buildDirectionsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "title"
    .parameter "address"

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://maps.google.com/maps"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?daddr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 169
    .local v0, urlBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1c

    .line 170
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1c
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static buildMapUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "title"
    .parameter "cid"

    .prologue
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://maps.google.com/maps"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    .local v0, urlBuilder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_24

    .line 161
    const-string v1, "&q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPlacesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .parameter "context"

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.PlacesActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    return-object v0
.end method

.method public static isPlacesInstalled(Landroid/content/Context;)Z
    .registers 5
    .parameter "context"

    .prologue
    .line 142
    invoke-static {p0}, Lcom/google/android/apps/plus/util/MapUtils;->getPlacesActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 130
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :try_start_11
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_14} :catch_15

    .line 139
    :goto_14
    return-void

    .line 136
    :catch_15
    move-exception v0

    .line 137
    .local v0, exception:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method private static sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x5b

    .line 180
    if-nez p0, :cond_9

    .line 181
    const-string v0, ""

    .line 184
    :goto_8
    return-object v0

    :cond_9
    const/16 v0, 0x3c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static showActivityOnMap(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 17
    .parameter "context"
    .parameter "location"

    .prologue
    .line 89
    const-string v11, "http://maps.google.com/maps"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v11, "lci"

    const-string v12, "com.google.latitudepublicupdates"

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v11

    if-eqz v11, :cond_81

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v9

    .line 94
    .local v9, position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x416312d000000000L

    div-double v3, v11, v13

    .line 95
    .local v3, latitude:D
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x416312d000000000L

    div-double v7, v11, v13

    .line 96
    .local v7, longitude:D
    const-string v11, "ll"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLatSpanE7()Z

    move-result v11

    if-eqz v11, :cond_81

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLngSpanE7()Z

    move-result v11

    if-eqz v11, :cond_81

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLatSpanE7()I

    move-result v11

    int-to-double v1, v11

    .line 99
    .local v1, latSpan:D
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLngSpanE7()I

    move-result v11

    int-to-double v5, v11

    .line 100
    .local v5, longSpan:D
    const-string v11, "spn"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    .end local v1           #latSpan:D
    .end local v3           #latitude:D
    .end local v5           #longSpan:D
    .end local v7           #longitude:D
    .end local v9           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_81
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 105
    const-string v11, "cid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasMapsUrlSignature()Z

    move-result v11

    if-eqz v11, :cond_9f

    .line 109
    const-string v11, "signature"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v11

    if-nez v11, :cond_107

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v11

    if-eqz v11, :cond_107

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v9

    .line 114
    .restart local v9       #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x416312d000000000L

    div-double v3, v11, v13

    .line 115
    .restart local v3       #latitude:D
    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x416312d000000000L

    div-double v7, v11, v13

    .line 116
    .restart local v7       #longitude:D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v10, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v11

    if-eqz v11, :cond_f6

    .line 119
    const/16 v11, 0x28

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/apps/plus/util/MapUtils;->sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_f6
    const-string v11, "q"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    .end local v3           #latitude:D
    .end local v7           #longitude:D
    .end local v9           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_ff
    :goto_ff
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 127
    return-void

    .line 122
    :cond_107
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v11

    if-eqz v11, :cond_ff

    .line 123
    const-string v11, "q"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_ff
.end method

.method public static showDrivingDirections(Landroid/content/Context;Lcom/google/api/services/plusi/model/Place;)V
    .registers 6
    .parameter "context"
    .parameter "location"

    .prologue
    .line 62
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    if-nez v2, :cond_10

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 63
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/util/MapUtils;->showPlaceOnMap(Landroid/content/Context;Lcom/google/api/services/plusi/model/Place;)V

    .line 80
    :goto_f
    return-void

    .line 67
    :cond_10
    const-string v2, "http://maps.google.com/maps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 68
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    if-eqz v2, :cond_66

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 72
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/MapUtils;->sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_55
    const-string v2, "daddr"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_5e
    :goto_5e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_f

    .line 75
    :cond_66
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 76
    const-string v2, "daddr"

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_5e
.end method

.method public static showPlaceOnMap(Landroid/content/Context;Lcom/google/api/services/plusi/model/Place;)V
    .registers 7
    .parameter "context"
    .parameter "location"

    .prologue
    .line 31
    const-string v2, "http://maps.google.com/maps"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    if-eqz v2, :cond_32

    .line 33
    const-string v2, "ll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v4, v4, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 37
    :cond_32
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    if-eqz v2, :cond_3d

    .line 38
    const-string v2, "cid"

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 41
    :cond_3d
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->clusterId:Ljava/lang/String;

    if-nez v2, :cond_8d

    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    if-eqz v2, :cond_8d

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v2, v2, Lcom/google/api/services/plusi/model/GeoCoordinates;->latitude:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->geo:Lcom/google/api/services/plusi/model/GeoCoordinates;

    iget-object v3, v3, Lcom/google/api/services/plusi/model/GeoCoordinates;->longitude:Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 45
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/util/MapUtils;->sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    :cond_7c
    const-string v2, "q"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_85
    :goto_85
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/apps/plus/util/MapUtils;->launchMapsActivity(Landroid/content/Context;Landroid/net/Uri;)V

    .line 53
    return-void

    .line 48
    :cond_8d
    iget-object v2, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 49
    const-string v2, "q"

    iget-object v3, p1, Lcom/google/api/services/plusi/model/Place;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_85
.end method
