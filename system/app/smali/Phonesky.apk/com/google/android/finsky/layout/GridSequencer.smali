.class public Lcom/google/android/finsky/layout/GridSequencer;
.super Ljava/lang/Object;
.source "GridSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/GridSequencer$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPageUrl:Ljava/lang/String;

.field private final mLayoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mToc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;[Lcom/google/android/finsky/adapters/GridSlotSize;Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "navigationManager"
    .parameter "bitmapLoader"
    .parameter "sequence"
    .parameter "toc"
    .parameter "currentPageUrl"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 60
    iput-object p3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 61
    iput-object p4, p0, Lcom/google/android/finsky/layout/GridSequencer;->mLayoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 62
    iput-object p6, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    .line 64
    iput-object p5, p0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    .line 65
    return-void
.end method

.method private bucketItemsBySize(Ljava/util/List;)Ljava/util/Map;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/finsky/adapters/GridSlotSize;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v3

    .line 151
    .local v3, output:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/adapters/GridSlotSize;Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    .line 152
    .local v1, document:Lcom/google/android/finsky/api/model/Document;
    invoke-direct {p0, v1}, Lcom/google/android/finsky/layout/GridSequencer;->getGridSlotSize(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/GridSlotSize;

    move-result-object v4

    .line 153
    .local v4, slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    .local v0, docList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-nez v0, :cond_27

    .line 155
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 156
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 160
    .end local v0           #docList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v1           #document:Lcom/google/android/finsky/api/model/Document;
    .end local v4           #slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_2b
    return-object v3
.end method

.method private getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;
    .registers 10
    .parameter "doc"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v7

    .line 118
    .local v7, type:Lcom/google/android/finsky/adapters/UnevenGridItemType;
    sget-object v0, Lcom/google/android/finsky/layout/GridSequencer$1;->$SwitchMap$com$google$android$finsky$adapters$UnevenGridItemType:[I

    invoke-virtual {v7}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_94

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_28
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->createSquarePromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    .line 141
    :goto_34
    return-object v0

    .line 123
    :pswitch_35
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->createSmallPromo(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_34

    .line 126
    :pswitch_42
    new-instance v0, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/Graphic2x1TitleTopLeft;-><init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V

    goto :goto_34

    .line 129
    :pswitch_4e
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->create4x2PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_34

    .line 132
    :pswitch_5b
    new-instance v0, Lcom/google/android/finsky/adapters/ListGridItem;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v4, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/adapters/ListGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_34

    .line 135
    :pswitch_6c
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/DocumentGridItem;->create2x1PromoGraphic(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/DocumentGridItem;

    move-result-object v0

    goto :goto_34

    .line 138
    :pswitch_79
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->create2x1(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    move-result-object v0

    goto :goto_34

    .line 141
    :pswitch_86
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/layout/GridSequencer;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    iget-object v3, p0, Lcom/google/android/finsky/layout/GridSequencer;->mCurrentPageUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/google/android/finsky/adapters/GraphicColoredTitle;->create4x2(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    move-result-object v0

    goto :goto_34

    .line 118
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_28
        :pswitch_35
        :pswitch_42
        :pswitch_4e
        :pswitch_5b
        :pswitch_6c
        :pswitch_79
        :pswitch_86
    .end packed-switch
.end method

.method private getGridSlotSize(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/GridSlotSize;
    .registers 6
    .parameter "doc"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;

    move-result-object v0

    .line 194
    .local v0, type:Lcom/google/android/finsky/adapters/UnevenGridItemType;
    sget-object v1, Lcom/google/android/finsky/layout/GridSequencer$1;->$SwitchMap$com$google$android$finsky$adapters$UnevenGridItemType:[I

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/UnevenGridItemType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    .line 207
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :pswitch_28
    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x1:Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 205
    :goto_2a
    return-object v1

    .line 201
    :pswitch_2b
    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    goto :goto_2a

    .line 205
    :pswitch_2e
    sget-object v1, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_4x2:Lcom/google/android/finsky/adapters/GridSlotSize;

    goto :goto_2a

    .line 194
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_28
        :pswitch_28
        :pswitch_2e
        :pswitch_2e
        :pswitch_28
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method private getTypeForItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridItemType;
    .registers 4
    .parameter "doc"

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTemplate()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;

    move-result-object v0

    .line 165
    .local v0, template:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;
    if-eqz v0, :cond_45

    .line 166
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileDetailsReflectedGraphic2X2()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 167
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOC_DETAILS_WITH_REFLECTED_PROMO_2x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    .line 187
    :goto_e
    return-object v1

    .line 168
    :cond_f
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileFourBlock4X2()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 169
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->LIST_FOUR_BLOCK_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 170
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic2X1()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 171
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 172
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphic4X2()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 173
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 174
    :cond_2a
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 175
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_COLORED_TITLE_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 176
    :cond_33
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicColoredTitle4X2()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 177
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_COLORED_TITLE_4x2:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 178
    :cond_3c
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Template;->hasTileGraphicUpperLeftTitle2X1()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 179
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 184
    :cond_45
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getContainerAnnotation()Lcom/google/android/finsky/remoting/protos/Containers$ContainerMetadata;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 185
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->DOCUMENT_2x1:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e

    .line 187
    :cond_4e
    sget-object v1, Lcom/google/android/finsky/adapters/UnevenGridItemType;->GRAPHIC_2x1_TITLE_TOP_LEFT:Lcom/google/android/finsky/adapters/UnevenGridItemType;

    goto :goto_e
.end method

.method private updateGridItems(Ljava/util/List;)Ljava/util/List;
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 80
    .local v7, output:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;>;"
    invoke-direct/range {p0 .. p1}, Lcom/google/android/finsky/layout/GridSequencer;->bucketItemsBySize(Ljava/util/List;)Ljava/util/Map;

    move-result-object v8

    .line 81
    .local v8, sizeMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/finsky/adapters/GridSlotSize;Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mLayoutSequence:[Lcom/google/android/finsky/adapters/GridSlotSize;

    .local v0, arr$:[Lcom/google/android/finsky/adapters/GridSlotSize;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v6, :cond_42

    aget-object v9, v0, v3

    .line 83
    .local v9, slot:Lcom/google/android/finsky/adapters/GridSlotSize;
    sget-object v11, Lcom/google/android/finsky/adapters/GridSlotSize;->Cell_2xN_TOC:Lcom/google/android/finsky/adapters/GridSlotSize;

    if-ne v9, v11, :cond_25

    .line 84
    new-instance v11, Lcom/google/android/finsky/adapters/CorpusGridItem;

    iget-object v12, p0, Lcom/google/android/finsky/layout/GridSequencer;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/google/android/finsky/layout/GridSequencer;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v14, p0, Lcom/google/android/finsky/layout/GridSequencer;->mToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/finsky/adapters/CorpusGridItem;-><init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;)V

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 88
    :cond_25
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 90
    .local v4, itemsForCurrentSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    if-eqz v4, :cond_22

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_22

    .line 95
    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/layout/GridSequencer;->getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 99
    .end local v4           #itemsForCurrentSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v9           #slot:Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_42
    const/4 v5, 0x0

    .line 100
    .local v5, largestBucketCount:I
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 101
    .local v10, slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4b

    .line 105
    .end local v10           #slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_66
    const/4 v2, 0x0

    .local v2, i:I
    :goto_67
    if-ge v2, v5, :cond_9b

    .line 106
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_71
    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/adapters/GridSlotSize;

    .line 107
    .restart local v10       #slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    .local v1, documentsInSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_71

    .line 109
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0, v11}, Lcom/google/android/finsky/layout/GridSequencer;->getGridItem(Lcom/google/android/finsky/api/model/Document;)Lcom/google/android/finsky/adapters/UnevenGridAdapter$UnevenGridItem;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 105
    .end local v1           #documentsInSlotType:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .end local v10           #slotType:Lcom/google/android/finsky/adapters/GridSlotSize;
    :cond_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    .line 113
    :cond_9b
    return-object v7
.end method


# virtual methods
.method public getAdapter()Lcom/google/android/finsky/adapters/UnevenGridAdapter;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->onDestroy()V

    .line 217
    return-void
.end method

.method public setPromoData(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, promoData:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v0, p0, Lcom/google/android/finsky/layout/GridSequencer;->mAdapter:Lcom/google/android/finsky/adapters/UnevenGridAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/GridSequencer;->updateGridItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/adapters/UnevenGridAdapter;->setData(Ljava/util/List;)V

    .line 73
    return-void
.end method
