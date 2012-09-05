.class public Lcom/sprint/dsa/data/ContentParser;
.super Ljava/lang/Object;
.source "ContentParser.java"


# static fields
.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_COST:Ljava/lang/String; = "cost"

.field private static final ATTR_DESC:Ljava/lang/String; = "desc"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_EXP:Ljava/lang/String; = "exp"

.field private static final ATTR_EXTRA:Ljava/lang/String; = "extra"

.field private static final ATTR_HEADER:Ljava/lang/String; = "header"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IMG:Ljava/lang/String; = "img"

.field private static final ATTR_KEY:Ljava/lang/String; = "key"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_OPT:Ljava/lang/String; = "opt"

.field private static final ATTR_ORDER:Ljava/lang/String; = "order"

.field private static final ATTR_PACK_ID:Ljava/lang/String; = "packId"

.field private static final ATTR_RATING:Ljava/lang/String; = "rating"

.field private static final ATTR_SID:Ljava/lang/String; = "sid"

.field private static final ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_URI:Ljava/lang/String; = "uri"

.field private static final ATTR_URL:Ljava/lang/String; = "url"

.field private static final ATTR_VER:Ljava/lang/String; = "ver"

.field private static final ATTR_VISIBLE:Ljava/lang/String; = "visible"

.field private static TAG:Ljava/lang/String; = null

.field private static final TAG_ALERT:Ljava/lang/String; = "alert"

.field private static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field private static final TAG_DIAGNOSTIC:Ljava/lang/String; = "diagnostic"

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TAG_INFO:Ljava/lang/String; = "info"

.field private static final TAG_MSG:Ljava/lang/String; = "msg"

.field private static final TAG_PACK:Ljava/lang/String; = "pack"

.field private static final TAG_PAGE:Ljava/lang/String; = "page"

.field private static final TAG_PCATEGORY:Ljava/lang/String; = "pcategory"

.field private static final TAG_PROMOTION:Ljava/lang/String; = "promotion"

.field private static final TAG_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG_SETTINGS:Ljava/lang/String; = "settings"

.field private static final TAG_SPA:Ljava/lang/String; = "spa"

.field private static final TAG_STRING:Ljava/lang/String; = "string"

