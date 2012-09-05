.class public final Lcom/google/android/apps/plus/views/PlusOneDataUtils;
.super Ljava/lang/Object;
.source "PlusOneDataUtils.java"


# static fields
.field private static final sPlusOneWithYouStringIds:[[I

.field private static final sPlusOneWithoutYouStringIds:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 21
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_38

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_40

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_48

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithoutYouStringIds:[[I

    .line 28
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_50

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_58

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_60

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithYouStringIds:[[I

    return-void

    .line 21
    nop

    :array_38
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x7t 0x0t 0xet 0x7ft
    .end array-data

    :array_40
    .array-data 0x4
        0x3ft 0x1t 0x7t 0x7ft
        0x9t 0x0t 0xet 0x7ft
    .end array-data

    :array_48
    .array-data 0x4
        0x41t 0x1t 0x7t 0x7ft
        0xbt 0x0t 0xet 0x7ft
    .end array-data

    .line 28
    :array_50
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x8t 0x0t 0xet 0x7ft
    .end array-data

    :array_58
    .array-data 0x4
        0x40t 0x1t 0x7t 0x7ft
        0xat 0x0t 0xet 0x7ft
    .end array-data

    :array_60
    .array-data 0x4
        0x42t 0x1t 0x7t 0x7ft
        0xct 0x0t 0xet 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLongPlusOnesString(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "plusOneData"

    .prologue
    .line 69
    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v5

    .line 70
    .local v5, plusOneCount:I
    :goto_6
    if-nez v5, :cond_d

    .line 71
    const-string v11, ""

    .line 140
    :goto_a
    return-object v11

    .line 69
    .end local v5           #plusOneCount:I
    :cond_b
    const/4 v5, 0x0

    goto :goto_6

    .line 74
    .restart local v5       #plusOneCount:I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v6

    .line 75
    .local v6, plusOnedByYou:Z
    if-eqz v6, :cond_20

    .line 76
    const/4 v11, 0x1

    if-ne v5, v11, :cond_1e

    .line 77
    const v11, 0x7f07013e

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 79
    :cond_1e
    add-int/lit8 v5, v5, -0x1

    .line 83
    :cond_20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, knownNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getCountDataList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    .line 85
    .local v0, countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3a
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstNameCount()I

    move-result v11

    if-ge v2, v11, :cond_5a

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonId(I)J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_7a

    .line 88
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->getPersonFirstName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_7a

    .line 96
    :cond_5a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_2d

    .line 102
    .end local v0           #countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .end local v2           #j:I
    :cond_61
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 103
    .local v4, knownNamesSize:I
    sub-int v10, v5, v4

    .line 104
    .local v10, unknownNamesSize:I
    if-lez v10, :cond_7d

    const/4 v9, 0x1

    .line 106
    .local v9, unknownNamesIndex:I
    :goto_6a
    if-eqz v6, :cond_7f

    .line 107
    sget-object v11, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithYouStringIds:[[I

    aget-object v11, v11, v4

    aget v8, v11, v9

    .line 112
    .local v8, stringId:I
    :goto_72
    if-nez v9, :cond_b5

    .line 113
    packed-switch v4, :pswitch_data_106

    .line 140
    :goto_77
    const-string v11, ""

    goto :goto_a

    .line 85
    .end local v4           #knownNamesSize:I
    .end local v8           #stringId:I
    .end local v9           #unknownNamesIndex:I
    .end local v10           #unknownNamesSize:I
    .restart local v0       #countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .restart local v2       #j:I
    :cond_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 104
    .end local v0           #countData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .end local v2           #j:I
    .restart local v4       #knownNamesSize:I
    .restart local v10       #unknownNamesSize:I
    :cond_7d
    const/4 v9, 0x0

    goto :goto_6a

    .line 109
    .restart local v9       #unknownNamesIndex:I
    :cond_7f
    sget-object v11, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithoutYouStringIds:[[I

    aget-object v11, v11, v4

    aget v8, v11, v9

    .restart local v8       #stringId:I
    goto :goto_72

    .line 115
    :pswitch_86
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    .line 118
    :pswitch_8b
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 121
    :pswitch_9c
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 124
    :cond_b5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 125
    .local v7, resources:Landroid/content/res/Resources;
    packed-switch v4, :pswitch_data_110

    goto :goto_77

    .line 127
    :pswitch_bd
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 131
    :pswitch_cd
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 135
    :pswitch_e5
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_a

    .line 113
    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_86
        :pswitch_8b
        :pswitch_9c
    .end packed-switch

    .line 125
    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_bd
        :pswitch_cd
        :pswitch_e5
    .end packed-switch
.end method

.method public static getShortPlusOnesString(Landroid/content/Context;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/lang/String;
    .registers 10
    .parameter "context"
    .parameter "plusOneData"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 39
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v0

    .line 40
    .local v0, plusOneCount:I
    :goto_8
    if-nez v0, :cond_f

    .line 41
    const-string v4, ""

    .line 61
    :goto_c
    return-object v4

    .end local v0           #plusOneCount:I
    :cond_d
    move v0, v5

    .line 39
    goto :goto_8

    .line 44
    .restart local v0       #plusOneCount:I
    :cond_f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v1

    .line 45
    .local v1, plusOnedByYou:Z
    if-eqz v1, :cond_21

    .line 46
    if-ne v0, v4, :cond_1f

    .line 47
    const v4, 0x7f07013e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .line 49
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    .line 54
    :cond_21
    if-lez v0, :cond_41

    move v3, v4

    .line 55
    .local v3, unknownNamesIndex:I
    :goto_24
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 56
    sget-object v6, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithYouStringIds:[[I

    aget-object v6, v6, v5

    aget v2, v6, v3

    .line 61
    .local v2, stringId:I
    :goto_30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {v6, v2, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    .end local v2           #stringId:I
    .end local v3           #unknownNamesIndex:I
    :cond_41
    move v3, v5

    .line 54
    goto :goto_24

    .line 58
    .restart local v3       #unknownNamesIndex:I
    :cond_43
    sget-object v6, Lcom/google/android/apps/plus/views/PlusOneDataUtils;->sPlusOneWithoutYouStringIds:[[I

    aget-object v6, v6, v5

    aget v2, v6, v3

    .restart local v2       #stringId:I
    goto :goto_30
.end method
