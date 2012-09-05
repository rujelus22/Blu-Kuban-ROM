.class Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SectionAdapter"
.end annotation


# instance fields
.field private final mAssetType:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

.field private final mAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/vending/model/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeaderAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

.field private final mHeaderTextId:I

.field final synthetic this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;)V
    .registers 6
    .parameter
    .parameter "assetType"
    .parameter "headerTextId"
    .parameter "headerAction"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssetType:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    .line 125
    iput p3, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderTextId:I

    .line 126
    iput-object p4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    .line 128
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderTextId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mHeaderAction:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addAsset(Lcom/google/android/vending/model/Asset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-void
.end method

.method clearAssets()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 160
    if-nez p1, :cond_4

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 155
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    .line 174
    if-nez p1, :cond_4

    .line 175
    const/4 v0, 0x1

    .line 178
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssetType:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->DOWNLOADING:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x3

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    goto :goto_3
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getItemViewType(I)I

    move-result v1

    .line 184
    .local v1, type:I
    const/4 v0, 0x0

    .line 186
    .local v0, result:Landroid/view/View;
    packed-switch v1, :pswitch_data_52

    .line 197
    :goto_8
    if-nez v0, :cond_50

    .line 198
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null row view for position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :pswitch_2d
    iget-object v3, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/model/Asset;

    #calls: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getDownloadingAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    invoke-static {v3, v2, p2, p3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$200(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 189
    goto :goto_8

    .line 191
    :pswitch_3a
    iget-object v3, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/vending/model/Asset;

    iget-object v4, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssetType:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    #calls: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getAssetView(Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;)Landroid/view/View;
    invoke-static {v3, v2, p2, p3, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$300(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;Lcom/google/android/vending/model/Asset;Landroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;)Landroid/view/View;

    move-result-object v0

    .line 192
    goto :goto_8

    .line 194
    :pswitch_49
    iget-object v2, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->this$0:Lcom/google/android/finsky/adapters/MyDownloadsAdapter;

    #calls: Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;
    invoke-static {v2, p1, p2, p3, p0}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$400(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 201
    :cond_50
    return-object v0

    .line 186
    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_49
        :pswitch_3a
        :pswitch_2d
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x3

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method sortAssets()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$SectionAdapter;->mAssets:Ljava/util/List;

    invoke-static {}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    return-void
.end method
