.class public final Lcom/google/android/finsky/remoting/protos/Doc$Document;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Doc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Doc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# instance fields
.field private aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

.field private availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

.field private cachedSize:I

.field private categoryId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private child_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private decoration_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation
.end field

.field private docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private documentVariant_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation
.end field

.field private fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private hasAggregateRating:Z

.field private hasAvailability:Z

.field private hasDocid:Z

.field private hasFetchDocid:Z

.field private hasPriceDeprecated:Z

.field private hasSampleDocid:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private image_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private offer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation
.end field

.field private priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

.field private sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title_:Ljava/lang/String;

.field private translatedSnippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation
.end field

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1192
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1197
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1217
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1237
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1274
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1290
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1323
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1356
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1390
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1443
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1462
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1562
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1581
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1724
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 1192
    return-void
.end method


# virtual methods
.method public addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1340
    if-nez p1, :cond_8

    .line 1341
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1343
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    .line 1346
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    return-object p0
.end method

.method public addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1512
    if-nez p1, :cond_8

    .line 1513
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1515
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    .line 1518
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1519
    return-object p0
.end method

.method public addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1545
    if-nez p1, :cond_8

    .line 1546
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1548
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    .line 1551
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1552
    return-object p0
.end method

.method public addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1598
    if-nez p1, :cond_8

    .line 1599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1601
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    .line 1604
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1605
    return-object p0
.end method

.method public addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1479
    if-nez p1, :cond_8

    .line 1480
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1482
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    .line 1485
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1486
    return-object p0
.end method

.method public addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1426
    if-nez p1, :cond_8

    .line 1427
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1429
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    .line 1432
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    return-object p0
.end method

.method public addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1307
    if-nez p1, :cond_8

    .line 1308
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1310
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    .line 1313
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1314
    return-object p0
.end method

.method public addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1373
    if-nez p1, :cond_8

    .line 1374
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1376
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    .line 1379
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    return-object p0
.end method

.method public getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    .registers 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    return-object v0
.end method

.method public getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 2

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    return-object v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 1726
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    if-gez v0, :cond_7

    .line 1728
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSerializedSize()I

    .line 1730
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    return v0
.end method

.method public getCategoryIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->categoryId_:Ljava/util/List;

    return-object v0
.end method

.method public getChildList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->child_:Ljava/util/List;

    return-object v0
.end method

.method public getDecorationList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->decoration_:Ljava/util/List;

    return-object v0
.end method

.method public getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getDocumentVariantList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->documentVariant_:Ljava/util/List;

    return-object v0
.end method

.method public getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getImageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->image_:Ljava/util/List;

    return-object v0
.end method

.method public getOfferList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Common$Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->offer_:Ljava/util/List;

    return-object v0
.end method

.method public getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .registers 2

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;
    .registers 2

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 1734
    const/4 v3, 0x0

    .line 1735
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1736
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1739
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1740
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1743
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1744
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1747
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1748
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1751
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1752
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1756
    :cond_51
    const/4 v0, 0x0

    .line 1757
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1758
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_5a

    .line 1761
    .end local v1           #element:Ljava/lang/String;
    :cond_6c
    add-int/2addr v3, v0

    .line 1762
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1764
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 1765
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1768
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v4

    if-eqz v4, :cond_99

    .line 1769
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1772
    :cond_99
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1773
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v4, 0xa

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_a1

    .line 1776
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1777
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0xb

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_bd

    .line 1780
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_d1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 1781
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1784
    :cond_e2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ea
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1785
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v4, 0xe

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_ea

    .line 1788
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_fe
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_106
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1789
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v4, 0xf

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_106

    .line 1792
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_11a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_122
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_136

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 1793
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v4, 0x10

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_122

    .line 1797
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_136
    const/4 v0, 0x0

    .line 1798
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_151

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1799
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_13f

    .line 1802
    .end local v1           #element:Ljava/lang/String;
    :cond_151
    add-int/2addr v3, v0

    .line 1803
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1805
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_165
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_179

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1806
    .local v1, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v4, 0x12

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_165

    .line 1809
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_179
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->cachedSize:I

    .line 1810
    return v3
.end method

.method public getSnippetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedSnippetList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->translatedSnippet_:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAggregateRating()Z
    .registers 2

    .prologue
    .line 1563
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    return v0
.end method

.method public hasAvailability()Z
    .registers 2

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    return v0
.end method

.method public hasDocid()Z
    .registers 2

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    return v0
.end method

.method public hasFetchDocid()Z
    .registers 2

    .prologue
    .line 1218
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    return v0
.end method

.method public hasPriceDeprecated()Z
    .registers 2

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    return v0
.end method

.method public hasSampleDocid()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    return v0
.end method

