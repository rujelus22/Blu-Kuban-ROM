.class Lcom/google/ads/ResizeResponse;
.super Ljava/lang/Object;
.source "ResizeResponse.java"

# interfaces
.implements Lcom/google/ads/AdResponse;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateExpandDirection(IIII)Z
    .registers 5
    .parameter "top"
    .parameter "bottom"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 66
    if-gtz p0, :cond_8

    if-gtz p1, :cond_8

    if-gtz p2, :cond_8

    if-lez p3, :cond_12

    :cond_8
    if-ltz p0, :cond_12

    if-ltz p1, :cond_12

    if-ltz p2, :cond_12

    if-ltz p3, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public run(Ljava/util/Map;Lcom/google/ads/GoogleAdView;)V
    .registers 18
    .parameter
    .parameter "adView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/GoogleAdView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 28
    .local v11, strWidth:Ljava/lang/String;
    const-string v14, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 29
    .local v7, strHeight:Ljava/lang/String;
    const-string v14, "left"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 30
    .local v8, strLeft:Ljava/lang/String;
    const-string v14, "right"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 31
    .local v9, strRight:Ljava/lang/String;
    const-string v14, "top"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 32
    .local v10, strTop:Ljava/lang/String;
    const-string v14, "bottom"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 38
    .local v6, strBottom:Ljava/lang/String;
    if-eqz v11, :cond_7b

    :try_start_3e
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 39
    .local v13, width:I
    :goto_42
    if-eqz v11, :cond_80

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 40
    .local v3, height:I
    :goto_48
    if-eqz v8, :cond_85

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 41
    .local v4, left:I
    :goto_4e
    if-eqz v9, :cond_87

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 42
    .local v5, right:I
    :goto_54
    if-eqz v10, :cond_89

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 43
    .local v12, top:I
    :goto_5a
    if-eqz v6, :cond_8b

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_5f} :catch_8d

    move-result v1

    .line 53
    .local v1, bottom:I
    :goto_60
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdWidth()I

    move-result v14

    if-ne v13, v14, :cond_6c

    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdHeight()I

    move-result v14

    if-eq v3, v14, :cond_8f

    .line 54
    :cond_6c
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v14

    if-eqz v14, :cond_75

    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->closeAdImmediately()V

    .line 57
    :cond_75
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Lcom/google/ads/GoogleAdView;->resize(II)V

    .line 63
    .end local v1           #bottom:I
    .end local v3           #height:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v12           #top:I
    .end local v13           #width:I
    :cond_7a
    :goto_7a
    return-void

    .line 38
    :cond_7b
    :try_start_7b
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdWidth()I

    move-result v13

    goto :goto_42

    .line 39
    .restart local v13       #width:I
    :cond_80
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdHeight()I
    :try_end_83
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_83} :catch_8d

    move-result v3

    goto :goto_48

    .line 40
    .restart local v3       #height:I
    :cond_85
    const/4 v4, 0x0

    goto :goto_4e

    .line 41
    .restart local v4       #left:I
    :cond_87
    const/4 v5, 0x0

    goto :goto_54

    .line 42
    .restart local v5       #right:I
    :cond_89
    const/4 v12, 0x0

    goto :goto_5a

    .line 43
    .restart local v12       #top:I
    :cond_8b
    const/4 v1, 0x0

    goto :goto_60

    .line 44
    .end local v3           #height:I
    .end local v4           #left:I
    .end local v5           #right:I
    .end local v12           #top:I
    .end local v13           #width:I
    :catch_8d
    move-exception v2

    .line 46
    .local v2, e:Ljava/lang/NumberFormatException;
    goto :goto_7a

    .line 58
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #bottom:I
    .restart local v3       #height:I
    .restart local v4       #left:I
    .restart local v5       #right:I
    .restart local v12       #top:I
    .restart local v13       #width:I
    :cond_8f
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v14

    if-eqz v14, :cond_a1

    if-nez v4, :cond_a1

    if-nez v5, :cond_a1

    if-nez v12, :cond_a1

    if-nez v1, :cond_a1

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->retractAd()V

    goto :goto_7a

    .line 60
    :cond_a1
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v14

    if-nez v14, :cond_7a

    invoke-static {v12, v1, v4, v5}, Lcom/google/ads/ResizeResponse;->validateExpandDirection(IIII)Z

    move-result v14

    if-eqz v14, :cond_7a

    .line 61
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v1, v4, v5}, Lcom/google/ads/GoogleAdView;->expandAd(IIII)V

    goto :goto_7a
.end method