.field private static final TAG_STYLE:Ljava/lang/String; = "style"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "SprintZone_ContentParser"

    sput-object v0, Lcom/sprint/dsa/data/ContentParser;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;
    .registers 45
    .parameter "parser"
    .parameter "scheme"

    .prologue
    .line 86
    const/4 v15, 0x1

    .line 87
    .local v15, countCategories:I
    const-string v32, ""

    .line 88
    .local v32, pageId:Ljava/lang/String;
    const-string v3, "promo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 89
    const-string v32, "0"

    .line 93
    :cond_f
    new-instance v14, Lcom/sprint/dsa/data/Content;

    invoke-direct {v14}, Lcom/sprint/dsa/data/Content;-><init>()V

    .line 95
    .local v14, content:Lcom/sprint/dsa/data/Content;
    :try_start_14
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v20

    .line 96
    .local v20, eventType:I
    const-string v37, ""

    .line 97
    .local v37, tagName:Ljava/lang/String;
    const/16 v31, 0x0

    .line 99
    .local v31, pack:Lcom/sprint/dsa/pack/Pack;
    const/16 v18, 0x0

    .line 100
    .local v18, diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    const/16 v17, 0x0

    .line 101
    .local v17, diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    const/16 v22, 0x0

    .line 102
    .local v22, iDiag:I
    const/16 v24, 0x0

    .local v24, iDiagGroup:I
    move/from16 v25, v24

    .end local v24           #iDiagGroup:I
    .local v25, iDiagGroup:I
    move/from16 v23, v22

    .end local v22           #iDiag:I
    .local v23, iDiag:I
    move/from16 v16, v15

    .line 104
    .end local v15           #countCategories:I
    .local v16, countCategories:I
    :goto_2a
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_32

    move/from16 v15, v16

    .line 326
    .end local v14           #content:Lcom/sprint/dsa/data/Content;
    .end local v16           #countCategories:I
    .end local v17           #diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .end local v18           #diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .end local v20           #eventType:I
    .end local v23           #iDiag:I
    .end local v25           #iDiagGroup:I
    .end local v31           #pack:Lcom/sprint/dsa/pack/Pack;
    .end local v37           #tagName:Ljava/lang/String;
    .restart local v15       #countCategories:I
    :goto_31
    return-object v14

    .line 105
    .end local v15           #countCategories:I
    .restart local v14       #content:Lcom/sprint/dsa/data/Content;
    .restart local v16       #countCategories:I
    .restart local v17       #diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .restart local v18       #diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .restart local v20       #eventType:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    .restart local v31       #pack:Lcom/sprint/dsa/pack/Pack;
    .restart local v37       #tagName:Ljava/lang/String;
    :cond_32
    packed-switch v20, :pswitch_data_5c0

    :cond_35
    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .line 316
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    :goto_3b
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_3e} :catch_5b0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3e} :catch_5b4

    move-result v20

    move/from16 v25, v24

    .end local v24           #iDiagGroup:I
    .restart local v25       #iDiagGroup:I
    move/from16 v23, v22

    .end local v22           #iDiag:I
    .restart local v23       #iDiag:I
    move/from16 v16, v15

    .end local v15           #countCategories:I
    .restart local v16       #countCategories:I
    goto :goto_2a

    :pswitch_46
    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .line 108
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto :goto_3b

    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :pswitch_4d
    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .line 111
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto :goto_3b

    .line 113
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :pswitch_54
    :try_start_54
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    .line 116
    const-string v3, "spa"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 117
    const/4 v3, 0x0

    const-string v5, "ver"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 118
    .local v40, version:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "opt"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 119
    .local v29, optional:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "url"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 120
    .local v38, url:Ljava/lang/String;
    if-eqz v40, :cond_a5

    invoke-static/range {v40 .. v40}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    :goto_87
    move-wide/from16 v0, v41

    iput-wide v0, v14, Lcom/sprint/dsa/data/Content;->mAppVer:J

    .line 121
    move-object/from16 v0, v38

    iput-object v0, v14, Lcom/sprint/dsa/data/Content;->mUpgradePath:Ljava/lang/String;

    .line 122
    if-eqz v29, :cond_a8

    const-string v3, "1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a8

    const/4 v3, 0x1

    :goto_9c
    iput-boolean v3, v14, Lcom/sprint/dsa/data/Content;->mOptional:Z

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto :goto_3b

    .line 120
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_a5
    const-wide/16 v41, 0x0

    goto :goto_87

    .line 122
    :cond_a8
    const/4 v3, 0x0

    goto :goto_9c

    .line 125
    .end local v29           #optional:Ljava/lang/String;
    .end local v38           #url:Ljava/lang/String;
    .end local v40           #version:Ljava/lang/String;
    :cond_aa
    const-string v3, "promotion"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 126
    const/4 v3, 0x0

    const-string v5, "ver"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 127
    .restart local v40       #version:Ljava/lang/String;
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/data/PageContent;->setVersion(Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 130
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v40           #version:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_cc
    const-string v3, "category"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 131
    new-instance v13, Lcom/sprint/dsa/data/CategoryItem;

    invoke-direct {v13}, Lcom/sprint/dsa/data/CategoryItem;-><init>()V

    .line 132
    .local v13, category:Lcom/sprint/dsa/data/CategoryItem;
    const/4 v3, 0x0

    const-string v5, "sid"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 133
    .local v34, sid:Ljava/lang/String;
    if-eqz v34, :cond_ee

    .line 134
    invoke-static/range {v34 .. v34}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    move-wide/from16 v0, v41

    iput-wide v0, v13, Lcom/sprint/dsa/data/CategoryItem;->mSid:J

    .line 135
    :cond_ee
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/sprint/dsa/data/CategoryItem;->mTitle:Ljava/lang/String;

    .line 136
    const/4 v3, 0x1

    iput-boolean v3, v13, Lcom/sprint/dsa/data/CategoryItem;->mExpanded:Z

    .line 137
    const/4 v3, 0x0

    const-string v5, "packId"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/sprint/dsa/data/CategoryItem;->mPackId:Ljava/lang/String;

    .line 140
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v3, v13}, Lcom/sprint/dsa/data/PageContent;->addCategory(Lcom/sprint/dsa/data/CategoryItem;)V

    .line 142
    const-string v3, "promo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 143
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 144
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54 .. :try_end_11f} :catch_5bc
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_11f} :catch_5b8

    move-result v41

    add-int/lit8 v15, v16, 0x1

    .line 143
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    :try_start_122
    move/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v3, v5, v0, v1}, Lcom/sprint/dsa/data/Pages;->addContent(III)V
    :try_end_129
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_122 .. :try_end_129} :catch_5b0
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_129} :catch_5b4

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    goto/16 :goto_3b

    .line 148
    .end local v13           #category:Lcom/sprint/dsa/data/CategoryItem;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v34           #sid:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_12f
    :try_start_12f
    const-string v3, "settings"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    .line 149
    const/4 v3, 0x0

    const-string v5, "ver"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 150
    .restart local v40       #version:Ljava/lang/String;
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/SzSettings;->setVersion(Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 153
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v40           #version:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_151
    const-string v3, "setting"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_197

    .line 154
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, id:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "tag"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, tag:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, title:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "desc"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 158
    .local v8, desc:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "packId"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, packId:Ljava/lang/String;
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mSettings:Lcom/sprint/dsa/SzSettings;

    const-string v5, "1"

    invoke-virtual/range {v3 .. v9}, Lcom/sprint/dsa/SzSettings;->addSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 163
    .end local v4           #id:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #desc:Ljava/lang/String;
    .end local v9           #packId:Ljava/lang/String;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_197
    const-string v3, "feature"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28c

    .line 164
    new-instance v33, Lcom/sprint/dsa/data/FeatureItem;

    invoke-direct/range {v33 .. v33}, Lcom/sprint/dsa/data/FeatureItem;-><init>()V

    .line 165
    .local v33, promo:Lcom/sprint/dsa/data/FeatureItem;
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mCampaign:Ljava/lang/String;

    .line 166
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    .line 167
    const/4 v3, 0x0

    const-string v5, "desc"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mDescription:Ljava/lang/String;

    .line 169
    const/4 v3, 0x0

    const-string v5, "exp"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-static {v3}, Lcom/sprint/dsa/Util;->parseExpirationDate(Ljava/lang/String;)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/sprint/dsa/data/FeatureItem;->mExpiration:J

    .line 170
    const/4 v3, 0x0

    const-string v5, "cost"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mCost:Ljava/lang/String;

    .line 171
    const/4 v3, 0x0

    const-string v5, "rating"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 172
    .local v35, strRating:Ljava/lang/String;
    if-eqz v35, :cond_202

    .line 173
    invoke-static/range {v35 .. v35}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    move-wide/from16 v0, v41

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/sprint/dsa/data/FeatureItem;->mRating:J

    .line 174
    :cond_202
    const/4 v3, 0x0

    const-string v5, "action"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    .line 175
    const/4 v3, 0x0

    const-string v5, "uri"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    .line 176
    const/4 v3, 0x0

    const-string v5, "extra"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mExtra:Ljava/lang/String;

    .line 177
    const/4 v3, 0x0

    const-string v5, "img"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mImageUrl:Ljava/lang/String;

    .line 178
    const/4 v3, 0x1

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    .line 179
    const/4 v3, 0x1

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    .line 180
    const/4 v3, 0x0

    const-string v5, "enabled"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 181
    .local v11, attrEnabled:Ljava/lang/String;
    if-eqz v11, :cond_258

    const-string v3, "false"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_258

    .line 182
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    .line 184
    :cond_258
    const/4 v3, 0x0

    const-string v5, "visible"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, attrVisible:Ljava/lang/String;
    if-eqz v12, :cond_270

    const-string v3, "false"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_270

    .line 186
    const/4 v3, 0x0

    move-object/from16 v0, v33

    iput-boolean v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    .line 188
    :cond_270
    const/4 v3, 0x0

    const-string v5, "packId"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    iput-object v3, v0, Lcom/sprint/dsa/data/FeatureItem;->mPackId:Ljava/lang/String;

    .line 194
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPromos:Lcom/sprint/dsa/data/PageContent;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/data/PageContent;->appendFeature(Lcom/sprint/dsa/data/FeatureItem;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 197
    .end local v11           #attrEnabled:Ljava/lang/String;
    .end local v12           #attrVisible:Ljava/lang/String;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v33           #promo:Lcom/sprint/dsa/data/FeatureItem;
    .end local v35           #strRating:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_28c
    const-string v3, "page"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a7

    .line 198
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 201
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_2a7
    const-string v3, "pcategory"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e6

    .line 202
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_35

    .line 203
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 204
    .restart local v34       #sid:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "order"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 205
    .local v30, order:Ljava/lang/String;
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPages:Lcom/sprint/dsa/data/Pages;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 206
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    .line 205
    move/from16 v0, v41

    move/from16 v1, v42

    invoke-virtual {v3, v5, v0, v1}, Lcom/sprint/dsa/data/Pages;->addContent(III)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 210
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v30           #order:Ljava/lang/String;
    .end local v34           #sid:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_2e6
    const-string v3, "alert"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_308

    .line 211
    const/4 v3, 0x0

    const-string v5, "ver"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 212
    .restart local v40       #version:Ljava/lang/String;
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/data/Alerts;->setVersion(Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 215
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v40           #version:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_308
    const-string v3, "msg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3ac

    .line 216
    new-instance v10, Lcom/sprint/dsa/data/Alert;

    invoke-direct {v10}, Lcom/sprint/dsa/data/Alert;-><init>()V

    .line 217
    .local v10, alert:Lcom/sprint/dsa/data/Alert;
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_campaign:Ljava/lang/String;

    .line 218
    const/4 v3, 0x0

    const-string v5, "sid"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    iput-wide v0, v10, Lcom/sprint/dsa/data/Alert;->m_sid:J

    .line 219
    const/4 v3, 0x0

    const-string v5, "header"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_header:Ljava/lang/String;

    .line 220
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_title:Ljava/lang/String;

    .line 221
    const/4 v3, 0x0

    const-string v5, "desc"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_description:Ljava/lang/String;

    .line 222
    const/4 v3, 0x0

    const-string v5, "exp"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/dsa/Util;->parseExpirationDate(Ljava/lang/String;)J

    move-result-wide v41

    move-wide/from16 v0, v41

    iput-wide v0, v10, Lcom/sprint/dsa/data/Alert;->m_expiration:J

    .line 223
    const/4 v3, 0x0

    const-string v5, "img"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_imageUrl:Ljava/lang/String;

    .line 224
    const/4 v3, 0x0

    const-string v5, "action"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_action:Ljava/lang/String;

    .line 225
    const/4 v3, 0x0

    const-string v5, "uri"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_uri:Ljava/lang/String;

    .line 226
    const/4 v3, 0x0

    const-string v5, "extra"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_extra:Ljava/lang/String;

    .line 227
    const/4 v3, 0x0

    const-string v5, "packId"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sprint/dsa/data/Alert;->m_packId:Ljava/lang/String;

    .line 231
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mAlerts:Lcom/sprint/dsa/data/Alerts;

    invoke-virtual {v3, v10}, Lcom/sprint/dsa/data/Alerts;->addAlert(Lcom/sprint/dsa/data/Alert;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 234
    .end local v10           #alert:Lcom/sprint/dsa/data/Alert;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_3ac
    const-string v3, "pack"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fe

    .line 235
    new-instance v31, Lcom/sprint/dsa/pack/Pack;

    .end local v31           #pack:Lcom/sprint/dsa/pack/Pack;
    invoke-direct/range {v31 .. v31}, Lcom/sprint/dsa/pack/Pack;-><init>()V

    .line 236
    .restart local v31       #pack:Lcom/sprint/dsa/pack/Pack;
    const/4 v3, 0x0

    const-string v5, "id"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/sprint/dsa/pack/Pack;->id:Ljava/lang/String;

    .line 237
    const/4 v3, 0x0

    const-string v5, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    .line 238
    const/4 v3, 0x0

    const-string v5, "alertIcon"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/sprint/dsa/pack/Pack;->alertIconUrl:Ljava/lang/String;

    .line 239
    const/4 v3, 0x0

    const-string v5, "backgroundImage"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/sprint/dsa/pack/Pack;->backgroundImageUrl:Ljava/lang/String;

    .line 240
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mPacks:Lcom/sprint/dsa/pack/Packs;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/pack/Packs;->add(Lcom/sprint/dsa/pack/Pack;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 243
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_3fe
    const-string v3, "style"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_444

    if-eqz v31, :cond_444

    .line 244
    new-instance v36, Lcom/sprint/dsa/pack/Style;

    invoke-direct/range {v36 .. v36}, Lcom/sprint/dsa/pack/Style;-><init>()V

    .line 247
    .local v36, style:Lcom/sprint/dsa/pack/Style;
    const/16 v21, 0x0

    .local v21, i:I
    :goto_411
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    move/from16 v0, v21

    if-lt v0, v3, :cond_428

    .line 252
    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/pack/Pack;->addStyle(Lcom/sprint/dsa/pack/Style;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 248
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_428
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v28

    .line 249
    .local v28, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v39

    .line 250
    .local v39, value:Ljava/lang/String;
    move-object/from16 v0, v36

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/pack/Style;->setAttr(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    add-int/lit8 v21, v21, 0x1

    goto :goto_411

    .line 255
    .end local v21           #i:I
    .end local v28           #name:Ljava/lang/String;
    .end local v36           #style:Lcom/sprint/dsa/pack/Style;
    .end local v39           #value:Ljava/lang/String;
    :cond_444
    const-string v3, "string"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46e

    if-eqz v31, :cond_46e

    .line 256
    const/4 v3, 0x0

    const-string v5, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 257
    .restart local v28       #name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v39

    .line 258
    .restart local v39       #value:Ljava/lang/String;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/pack/Pack;->addString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 261
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v28           #name:Ljava/lang/String;
    .end local v39           #value:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_46e
    const-string v3, "group"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a8

    .line 262
    const/4 v3, 0x0

    const-string v5, "key"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 263
    .local v27, key:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 264
    .restart local v7       #title:Ljava/lang/String;
    new-instance v17, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .end local v17           #diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .restart local v17       #diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    add-int/lit8 v24, v25, 0x1

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 266
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mDiagnosticGroups:Lcom/sprint/dsa/diagnostics/DiagnosticGroups;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->add(Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V

    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 268
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v27           #key:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_4a8
    const-string v3, "diagnostic"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f3

    .line 269
    const/4 v3, 0x0

    const-string v5, "key"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 270
    .restart local v27       #key:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 271
    .restart local v7       #title:Ljava/lang/String;
    new-instance v18, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .end local v18           #diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v7}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .restart local v18       #diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    if-eqz v17, :cond_4de

    .line 273
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mGroupKey:Ljava/lang/String;

    .line 274
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->addSubKey(Ljava/lang/String;)V

    .line 276
    :cond_4de
    add-int/lit8 v22, v23, 0x1

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v0, v23

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mRank:I

    .line 277
    iget-object v3, v14, Lcom/sprint/dsa/data/Content;->mDiagnosticStubs:Lcom/sprint/dsa/diagnostics/DiagnosticStubs;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->add(Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 279
    .end local v7           #title:Ljava/lang/String;
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v27           #key:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_4f3
    const-string v3, "info"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_546

    if-eqz v18, :cond_546

    .line 280
    new-instance v26, Lcom/sprint/dsa/data/InfoItem;

    invoke-direct/range {v26 .. v26}, Lcom/sprint/dsa/data/InfoItem;-><init>()V

    .line 281
    .local v26, infoItem:Lcom/sprint/dsa/data/InfoItem;
    const/4 v3, 0x0

    const-string v5, "title"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/InfoItem;->setTitle(Ljava/lang/String;)V

    .line 282
    const/4 v3, 0x0

    const-string v5, "action"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/InfoItem;->setAction(Ljava/lang/String;)V

    .line 283
    const/4 v3, 0x0

    const-string v5, "uri"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/InfoItem;->setUri(Ljava/lang/String;)V

    .line 284
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/data/InfoItem;->setDesc(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->addInfoItem(Lcom/sprint/dsa/data/InfoItem;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 287
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v26           #infoItem:Lcom/sprint/dsa/data/InfoItem;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_546
    const-string v3, "string"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v18, :cond_35

    .line 288
    const/4 v3, 0x0

    const-string v5, "name"

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 289
    .restart local v28       #name:Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v39

    .line 290
    .restart local v39       #value:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->addString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .line 293
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 297
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v28           #name:Ljava/lang/String;
    .end local v39           #value:Ljava/lang/String;
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :pswitch_570
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v37

    .line 299
    const-string v3, "page"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_588

    .line 300
    const-string v32, ""

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 302
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_588
    const-string v3, "pack"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59c

    .line 303
    const/16 v31, 0x0

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 305
    .end local v15           #countCategories:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .restart local v16       #countCategories:I
    .restart local v23       #iDiag:I
    .restart local v25       #iDiagGroup:I
    :cond_59c
    const-string v3, "diagnostic"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5a3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12f .. :try_end_5a3} :catch_5bc
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_5a3} :catch_5b8

    move-result v3

    if-eqz v3, :cond_35

    .line 306
    const/16 v18, 0x0

    move/from16 v24, v25

    .end local v25           #iDiagGroup:I
    .restart local v24       #iDiagGroup:I
    move/from16 v22, v23

    .end local v23           #iDiag:I
    .restart local v22       #iDiag:I
    move/from16 v15, v16

    .line 309
    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto/16 :goto_3b

    .line 318
    .end local v17           #diagGroup:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .end local v18           #diagStub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .end local v20           #eventType:I
    .end local v22           #iDiag:I
    .end local v24           #iDiagGroup:I
    .end local v31           #pack:Lcom/sprint/dsa/pack/Pack;
    .end local v37           #tagName:Ljava/lang/String;
    :catch_5b0
    move-exception v19

    .line 320
    .local v19, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5b1
    const/4 v14, 0x0

    goto/16 :goto_31

    .line 321
    .end local v19           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5b4
    move-exception v19

    .line 323
    .local v19, e:Ljava/io/IOException;
    :goto_5b5
    const/4 v14, 0x0

    goto/16 :goto_31

    .line 321
    .end local v15           #countCategories:I
    .end local v19           #e:Ljava/io/IOException;
    .restart local v16       #countCategories:I
    .restart local v20       #eventType:I
    .restart local v37       #tagName:Ljava/lang/String;
    :catch_5b8
    move-exception v19

    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto :goto_5b5

    .line 318
    .end local v15           #countCategories:I
    .restart local v16       #countCategories:I
    :catch_5bc
    move-exception v19

    move/from16 v15, v16

    .end local v16           #countCategories:I
    .restart local v15       #countCategories:I
    goto :goto_5b1

    .line 105
    :pswitch_data_5c0
    .packed-switch 0x0
        :pswitch_46
        :pswitch_4d
        :pswitch_54
        :pswitch_570
    .end packed-switch
.end method

.method public static parseContent(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;
    .registers 8
    .parameter "xmlContent"
    .parameter "scheme"

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez p0, :cond_5

    .line 82
    :goto_4
    return-object v3

    .line 73
    :cond_5
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 74
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 75
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 76
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_19} :catch_1e

    .line 82
    invoke-static {v2, p1}, Lcom/sprint/dsa/data/ContentParser;->parse(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/sprint/dsa/data/Content;

    move-result-object v3

    goto :goto_4

    .line 77
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1e
    move-exception v0

    .line 78
    .local v0, e1:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v4, Lcom/sprint/dsa/data/ContentParser;->TAG:Ljava/lang/String;

    const-string v5, "Cannot initialize xml parser"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