.method public hasTitle()Z
    .registers 2

    .prologue
    .line 1259
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .registers 2

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1817
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1818
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_c4

    .line 1822
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1823
    :sswitch_d
    return-object p0

    .line 1828
    :sswitch_e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 1829
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1830
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1834
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_1a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 1835
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1836
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1840
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_26
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Docid;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;-><init>()V

    .line 1841
    .restart local v1       #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1842
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1846
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Docid;
    :sswitch_32
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1850
    :sswitch_3a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1854
    :sswitch_42
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addSnippet(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1858
    :sswitch_4a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1859
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1860
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1864
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_56
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;-><init>()V

    .line 1865
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1866
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1870
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    :sswitch_62
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;-><init>()V

    .line 1871
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1872
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addImage(Lcom/google/android/finsky/remoting/protos/Doc$Image;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1876
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :sswitch_6e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 1877
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1878
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addChild(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto :goto_0

    .line 1882
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :sswitch_7a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;-><init>()V

    .line 1883
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1884
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1888
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;
    :sswitch_87
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 1889
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1890
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1894
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_94
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;-><init>()V

    .line 1895
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1896
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addTranslatedSnippet(Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1900
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :sswitch_a1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;-><init>()V

    .line 1901
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1902
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDocumentVariant(Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1906
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :sswitch_ae
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addCategoryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1910
    :sswitch_b7
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;-><init>()V

    .line 1911
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1912
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->addDecoration(Lcom/google/android/finsky/remoting/protos/Doc$Document;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    goto/16 :goto_0

    .line 1818
    :sswitch_data_c4
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_26
        0x22 -> :sswitch_32
        0x2a -> :sswitch_3a
        0x32 -> :sswitch_42
        0x3a -> :sswitch_4a
        0x4a -> :sswitch_56
        0x52 -> :sswitch_62
        0x5a -> :sswitch_6e
        0x6a -> :sswitch_7a
        0x72 -> :sswitch_87
        0x7a -> :sswitch_94
        0x82 -> :sswitch_a1
        0x8a -> :sswitch_ae
        0x92 -> :sswitch_b7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Doc$Document;

    move-result-object v0

    return-object v0
.end method

.method public setAggregateRating(Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1566
    if-nez p1, :cond_8

    .line 1567
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1569
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating:Z

    .line 1570
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->aggregateRating_:Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    .line 1571
    return-object p0
.end method

.method public setAvailability(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1447
    if-nez p1, :cond_8

    .line 1448
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1450
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability:Z

    .line 1451
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->availability_:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    .line 1452
    return-object p0
.end method

.method public setDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1201
    if-nez p1, :cond_8

    .line 1202
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1204
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid:Z

    .line 1205
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->docid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1206
    return-object p0
.end method

.method public setFetchDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1221
    if-nez p1, :cond_8

    .line 1222
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1224
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid:Z

    .line 1225
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->fetchDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1226
    return-object p0
.end method

.method public setPriceDeprecated(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1394
    if-nez p1, :cond_8

    .line 1395
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1397
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated:Z

    .line 1398
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->priceDeprecated_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1399
    return-object p0
.end method

.method public setSampleDocid(Lcom/google/android/finsky/remoting/protos/Common$Docid;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1241
    if-nez p1, :cond_8

    .line 1242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1244
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid:Z

    .line 1245
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->sampleDocid_:Lcom/google/android/finsky/remoting/protos/Common$Docid;

    .line 1246
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle:Z

    .line 1262
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->title_:Ljava/lang/String;

    .line 1263
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Doc$Document;
    .registers 3
    .parameter "value"

    .prologue
    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl:Z

    .line 1279
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Doc$Document;->url_:Ljava/lang/String;

    .line 1280
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasDocid()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1675
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1677
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasFetchDocid()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1678
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getFetchDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1680
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasSampleDocid()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1681
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSampleDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1683
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1684
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1686
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasUrl()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1687
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1689
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1690
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4e

    .line 1692
    .end local v0           #element:Ljava/lang/String;
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasPriceDeprecated()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 1693
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getPriceDeprecated()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1695
    :cond_6d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAvailability()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 1696
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAvailability()Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1698
    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 1699
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_84

    .line 1701
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :cond_96
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getChildList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1702
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_9e

    .line 1704
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_b0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->hasAggregateRating()Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 1705
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getAggregateRating()Lcom/google/android/finsky/remoting/protos/Rating$AggregateRating;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1707
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getOfferList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 1708
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_c7

    .line 1710
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getTranslatedSnippetList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;

    .line 1711
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_e1

    .line 1713
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$TranslatedText;
    :cond_f3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDocumentVariantList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;

    .line 1714
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    const/16 v2, 0x10

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_fb

    .line 1716
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$DocumentVariant;
    :cond_10d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getCategoryIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_127

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1717
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x11

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_115

    .line 1719
    .end local v0           #element:Ljava/lang/String;
    :cond_127
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Document;->getDecorationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_141

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/Doc$Document;

    .line 1720
    .local v0, element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_12f

    .line 1722
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/Doc$Document;
    :cond_141
    return-void
.end method
