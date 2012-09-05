.class public Lcom/google/android/apps/plus/util/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x5b

    .line 74
    if-nez p0, :cond_9

    .line 75
    const-string v0, ""

    .line 78
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
    .registers 21
    .parameter "context"
    .parameter "location"

    .prologue
    .line 22
    const-string v1, "http://maps.google.com/maps"

    .line 23
    .local v1, MAPS_BASE_URL:Ljava/lang/String;
    const-string v15, "http://maps.google.com/maps"

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 25
    .local v2, builder:Landroid/net/Uri$Builder;
    const-string v15, "lci"

    const-string v16, "com.google.latitudepublicupdates"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v15

    if-eqz v15, :cond_91

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v13

    .line 28
    .local v13, position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x416312d000000000L

    div-double v7, v15, v17

    .line 29
    .local v7, latitude:D
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x416312d000000000L

    div-double v11, v15, v17

    .line 30
    .local v11, longitude:D
    const-string v15, "ll"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLatSpanE7()Z

    move-result v15

    if-eqz v15, :cond_91

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLngSpanE7()Z

    move-result v15

    if-eqz v15, :cond_91

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLatSpanE7()I

    move-result v15

    int-to-double v5, v15

    .line 33
    .local v5, latSpan:D
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLngSpanE7()I

    move-result v15

    int-to-double v9, v15

    .line 34
    .local v9, longSpan:D
    const-string v15, "spn"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 38
    .end local v5           #latSpan:D
    .end local v7           #latitude:D
    .end local v9           #longSpan:D
    .end local v11           #longitude:D
    .end local v13           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    :cond_91
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v15

    if-eqz v15, :cond_a2

    .line 39
    const-string v15, "cid"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getLocalClusterId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    :cond_a2
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasMapsUrlSignature()Z

    move-result v15

    if-eqz v15, :cond_b3

    .line 43
    const-string v15, "signature"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getMapsUrlSignature()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
    :cond_b3
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasLocalClusterId()Z

    move-result v15

    if-nez v15, :cond_12d

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasPosition()Z

    move-result v15

    if-eqz v15, :cond_12d

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;

    move-result-object v13

    .line 48
    .restart local v13       #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLatitudeE7()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x416312d000000000L

    div-double v7, v15, v17

    .line 49
    .restart local v7       #latitude:D
    invoke-virtual {v13}, Lcom/google/wireless/tacotruck/proto/Data$Point;->getLongitudeE7()I

    move-result v15

    int-to-double v15, v15

    const-wide v17, 0x416312d000000000L

    div-double v11, v15, v17

    .line 50
    .restart local v11       #longitude:D
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v14, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2c

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v15

    if-eqz v15, :cond_10a

    .line 53
    const/16 v15, 0x28

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/apps/plus/util/MapUtils;->sanitizedLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x29

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :cond_10a
    const-string v15, "q"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    .end local v7           #latitude:D
    .end local v11           #longitude:D
    .end local v13           #position:Lcom/google/wireless/tacotruck/proto/Data$Point;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_115
    :goto_115
    new-instance v4, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 61
    .local v4, intent:Landroid/content/Intent;
    const-string v15, "com.google.android.apps.maps"

    invoke-virtual {v4, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    :try_start_127
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_127 .. :try_end_12c} :catch_13f

    .line 68
    :goto_12c
    return-void

    .line 56
    .end local v4           #intent:Landroid/content/Intent;
    :cond_12d
    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->hasName()Z

    move-result v15

    if-eqz v15, :cond_115

    .line 57
    const-string v15, "q"

    invoke-virtual/range {p1 .. p1}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_115

    .line 65
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_13f
    move-exception v3

    .line 66
    .local v3, exception:Landroid/content/ActivityNotFoundException;
    const/4 v15, 0x0

    invoke-static {v4, v15}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_12c
.end method
