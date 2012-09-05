.class Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddinPlayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/AddinPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAdapter"
.end annotation


# instance fields
.field private final MAX_CHECKDEVICENAME_LENGTH:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private resID:I

.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 1770
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->mThumbnail:Ljava/util/HashMap;

    .line 1941
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->MAX_CHECKDEVICENAME_LENGTH:I

    .line 1771
    iput p3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->resID:I

    .line 1772
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 1773
    return-void
.end method

.method private convertToShortName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "name"

    .prologue
    .line 1944
    const/4 v2, 0x0

    .line 1945
    .local v2, sublen:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1947
    .local v1, sbuf:Ljava/lang/StringBuffer;
    if-nez p1, :cond_b

    .line 1948
    const-string v3, ""

    .line 1963
    :goto_a
    return-object v3

    .line 1950
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_30

    const/16 v3, 0x19

    if-ge v2, v3, :cond_30

    .line 1951
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2d

    .line 1952
    add-int/lit8 v2, v2, 0x2

    .line 1956
    :goto_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1950
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1954
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 1959
    :cond_30
    const/16 v3, 0x18

    if-le v2, v3, :cond_4b

    .line 1960
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4b
    move-object v3, p1

    .line 1963
    goto :goto_a
.end method

.method private getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "filePath"

    .prologue
    .line 1967
    const/4 v1, 0x0

    .line 1969
    .local v1, b:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->mThumbnail:Ljava/util/HashMap;

    if-eqz v2, :cond_13

    .line 1970
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v3

    .line 1971
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 1972
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_2c

    .line 1975
    :cond_13
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out getCachedBitmap, bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    return-object v1

    .line 1972
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method private isPlaying(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 1984
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getCurrentIndex()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 1985
    const/4 v0, 0x1

    .line 1987
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1776
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 1780
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1784
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1790
    if-nez p2, :cond_11

    .line 1791
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->resID:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1796
    .local v0, itemView:Landroid/widget/LinearLayout;
    :goto_d
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->parsePlayListItem(Landroid/view/View;I)V

    .line 1797
    return-object v0

    .end local v0           #itemView:Landroid/widget/LinearLayout;
    :cond_11
    move-object v0, p2

    .line 1793
    check-cast v0, Landroid/widget/LinearLayout;

    .restart local v0       #itemView:Landroid/widget/LinearLayout;
    goto :goto_d
.end method

.method protected parsePlayListItem(Landroid/view/View;I)V
    .registers 21
    .parameter "view"
    .parameter "position"

    .prologue
    .line 1801
    const v15, 0x7f070069

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1802
    .local v10, mediaName:Landroid/widget/TextView;
    const v15, 0x7f07006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1805
    .local v11, mediaValue:Landroid/widget/TextView;
    const v15, 0x7f070065

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1806
    .local v7, icon:Landroid/widget/ImageView;
    const v15, 0x7f070068

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 1808
    .local v13, play_status:Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1809
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1811
    const/4 v12, 0x0

    .line 1812
    .local v12, name:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_54

    .line 1813
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_131

    .line 1814
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    aget-object v12, v15, p2

    .line 1819
    :cond_54
    :goto_54
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1820
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const-string v15, "DLNA_Addin"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "displayname == "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/4 v9, 0x0

    .line 1823
    .local v9, mMimeType:I
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_9d

    .line 1824
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_13f

    .line 1825
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, p2

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I

    move-result v9

    .line 1830
    :cond_9d
    :goto_9d
    packed-switch v9, :pswitch_data_2ce

    .line 1877
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    :goto_a4
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_c2

    .line 1882
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_21a

    .line 1883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    aget-object v12, v15, p2

    .line 1888
    :cond_c2
    :goto_c2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1890
    const/4 v15, 0x0

    :try_start_cc
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1892
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_f7

    .line 1893
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_228

    .line 1894
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v16

    aget-object v16, v16, p2

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I

    move-result v9

    .line 1899
    :cond_f7
    :goto_f7
    const/4 v15, 0x5

    if-ne v9, v15, :cond_26a

    .line 1900
    const/4 v8, 0x0

    .line 1902
    .local v8, mCurrentItemSize:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_119

    .line 1903
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_23e

    .line 1904
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sizeOfMultiselectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    aget-object v8, v15, p2

    .line 1909
    :cond_119
    :goto_119
    if-nez v8, :cond_24c

    .line 1910
    const-wide/16 v15, 0x0

    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/dlna/ui/MediaInfo;->transByteToUnit(D)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_12a} :catch_267

    .line 1938
    .end local v8           #mCurrentItemSize:Ljava/lang/String;
    :cond_12a
    :goto_12a
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1939
    return-void

    .line 1816
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #mMimeType:I
    :cond_131
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v12, v15, v16

    goto/16 :goto_54

    .line 1827
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #mMimeType:I
    :cond_13f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->mimeTypeOfMultiSelectedFiles:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2700(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->isMimeType(Ljava/lang/String;)I
    invoke-static/range {v15 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;Ljava/lang/String;)I

    move-result v9

    goto/16 :goto_9d

    .line 1832
    :pswitch_157
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->isPlaying(I)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_181

    .line 1833
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x2050096

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1840
    :goto_177
    if-nez v2, :cond_193

    .line 1841
    const v15, 0x7f02000a

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a4

    .line 1836
    :cond_181
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x205

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_177

    .line 1843
    :cond_193
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a4

    .line 1847
    :pswitch_198
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->isPlaying(I)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c2

    .line 1848
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x2050096

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1855
    :goto_1b8
    if-nez v2, :cond_1d4

    .line 1856
    const v15, 0x7f020009

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a4

    .line 1851
    :cond_1c2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x205

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1b8

    .line 1858
    :cond_1d4
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a4

    .line 1862
    :pswitch_1d9
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->isPlaying(I)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_203

    .line 1863
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x2050096

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1870
    :goto_1f9
    if-nez v2, :cond_215

    .line 1871
    const v15, 0x7f02000b

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a4

    .line 1866
    :cond_203
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x205

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1f9

    .line 1873
    :cond_215
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_a4

    .line 1885
    :cond_21a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->titleOfMultiSlectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3100(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v12, v15, v16

    goto/16 :goto_c2

    .line 1896
    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$2000(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v9

    goto/16 :goto_f7

    .line 1906
    .restart local v8       #mCurrentItemSize:Ljava/lang/String;
    :cond_23e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->sizeOfMultiselectedFiles:[Ljava/lang/String;
    invoke-static {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3200(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v8, v15, v16
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_24a} :catch_267

    goto/16 :goto_119

    .line 1913
    :cond_24c
    :try_start_24c
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1915
    .local v5, file_size:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    invoke-virtual {v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_25f
    .catch Ljava/lang/NumberFormatException; {:try_start_24c .. :try_end_25f} :catch_261
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_25f} :catch_267

    goto/16 :goto_12a

    .line 1916
    .end local v5           #file_size:J
    :catch_261
    move-exception v4

    .line 1917
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_262
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_12a

    .line 1935
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v8           #mCurrentItemSize:Ljava/lang/String;
    :catch_267
    move-exception v15

    goto/16 :goto_12a

    .line 1921
    :cond_26a
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    if-eqz v15, :cond_12a

    .line 1922
    const/4 v3, 0x0

    .line 1923
    .local v3, duration:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$100()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_2a7

    .line 1924
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[J

    move-result-object v16

    aget-wide v16, v16, p2

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->stringForTime(J)Ljava/lang/String;
    invoke-static/range {v15 .. v17}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;J)Ljava/lang/String;

    move-result-object v3

    .line 1928
    :goto_293
    const/16 v15, 0x2e

    invoke-virtual {v3, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 1929
    .local v14, trim_point:I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_2be

    .line 1930
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_12a

    .line 1926
    .end local v14           #trim_point:I
    :cond_2a7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->this$0:Lcom/sec/android/app/dlna/ui/AddinPlayActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->durationOfMultiSelectedFiles:[J
    invoke-static/range {v16 .. v16}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3300(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;)[J

    move-result-object v16

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    #calls: Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->stringForTime(J)Ljava/lang/String;
    invoke-static/range {v15 .. v17}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity;->access$3400(Lcom/sec/android/app/dlna/ui/AddinPlayActivity;J)Ljava/lang/String;

    move-result-object v3

    goto :goto_293

    .line 1932
    .restart local v14       #trim_point:I
    :cond_2be
    const/4 v15, 0x0

    invoke-virtual {v3, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->convertToShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_262 .. :try_end_2cc} :catch_267

    goto/16 :goto_12a

    .line 1830
    :pswitch_data_2ce
    .packed-switch 0x3
        :pswitch_157
        :pswitch_1d9
        :pswitch_198
    .end packed-switch
.end method

.method public setThumbnailArray(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1980
    .local p1, thumbnailArray:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/AddinPlayActivity$MyAdapter;->mThumbnail:Ljava/util/HashMap;

    .line 1981
    return-void
.end method
