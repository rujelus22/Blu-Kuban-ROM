.class Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;
.super Ljava/lang/Object;
.source "LocalSearchResponseParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFieldToReview(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter "rev"
    .parameter "n"

    .prologue
    .line 183
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, key:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 186
    const-string v2, "Author"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 187
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->author:Ljava/lang/String;

    .line 200
    :cond_16
    :goto_16
    return-void

    .line 188
    :cond_17
    const-string v2, "Body"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 189
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->body:Ljava/lang/String;

    goto :goto_16

    .line 190
    :cond_22
    const-string v2, "Date"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 191
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->date:Ljava/lang/String;

    goto :goto_16

    .line 192
    :cond_2d
    const-string v2, "Id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 193
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->id:Ljava/lang/String;

    goto :goto_16

    .line 194
    :cond_38
    const-string v2, "Rating"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 195
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->rating:Ljava/lang/String;

    goto :goto_16

    .line 196
    :cond_43
    const-string v2, "Title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 197
    iput-object v1, p0, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;->title:Ljava/lang/String;

    goto :goto_16
.end method

.method private static addNodeToBusinessItem(Lorg/w3c/dom/Node;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 4
    .parameter "n"
    .parameter "bi"

    .prologue
    .line 149
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, key:Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_f
    return-void
.end method

.method private static getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "attrMap"
    .parameter "attrName"

    .prologue
    .line 157
    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 158
    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_b

    .line 159
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private static parseDetailsNodeList(Lorg/w3c/dom/NodeList;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    .registers 9
    .parameter "detailNodeList"
    .parameter "bi"

    .prologue
    .line 132
    if-eqz p0, :cond_25

    .line 133
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 134
    .local v4, numDetails:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_7
    if-ge v2, v4, :cond_25

    .line 135
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 136
    .local v1, di:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 137
    .local v0, attr:Lorg/w3c/dom/NamedNodeMap;
    const-string v6, "Name"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 138
    .local v3, n:Lorg/w3c/dom/Node;
    if-eqz v3, :cond_22

    .line 139
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, value:Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 141
    invoke-virtual {p1, v5}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->markValueAsAvailable(Ljava/lang/String;)V

    .line 134
    .end local v5           #value:Ljava/lang/String;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 146
    .end local v0           #attr:Lorg/w3c/dom/NamedNodeMap;
    .end local v1           #di:Lorg/w3c/dom/Node;
    .end local v2           #j:I
    .end local v3           #n:Lorg/w3c/dom/Node;
    .end local v4           #numDetails:I
    :cond_25
    return-void
.end method

.method static parseLocalSearchResponse(Lcom/vlingo/client/core/http/HttpResponse;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)Ljava/util/Vector;
    .registers 35
    .parameter "response"
    .parameter "existingBusinessItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/core/http/HttpResponse;",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/localsearch/service/LocalSearchListing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v26, Ljava/util/Vector;

    invoke-direct/range {v26 .. v26}, Ljava/util/Vector;-><init>()V

    .line 34
    .local v26, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 35
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v31

    .line 37
    .local v31, xmlParser:Ljavax/xml/parsers/DocumentBuilder;
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/vlingo/client/VlingoApplication;->getBusinessItemCache()Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;

    move-result-object v14

    .line 39
    .local v14, listingCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/core/http/HttpResponse;->getDataAsBytes()[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    .local v10, inputStream:Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 42
    .local v4, doc:Lorg/w3c/dom/Document;
    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 44
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v30

    .line 47
    .local v30, root:Lorg/w3c/dom/Element;
    const-string v32, "Error"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 48
    .local v5, errors:Lorg/w3c/dom/NodeList;
    if-eqz v5, :cond_40

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    if-lez v32, :cond_40

    .line 51
    const/16 v26, 0x0

    .line 127
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #errors:Lorg/w3c/dom/NodeList;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v10           #inputStream:Ljava/io/ByteArrayInputStream;
    .end local v14           #listingCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .end local v26           #results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    .end local v30           #root:Lorg/w3c/dom/Element;
    .end local v31           #xmlParser:Ljavax/xml/parsers/DocumentBuilder;
    :cond_3f
    :goto_3f
    return-object v26

    .line 54
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #errors:Lorg/w3c/dom/NodeList;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v10       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v14       #listingCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .restart local v26       #results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/localsearch/service/LocalSearchListing;>;"
    .restart local v30       #root:Lorg/w3c/dom/Element;
    .restart local v31       #xmlParser:Ljavax/xml/parsers/DocumentBuilder;
    :cond_40
    const-string v32, "LocalListings"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 56
    .local v18, localListingNodes:Lorg/w3c/dom/NodeList;
    if-eqz v18, :cond_3f

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    if-lez v32, :cond_3f

    .line 57
    const/16 v32, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 58
    .local v19, lsn:Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 61
    .local v17, localListingElements:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_61
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    move/from16 v0, v32

    if-ge v9, v0, :cond_3f

    .line 64
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 65
    .local v16, listingNode:Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    .line 67
    .local v13, listingAttributes:Lorg/w3c/dom/NamedNodeMap;
    const-string v32, "ListingID"

    move-object/from16 v0, v32

    invoke-static {v13, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->getAttributeValue(Lorg/w3c/dom/NamedNodeMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 69
    .local v15, listingId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 72
    .local v2, bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    if-eqz p1, :cond_8a

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->getListingID()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, existingListingID:Ljava/lang/String;
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8a

    .line 75
    move-object/from16 v2, p1

    .line 79
    .end local v7           #existingListingID:Ljava/lang/String;
    :cond_8a
    if-nez v2, :cond_91

    .line 80
    new-instance v2, Lcom/vlingo/client/localsearch/service/LocalSearchListing;

    .end local v2           #bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    invoke-direct {v2, v15}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v2       #bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    :cond_91
    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v23

    .line 85
    .local v23, numAttributes:I
    const/4 v11, 0x0

    .local v11, j:I
    :goto_96
    move/from16 v0, v23

    if-ge v11, v0, :cond_a6

    .line 86
    invoke-interface {v13, v11}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->addNodeToBusinessItem(Lorg/w3c/dom/Node;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    .line 85
    add-int/lit8 v11, v11, 0x1

    goto :goto_96

    .line 90
    :cond_a6
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 91
    .local v22, nodes:Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 93
    .local v3, detailNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    .line 94
    .local v24, numNodes:I
    const/4 v11, 0x0

    :goto_b0
    move/from16 v0, v24

    if-ge v11, v0, :cond_10d

    .line 95
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 96
    .local v20, n:Lorg/w3c/dom/Node;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    .line 97
    .local v21, nodeName:Ljava/lang/String;
    const-string v32, "details"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d1

    .line 98
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 94
    :cond_ce
    :goto_ce
    add-int/lit8 v11, v11, 0x1

    goto :goto_b0

    .line 99
    :cond_d1
    const-string v32, "reviews"

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_fc

    .line 100
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 101
    .local v28, reviewNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    .line 102
    .local v25, numReviews:I
    const/4 v12, 0x0

    .local v12, k:I
    :goto_e6
    move/from16 v0, v25

    if-ge v12, v0, :cond_ce

    .line 103
    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .line 104
    .local v29, rn:Lorg/w3c/dom/Node;
    invoke-static/range {v29 .. v29}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->parseReview(Lorg/w3c/dom/Node;)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    move-result-object v27

    .line 105
    .local v27, rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/vlingo/client/localsearch/service/LocalSearchListing;->addReview(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;)V

    .line 102
    add-int/lit8 v12, v12, 0x1

    goto :goto_e6

    .line 107
    .end local v12           #k:I
    .end local v25           #numReviews:I
    .end local v27           #rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    .end local v28           #reviewNodeList:Lorg/w3c/dom/NodeList;
    .end local v29           #rn:Lorg/w3c/dom/Node;
    :cond_fc
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v32

    if-nez v32, :cond_ce

    .line 108
    move-object/from16 v0, v20

    invoke-static {v0, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->addNodeToBusinessItem(Lorg/w3c/dom/Node;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    goto :goto_ce

    .line 122
    .end local v2           #bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .end local v3           #detailNodeList:Lorg/w3c/dom/NodeList;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #errors:Lorg/w3c/dom/NodeList;
    .end local v8           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #i:I
    .end local v10           #inputStream:Ljava/io/ByteArrayInputStream;
    .end local v11           #j:I
    .end local v13           #listingAttributes:Lorg/w3c/dom/NamedNodeMap;
    .end local v14           #listingCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .end local v15           #listingId:Ljava/lang/String;
    .end local v16           #listingNode:Lorg/w3c/dom/Node;
    .end local v17           #localListingElements:Lorg/w3c/dom/NodeList;
    .end local v18           #localListingNodes:Lorg/w3c/dom/NodeList;
    .end local v19           #lsn:Lorg/w3c/dom/Node;
    .end local v20           #n:Lorg/w3c/dom/Node;
    .end local v21           #nodeName:Ljava/lang/String;
    .end local v22           #nodes:Lorg/w3c/dom/NodeList;
    .end local v23           #numAttributes:I
    .end local v24           #numNodes:I
    .end local v30           #root:Lorg/w3c/dom/Element;
    .end local v31           #xmlParser:Ljavax/xml/parsers/DocumentBuilder;
    :catch_108
    move-exception v6

    .line 127
    .local v6, ex:Ljava/lang/Exception;
    const/16 v26, 0x0

    goto/16 :goto_3f

    .line 114
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v2       #bi:Lcom/vlingo/client/localsearch/service/LocalSearchListing;
    .restart local v3       #detailNodeList:Lorg/w3c/dom/NodeList;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #errors:Lorg/w3c/dom/NodeList;
    .restart local v8       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #i:I
    .restart local v10       #inputStream:Ljava/io/ByteArrayInputStream;
    .restart local v11       #j:I
    .restart local v13       #listingAttributes:Lorg/w3c/dom/NamedNodeMap;
    .restart local v14       #listingCache:Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;
    .restart local v15       #listingId:Ljava/lang/String;
    .restart local v16       #listingNode:Lorg/w3c/dom/Node;
    .restart local v17       #localListingElements:Lorg/w3c/dom/NodeList;
    .restart local v18       #localListingNodes:Lorg/w3c/dom/NodeList;
    .restart local v19       #lsn:Lorg/w3c/dom/Node;
    .restart local v22       #nodes:Lorg/w3c/dom/NodeList;
    .restart local v23       #numAttributes:I
    .restart local v24       #numNodes:I
    .restart local v30       #root:Lorg/w3c/dom/Element;
    .restart local v31       #xmlParser:Ljavax/xml/parsers/DocumentBuilder;
    :cond_10d
    invoke-static {v3, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->parseDetailsNodeList(Lorg/w3c/dom/NodeList;Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V

    .line 116
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v14, v2}, Lcom/vlingo/client/localsearch/service/LocalSearchListingCache;->add(Lcom/vlingo/client/localsearch/service/LocalSearchListing;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_118} :catch_108

    .line 61
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_61
.end method

.method private static parseReview(Lorg/w3c/dom/Node;)Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    .registers 9
    .parameter "reviewNode"

    .prologue
    .line 165
    new-instance v5, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;

    invoke-direct {v5}, Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;-><init>()V

    .line 166
    .local v5, rev:Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    .line 167
    .local v6, revAttr:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    .line 168
    .local v3, numAttributes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v3, :cond_1a

    .line 169
    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->addFieldToReview(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;Lorg/w3c/dom/Node;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 171
    :cond_1a
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 172
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 173
    .local v2, nl:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 174
    .local v4, numNodes:I
    const/4 v0, 0x0

    :goto_29
    if-ge v0, v4, :cond_35

    .line 175
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 176
    .local v1, n:Lorg/w3c/dom/Node;
    invoke-static {v5, v1}, Lcom/vlingo/client/localsearch/service/LocalSearchResponseParser;->addFieldToReview(Lcom/vlingo/client/localsearch/service/LocalSearchListing$Review;Lorg/w3c/dom/Node;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 179
    .end local v1           #n:Lorg/w3c/dom/Node;
    .end local v2           #nl:Lorg/w3c/dom/NodeList;
    .end local v4           #numNodes:I
    :cond_35
    return-object v5
.end method
