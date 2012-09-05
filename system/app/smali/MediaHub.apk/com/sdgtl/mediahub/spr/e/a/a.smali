.class public final Lcom/sdgtl/mediahub/spr/e/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;
    .registers 7

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->X:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->ah:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    :try_start_1d
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->G:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_29} :catch_5e

    :goto_29
    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_5d

    if-nez p1, :cond_5d

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "formatList : typeName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", typeCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    return-object v0

    :catch_5e
    move-exception v1

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    goto :goto_29
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->a:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->b:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bD:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->c:I

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_5c

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "relevantProductList : relevantTotalCount:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", relevantStartNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", relevantEndNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5c
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aI:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_6c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_73

    return-object v2

    :cond_73
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->c(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6c
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sdgtl/mediahub/spr/common/dx;
    .registers 8

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dx;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/dx;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->a:I

    if-nez v2, :cond_dc

    const-string v2, "promotion_banner_caching_data"

    invoke-static {p0, v2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->c:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->e:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dx;->f:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_ba

    if-nez p2, :cond_ba

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserPromotionBanner[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeList : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_c5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_cc

    :goto_cb
    return-object v1

    :cond_cc
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dx;->g:Ljava/util/ArrayList;

    invoke-static {v3, p2}, Lcom/sdgtl/mediahub/spr/e/a/a;->d(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/cn;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_dc
    const-string v0, "parserPromotionBanner"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb
.end method

.method public static a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ec;
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ec;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/ec;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->b:Ljava/lang/String;

    :try_start_23
    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ao:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_1aa

    :goto_2f
    iget v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    if-nez v3, :cond_1ed

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->an:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->d:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ap:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->e:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->aq:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->f:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->g:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bG:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->h:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bH:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->i:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ar:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->j:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->b:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->k:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->cd:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->l:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ce:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->cf:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->n:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bT:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_d7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_1b0

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_1a9

    const-string v0, ""

    :goto_e3
    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_1ce

    const-string v1, "MediaHubParser"

    const-string v3, "***********************parserRegionsStoreUrl[START]***********************"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "regionStoreUrl : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", shopId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channelId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", domainSupportYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", downloadNetwork:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ratingLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ratingMark:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ratingRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", eulaVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientVer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->k:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", forceUpgradeYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrenttime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", languageList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    const-string v1, "***********************parserRegionsStoreUrl[End]***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a9
    :goto_1a9
    return-object v2

    :catch_1aa
    move-exception v3

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    goto/16 :goto_2f

    :cond_1b0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ec;->p:Ljava/util/ArrayList;

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/df;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/df;-><init>()V

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bI:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_d7

    :cond_1ce
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ec;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/df;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/df;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_e3

    :cond_1ed
    const-string v0, "parserRegionsStoreUrl"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a9
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 9

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v2, :cond_ed

    if-eqz p2, :cond_2f

    if-eqz p0, :cond_2f

    const-string v2, "main_caching_data"

    invoke-static {p0, v2, p1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->c:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->e:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->f:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_be

    if-nez p3, :cond_be

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserStoreList[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeList : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_c9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_dd

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_dc

    if-nez p3, :cond_dc

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserStoreList[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    :goto_dc
    return-object v1

    :cond_dd
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-static {v3, p3}, Lcom/sdgtl/mediahub/spr/e/a/a;->c(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c9

    :cond_ed
    const-string v0, "parserStoreList"

    invoke-static {p1, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/common/dz;)Ljava/lang/String;
    .registers 5

    const-string v0, "{\"state\":0,\"period\":0}"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bW:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bX:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SetPurchaseLockStateJSON"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_40

    const-string v0, "MediaHubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***********************"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[START]***********************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_41

    const-string v0, "MediaHubParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***********************"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[End]***********************"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return-void

    :cond_41
    add-int/lit16 v0, v1, 0x3e8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_58

    add-int/lit16 v0, v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_4f
    const-string v2, "MediaHubParser"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v0, v1, 0x3e8

    move v1, v0

    goto :goto_20

    :cond_58
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method private static b(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;
    .registers 7

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->X:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->b:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->bU:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->Y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    :try_start_35
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->Z:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_41} :catch_d6

    :goto_41
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->aa:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->f:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->bV:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->ab:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->h:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->ac:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_d5

    if-nez p1, :cond_d5

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pricingTypeList : pricingTypeCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", typeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reRentalYn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", promotionId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", qualityCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", price:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d5
    return-object v0

    :catch_d6
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    goto/16 :goto_41
.end method

.method private static b(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->i:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->b:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->j:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->c:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->au:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->d:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->m:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->f:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->o:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->p:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->h:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->N:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->r:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->j:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->z:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->A:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    :try_start_96
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->B:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->m:Ljava/lang/String;
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_a2} :catch_2a5

    :goto_a2
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->s:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->t:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->q:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->x:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->r:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->w:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->I:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->u:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->J:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->w:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->x:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->z:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->A:Ljava/lang/String;

    :try_start_14a
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->af:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->B:Ljava/lang/String;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_156} :catch_2ab

    :goto_156
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_278

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "product : productId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saffronItemId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saffronUserLiceseId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", categoryId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", episodeTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parentProductId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parentProductTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seasonEpisodeNo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", availability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hdmiYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastEpisodeYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", releaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileCompany:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mpaaRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", runningtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", synopsis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", director:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", archiveYn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_278
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_288
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2b2

    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->O:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_29e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2c2

    return-object v2

    :catch_2a5
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->m:Ljava/lang/String;

    goto/16 :goto_a2

    :catch_2ab
    move-exception v0

    const-string v0, "N"

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->B:Ljava/lang/String;

    goto/16 :goto_156

    :cond_2b2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_288

    :cond_2c2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->b(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_29e
.end method

.method public static b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dh;
    .registers 4

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dh;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dh;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dh;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dh;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/dh;->a:I

    if-nez v2, :cond_3e

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->as:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dh;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->ar:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dh;->d:Ljava/lang/String;

    :cond_3e
    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->m:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->n:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->d:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->o:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->e:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->p:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->f:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->t:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->g:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->x:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->i:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    :try_start_7e
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->C:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->k:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8a} :catch_2a6

    :goto_8a
    :try_start_8a
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->D:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->l:Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_96} :catch_2ad

    :goto_96
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->w:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->m:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->o:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->I:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->q:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->J:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->r:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->u:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->N:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->r:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->w:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->s:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->x:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->M:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->y:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->z:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->z:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->A:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    :try_start_14a
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->B:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->B:Ljava/lang/String;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_156} :catch_2b4

    :goto_156
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ay:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->C:Ljava/lang/String;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_27a

    if-nez p1, :cond_27a

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contentList : productId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", episodeTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", titleDuplicateYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parentProductId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parentProductTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileCompany:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", releaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", synopsis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mpaaRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", runningtime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", director:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seasonEpisodeNo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastEpisodeYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", leafProductFg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", availability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hdmiYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", focusedYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27a
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->O:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_28a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2ba

    new-instance v0, Lorg/json/JSONArray;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_29f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_2ca

    return-object v2

    :catch_2a6
    move-exception v0

    const-string v0, ""

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->k:Ljava/lang/String;

    goto/16 :goto_8a

    :catch_2ad
    move-exception v0

    const-string v0, ""

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->l:Ljava/lang/String;

    goto/16 :goto_96

    :catch_2b4
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->B:Ljava/lang/String;

    goto/16 :goto_156

    :cond_2ba
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->D:Ljava/util/ArrayList;

    invoke-static {v4, p1}, Lcom/sdgtl/mediahub/spr/e/a/a;->b(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_28a

    :cond_2ca
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->E:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29f
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/cr;
    .registers 5

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/cr;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/cr;-><init>()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->au:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->av:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->aw:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->ax:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->d:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->ay:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    :try_start_41
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->az:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->f:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_98

    :goto_4d
    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_97

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "storeCategoryList : categoryId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", categoryName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", categoryType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", focusedYn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", forucedProductId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/cr;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    return-object v0

    :catch_98
    move-exception v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/cr;->f:I

    goto :goto_4d
.end method

.method public static c(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dg;
    .registers 4

    const-string v0, "parserMediaHubDataInfo"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dg;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dg;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    if-nez v2, :cond_7f

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aS:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aT:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->d:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aU:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->e:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aV:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->f:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aW:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->g:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bx:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dg;->h:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->by:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dg;->i:Ljava/lang/String;

    :cond_7f
    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/cn;
    .registers 7

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cn;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/cn;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ai:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->a:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ak:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->b:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aj:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->am:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/cn;->d:Ljava/lang/String;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_69

    if-nez p1, :cond_69

    const-string v0, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bannerList : bannerName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/cn;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bannerId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/cn;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bannerType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sdgtl/mediahub/spr/common/cn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    new-instance v2, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aA:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_79
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_80

    return-object v1

    :cond_80
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/cn;->e:Ljava/util/ArrayList;

    invoke-static {v3, p1}, Lcom/sdgtl/mediahub/spr/e/a/a;->e(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/co;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_79
.end method

.method public static d(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dc;
    .registers 4

    const-string v0, "parserHelpMessage"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dc;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dc;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dc;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dc;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/dc;->a:I

    if-nez v2, :cond_37

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->at:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dc;->c:Ljava/lang/String;

    :cond_37
    return-object v0
.end method

.method private static d(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/dr;
    .registers 7

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dr;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/dr;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->au:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->av:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/dr;->b:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aw:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/dr;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->k:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/dr;->d:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ax:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/dr;->e:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ci:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_4c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_53

    return-object v1

    :cond_53
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sdgtl/mediahub/spr/e/a/a;->c(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c
.end method

.method private static e(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->h:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->F:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->F:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->u:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->A:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    :try_start_7e
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->B:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->B:Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8a} :catch_10f

    :goto_8a
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_f8

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ospSearchList : productId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", releaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->s:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", director:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mpaaRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hdmiYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f8
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_108
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_115

    return-object v2

    :catch_10f
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->B:Ljava/lang/String;

    goto/16 :goto_8a

    :cond_115
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->E:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_108
.end method

.method private static e(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/co;
    .registers 6

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/co;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/co;-><init>()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->k:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->b:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->N:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->c:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->d:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->al:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->e:Ljava/lang/String;

    :try_start_41
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->f:Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_a6

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->C:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->g:Ljava/lang/String;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_59} :catch_ac

    :goto_59
    :try_start_59
    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->D:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->h:Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_65} :catch_b2

    :goto_65
    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_a5

    if-nez p1, :cond_a5

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bannerProductList : productId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/co;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", productTypeCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/co;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", prodcuctType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/co;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", productTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/co;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    return-object v0

    :catch_a6
    move-exception v1

    const-string v1, ""

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->f:Ljava/lang/String;

    goto :goto_4d

    :catch_ac
    move-exception v1

    const-string v1, ""

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->g:Ljava/lang/String;

    goto :goto_59

    :catch_b2
    move-exception v1

    const-string v1, ""

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/co;->h:Ljava/lang/String;

    goto :goto_65
.end method

.method public static e(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ej;
    .registers 6

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ej;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/ej;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v2, :cond_c8

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ej;->e:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserStoreCategory[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "storeCategory : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_b8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_b7

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserStoreCategory[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-object v1

    :cond_b8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->c(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/cr;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_c8
    const-string v0, "parserStoreCategory"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static f(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;
    .registers 8

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    if-nez v2, :cond_116

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_53

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserProductInfo[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "productInfo : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aD:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;-><init>()V

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->ae:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->d:Ljava/lang/String;

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->ac:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_e8

    const-string v2, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "purchaseData : orderId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderItemId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pricingTypeCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dueDate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rentDays:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aA:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/e/a/a;->b(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aX:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_115

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserProductInfo[End]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_115
    :goto_115
    return-object v0

    :cond_116
    const-string v1, "parserProductInfo"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115
.end method

.method private static f(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/db;
    .registers 3

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/db;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/db;-><init>()V

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->bu:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    sget-object v1, Lcom/sdgtl/mediahub/spr/e/a/b;->bv:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dq;
    .registers 6

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dq;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/dq;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dq;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/dq;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/dq;->a:I

    if-nez v2, :cond_43

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->ch:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dq;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_44

    :cond_43
    return-object v1

    :cond_44
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dq;->d:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->d(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/dr;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method private static g(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/eu;
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/eu;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/eu;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/eu;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/eu;->b:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aG:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aH:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->d:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->bg:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->e:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->Q:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->f:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->S:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/eu;->g:D

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->T:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/eu;->h:D

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->U:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/eu;->i:D

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aM:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->k:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->l:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->m:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->o:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->n:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->p:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->o:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->s:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->q:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->r:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->x:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->s:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->u:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->I:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->v:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->J:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->w:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->x:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->y:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->z:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->A:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->B:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->C:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ae:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/eu;->D:Ljava/lang/String;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_2cd

    new-instance v0, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "userPurchaseList : orderId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->a:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderIdItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->b:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", license:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", paymentMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", c***N*****:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->f:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", netPrice:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->g:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", taxPrice:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->h:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", grossPrice:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->i:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", pricingTypeCode:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", pricingTypeDescription:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->k:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", productId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->l:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", productTitle:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->m:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", parentProductId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->n:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", parentProductTitle:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->o:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", lastEpisodeYn:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", releaseDate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", mpaaRating:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", userRating:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", runningTime:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", synopsis:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", actor:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->y:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", director:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->z:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", genre:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", purchaseDate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", purchaseDateGMT:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", dueDate:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/eu;->D:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2cd
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_2dd
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_2e4

    return-object v2

    :cond_2e4
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/eu;->E:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2dd
.end method

.method private static h(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/di;
    .registers 7

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aH:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->i:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->j:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->k:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->m:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->o:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->p:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->q:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->r:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->p:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->s:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->q:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->x:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    :try_start_107
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_113} :catch_346

    :goto_113
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->I:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->w:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->J:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ae:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ac:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ad:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->E:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->z:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->A:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    :try_start_197
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->B:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a3} :catch_34b

    :goto_1a3
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->af:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_319

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "myMediaList : orderId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orderIdItem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", license:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pricingTypeCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saffronItemId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", saffronUserLicenseId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTypeCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", episodeTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", parentProductTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seasonEpisodeNo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastEpisodeYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", releaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDateGMT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mpaaRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", runningTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", director:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", synopsis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dueDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rentDays:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vidoeAttrTypeCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->E:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", availability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hdmiYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", archiveYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_319
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->O:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_329
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_350

    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_33f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_360

    return-object v2

    :catch_346
    move-exception v0

    iput-object v5, v2, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    goto/16 :goto_113

    :catch_34b
    move-exception v0

    iput-object v5, v2, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    goto/16 :goto_1a3

    :cond_350
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->b(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_329

    :cond_360
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_33f
.end method

.method public static h(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 6

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v2, :cond_c8

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->e:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/ek;->f:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserOspSearch[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ospSearch : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_b8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_b7

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserOspSearch[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-object v1

    :cond_b8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->e(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_c8
    const-string v0, "parserOspSearch"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static i(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;
    .registers 11

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    if-nez v2, :cond_235

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->d:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aG:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->e:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->f:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->h:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->i:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->S:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->j:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->T:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->k:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->U:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->l:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->V:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->m:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->W:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->n:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->ae:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->o:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bi:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1a7

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserProductPurchaseRequest[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "productPurchaseResult : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orderId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orderItemId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->d:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", orderStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pricingTypeCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDateGMT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", netPrice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->j:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", taxPrice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->k:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", grossPrice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->l:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", costAmount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->m:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", additonalCostSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->n:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dueDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a7
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1b2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1c4

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_1c3

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserProductPurchaseRequest[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c3
    :goto_1c3
    return-object v1

    :cond_1c4
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;->q:Ljava/util/ArrayList;

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/du;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/du;-><init>()V

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bg:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/du;->a:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bh:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->Q:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/sdgtl/mediahub/spr/common/du;->c:Ljava/lang/String;

    sget-boolean v3, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v3, :cond_22e

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v6, "MediaHubParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "productPurchaseList : paymentMethod:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v5, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", paymentAmount:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v5, Lcom/sdgtl/mediahub/spr/common/du;->b:D

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", c***N*****:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/sdgtl/mediahub/spr/common/du;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22e
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1b2

    :cond_235
    const-string v0, "parserProductPurchaseRequest"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c3
.end method

.method private static i(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/er;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/er;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/er;-><init>()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->a:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->b:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->m:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->k:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->E:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->c:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->t:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->d:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->K:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->e:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->L:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->f:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aB:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->g:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->H:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->h:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->I:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->i:I

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->N:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->j:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->J:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->l:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->z:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->A:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->r:Ljava/lang/String;

    :try_start_ae
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->B:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->s:Ljava/lang/String;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_ba} :catch_20f

    :goto_ba
    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aC:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->m:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->n:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->x:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->o:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->y:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->p:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->t:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->u:Ljava/lang/String;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->aO:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->v:I

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_1f8

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userPurchaseProduct : productId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", episodeTitle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", releaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", filmCompany:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", director:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", genre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mpaaRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userRating:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", productType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", runningTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", availability:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hdmiYn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", synopsis:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchaseDateGMT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->t:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", purchasePrice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/er;->v:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f8
    new-instance v3, Lorg/json/JSONArray;

    sget-object v0, Lcom/sdgtl/mediahub/spr/e/a/b;->ag:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_208
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_215

    return-object v2

    :catch_20f
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/er;->s:Ljava/lang/String;

    goto/16 :goto_ba

    :cond_215
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/er;->w:Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Lorg/json/JSONObject;Z)Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_208
.end method

.method public static j(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ds;
    .registers 6

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ds;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ds;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    if-nez v2, :cond_c2

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bJ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->c:Ljava/lang/String;

    :try_start_32
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->cc:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->d:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3e} :catch_bb

    :goto_3e
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aK:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->e:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aL:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->f:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->G:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/ds;->g:J

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_ba

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserProductDownloadUrl[START]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "productDownloadUrl : resultCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", contentId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/ds;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserProductDownloadUrl[End]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ba
    :goto_ba
    return-object v0

    :catch_bb
    move-exception v2

    const-string v2, ""

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/ds;->d:Ljava/lang/String;

    goto/16 :goto_3e

    :cond_c2
    const-string v1, "parserProductDownloadUrl"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba
.end method

.method public static k(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ei;
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ei;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/ei;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->b:Ljava/lang/String;

    iget v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    if-nez v3, :cond_1c2

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->aJ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->aY:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->d:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->aZ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->e:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bb:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->f:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bd:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->g:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ba:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ei;->h:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ca:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_7a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_154

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_153

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v0, "MediaHubParser"

    const-string v4, "***********************parserSignInResult[START]***********************"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mResultCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mClientMessage : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mUserId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mBlackListCheck : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mB********R***** : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mDeviceRegistResult : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mHdAvailableDevice : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mMigrationYn : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_144
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_165

    const-string v0, "MediaHubParser"

    const-string v1, "***********************parserSignInResult[End]***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_153
    :goto_153
    return-object v2

    :cond_154
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/e/a/a;->f(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/db;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7a

    :cond_165
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****N***n*** : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICENICKNAME:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****Id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICEID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_144

    :cond_1c2
    const-string v0, "parserSignInResult"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_153
.end method

.method public static l(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dk;
    .registers 9

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dk;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/dk;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->a:I

    if-nez v2, :cond_12c

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dk;->e:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserNewEpisode[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "newEpisode : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_b8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_b7

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserNewEpisode[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-object v1

    :cond_b8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/dl;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/dl;-><init>()V

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/sdgtl/mediahub/spr/common/dl;->a:I

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->l:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/dl;->b:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->v:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/dl;->c:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bf:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v5, Lcom/sdgtl/mediahub/spr/common/dl;->d:I

    sget-boolean v3, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v3, :cond_125

    const-string v3, "MediaHubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newEpisodeList : productId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v5, Lcom/sdgtl/mediahub/spr/common/dl;->a:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", productTitle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/sdgtl/mediahub/spr/common/dl;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newEpCnt:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/sdgtl/mediahub/spr/common/dl;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a6

    :cond_12c
    const-string v0, "parserNewEpisode"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static m(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dm;
    .registers 10

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/dm;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/dm;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    if-nez v3, :cond_252

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->c:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->d:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/dm;->e:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_56
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_e5

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_e4

    const-string v0, "MediaHubParser"

    const-string v3, "***********************parserPaymentMethod[START]***********************"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mResultCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mClientMessage : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mTotalCount : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/dm;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mStartNum : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/dm;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mEndNum : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/sdgtl/mediahub/spr/common/dm;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d5
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_173

    const-string v0, "MediaHubParser"

    const-string v1, "***********************parserPaymentMethod[End]***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    return-object v2

    :cond_e5
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/dn;-><init>()V

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bk:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bj:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bg:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bl:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->u:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->e:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bo:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->f:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->Q:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->g:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->R:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->h:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bm:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v6, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bn:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sdgtl/mediahub/spr/common/dn;->j:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_56

    :cond_173
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mUserPaymentMethodId : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPaymentMethod : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAvailableMethodYn : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mN***n*** : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mC***N***** : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/dn;->g:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCardTypeCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mNewCardYn : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mBalance : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/dn;->i:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mExpirationDate : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_d5

    :cond_252
    const-string v0, "parserPaymentMethod"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e4
.end method

.method public static n(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/en;
    .registers 9

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/en;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/en;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->a:I

    if-nez v2, :cond_12b

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bq:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->e:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/en;->f:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_b3

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserSystemSupportCardType[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "systemSupportCardType : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", paymentMethodId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_be
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_d0

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_cf

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserSystemSupportCardType[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    :goto_cf
    return-object v1

    :cond_d0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/em;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/em;-><init>()V

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bo:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/em;->a:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bp:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/em;->b:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->u:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/sdgtl/mediahub/spr/common/em;->c:Ljava/lang/String;

    sget-boolean v3, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v3, :cond_125

    const-string v3, "MediaHubParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "systemSupportCardList : cardTypeCode:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/sdgtl/mediahub/spr/common/em;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cardName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/sdgtl/mediahub/spr/common/em;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_125
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_12b
    const-string v0, "parserSystemSupportCardType"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cf
.end method

.method public static o(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/de;
    .registers 6

    const-string v0, "parserDirectBillingPurchaseResult"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/de;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/de;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->a:I

    if-nez v2, :cond_cc

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->d:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->h:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->e:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bY:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bZ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/de;->g:Ljava/lang/String;

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_cb

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserDirectBillingPurchaseResult[START]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "directBillingPurchaseResult : resultCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", clientMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orderId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", orderItemId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->d:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", productId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initToken:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/de;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserDirectBillingPurchaseResult[End]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    return-object v0

    :cond_cc
    const-string v1, "parserDirectBillingPurchaseResult"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_cb
.end method

.method public static p(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/et;
    .registers 6

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/et;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/et;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    if-nez v2, :cond_c8

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/et;->e:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserUserPurchases[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "userPurchases : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_b8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_b7

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserUserPurchases[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-object v1

    :cond_b8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/et;->f:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->g(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/eu;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_c8
    const-string v0, "parserUserPurchases"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static q(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dj;
    .registers 6

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dj;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/dj;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    if-nez v2, :cond_c8

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->c:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->d:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/dj;->e:I

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_9b

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserMymedia[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "myMedia : resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", clientMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", totalCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endNum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_a6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_b8

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_b7

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserMymedia[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    :goto_b7
    return-object v1

    :cond_b8
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/e/a/a;->h(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_c8
    const-string v0, "parserMymedia"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7
.end method

.method public static r(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/es;
    .registers 8

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/es;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/es;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    if-nez v2, :cond_1e0

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->c:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aF:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->d:J

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aG:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->e:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aH:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->f:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->P:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aM:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->h:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->S:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->i:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->T:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->j:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->U:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->k:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->V:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->l:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->W:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->m:D

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->ae:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->n:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bg:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->p:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->ac:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->o:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->Q:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->q:Ljava/lang/String;

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_1c4

    new-instance v2, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v3, "MediaHubParser"

    const-string v4, "***********************parserUserPurchaseProductInfo[START]***********************"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "userPurchaseProductInfo : orderId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderIdItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderItemId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orderStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", license:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pricingTypeCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pricingTypeDescription:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", netPrice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->i:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", taxPrice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->j:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", grossPrice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->k:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "costAmount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->l:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", additionalCostSeq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->m:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dueDate:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", paymentMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", rentDays:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", c***N*****:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/es;->q:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c4
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->aA:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->i(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/er;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/es;->r:Lcom/sdgtl/mediahub/spr/common/er;

    sget-boolean v1, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v1, :cond_1df

    const-string v1, "MediaHubParser"

    const-string v2, "***********************parserUserPurchaseProductInfo[End]***********************"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1df
    :goto_1df
    return-object v0

    :cond_1e0
    const-string v1, "parserUserPurchaseProductInfo"

    invoke-static {p0, v1}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1df
.end method

.method public static s(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ep;
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ep;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/ep;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->b:Ljava/lang/String;

    iget v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    if-nez v3, :cond_280

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->br:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bs:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->d:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->e:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->e:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->f:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->f:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ep;->g:I

    new-instance v3, Lorg/json/JSONArray;

    sget-object v4, Lcom/sdgtl/mediahub/spr/e/a/b;->g:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v4}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v1

    :goto_77
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_137

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_136

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v0, "MediaHubParser"

    const-string v4, "***********************parserUserDeviceInfo[START]***********************"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resultCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clientMessage : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deletePeriod : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastRemovalDate : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "totalCount : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startNum : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "endNum : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_127
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1a1

    const-string v0, "MediaHubParser"

    const-string v1, "***********************parserUserDeviceInfo[End]***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_136
    :goto_136
    return-object v2

    :cond_137
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/eq;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/eq;-><init>()V

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bu:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bv:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->b:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bw:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bx:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bz:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->e:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->cb:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    sget-object v7, Lcom/sdgtl/mediahub/spr/e/a/b;->bA:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v7}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sdgtl/mediahub/spr/common/eq;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_77

    :cond_1a1
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ep;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eq;

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****N***n*** : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICENICKNAME:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/eq;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****Id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICEID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/eq;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****Uid : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICEUID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/eq;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deviceStatus : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/eq;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "deviceTypeCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/eq;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "domainHardeningYn : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/common/eq;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "regDate : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/eq;->g:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_127

    :cond_280
    const-string v0, "parserUserDeviceInfo"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_136
.end method

.method public static t(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/eg;
    .registers 4

    const-string v0, "parserResultCodeClientMessage"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/eg;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/eg;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static u(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ef;
    .registers 9

    const/4 v1, 0x0

    new-instance v2, Lcom/sdgtl/mediahub/spr/common/ef;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/ef;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/ef;->b:Ljava/lang/String;

    iget v3, v2, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    if-nez v3, :cond_f1

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->ca:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_32
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_84

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_83

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v0, "MediaHubParser"

    const-string v4, "***********************parserRemoveDevice[START]***********************"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mResultCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mClientMessage : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ef;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ef;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_94

    const-string v0, "MediaHubParser"

    const-string v1, "***********************parserRemoveDevice[End]***********************"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    :goto_83
    return-object v2

    :cond_84
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, v2, Lcom/sdgtl/mediahub/spr/common/ef;->c:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/e/a/a;->f(Lorg/json/JSONObject;)Lcom/sdgtl/mediahub/spr/common/db;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_94
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ef;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/db;

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****N***n*** : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICENICKNAME:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sdgtl/mediahub/spr/common/db;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MediaHubParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "d*****Id : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEVICEID:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/db;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_f1
    const-string v0, "parserRemoveDevice"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83
.end method

.method public static v(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cw;
    .registers 11

    const/4 v9, 0x0

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/cw;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/cw;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bE:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-eqz v2, :cond_39

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0xfa2

    if-eq v2, v3, :cond_39

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0x41b

    if-eq v2, v3, :cond_39

    iget v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0xfa5

    if-ne v2, v3, :cond_15d

    :cond_39
    :try_start_39
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bJ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bK:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bc:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    sget-boolean v2, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v2, :cond_af

    const-string v2, "MediaHubParser"

    const-string v3, "***********************parserDeviceDomainHardening[START]***********************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v3, "MediaHubParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deviceDomainHardening : resultCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", clientMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", s******Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", a******Id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_af
    new-instance v2, Lorg/json/JSONArray;

    sget-object v3, Lcom/sdgtl/mediahub/spr/e/a/b;->be:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_bf
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_d1

    sget-boolean v0, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v0, :cond_d0

    const-string v0, "MediaHubParser"

    const-string v2, "***********************parserDeviceDomainHardening[End]***********************"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    :goto_d0
    return-object v1

    :cond_d1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, v1, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/cp;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/cp;-><init>()V

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->aP:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->bL:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/cp;->d:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->aQ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sdgtl/mediahub/spr/common/cp;->b:Ljava/lang/String;

    sget-object v6, Lcom/sdgtl/mediahub/spr/e/a/b;->aR:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v6}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/sdgtl/mediahub/spr/common/cp;->c:Ljava/lang/String;

    sget-boolean v3, Lcom/sdgtl/mediahub/spr/a;->b:Z

    if-eqz v3, :cond_14b

    new-instance v3, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v6, "MediaHubParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "beDeletedDevices : oldUserId:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldS******Id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/sdgtl/mediahub/spr/common/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldA******Id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/sdgtl/mediahub/spr/common/cp;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14b
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_14e} :catch_152

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_bf

    :catch_152
    move-exception v0

    iput-object v9, v1, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iput-object v9, v1, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    iput-object v9, v1, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    iput-object v9, v1, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    goto/16 :goto_d0

    :cond_15d
    const-string v0, "parserDeviceDomainHardening"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d0
.end method

.method public static w(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cm;
    .registers 5

    const/4 v3, 0x0

    const-string v0, "AccessTokenInfo"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/cm;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/cm;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->e:Ljava/lang/String;

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->g:Ljava/lang/String;

    :try_start_16
    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bM:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bN:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->b:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bO:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bP:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_46} :catch_47

    :goto_46
    return-object v0

    :catch_47
    move-exception v2

    const/4 v2, -0x1

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->a:I

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->b:Ljava/lang/String;

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bQ:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->e:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bR:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->f:Ljava/lang/String;

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bS:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cm;->g:Ljava/lang/String;

    goto :goto_46
.end method

.method public static x(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/dz;
    .registers 4

    const-string v0, "parserApplicationInfo"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/dz;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/dz;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bW:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dz;->a:I

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bX:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sdgtl/mediahub/spr/common/dz;->b:J

    return-object v0
.end method

.method public static y(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/cs;
    .registers 4

    const-string v0, "parserCheckTime"

    invoke-static {p0, v0}, Lcom/sdgtl/mediahub/spr/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/cs;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/cs;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->a:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->a:I

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->a:I

    if-nez v2, :cond_2f

    sget-object v2, Lcom/sdgtl/mediahub/spr/e/a/b;->bT:Lcom/sdgtl/mediahub/spr/e/a/b;

    invoke-virtual {v2}, Lcom/sdgtl/mediahub/spr/e/a/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    :cond_2f
    return-object v0
.end method
