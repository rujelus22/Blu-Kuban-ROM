.class public Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;
.super Lcom/google/android/apps/plus/phone/TranslationAdapter;
.source "StreamTranslationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$1;,
        Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private final mObserver:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;

.field private mTranslation:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;)V
    .registers 4
    .parameter "innerAdapter"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/TranslationAdapter;-><init>(Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;)V

    .line 22
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;-><init>(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mObserver:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;

    .line 27
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    if-eqz v0, :cond_16

    .line 28
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mObserver:Lcom/google/android/apps/plus/phone/StreamTranslationAdapter$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 30
    :cond_16
    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;Landroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;

    return-object p1
.end method

.method private buildTranslationTable()V
    .registers 9

    .prologue
    .line 61
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;

    .line 62
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v6}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getColumnCount()I

    move-result v0

    .line 63
    .local v0, colCount:I
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v6}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->isHorizontal()Z

    move-result v2

    .line 64
    .local v2, isHorizontal:Z
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mInnerAdapter:Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;

    invoke-interface {v6}, Lcom/google/android/apps/plus/phone/TranslationAdapter$TranslationListAdapter;->getLayoutArray()[[I

    move-result-object v3

    .line 66
    .local v3, layoutArray:[[I
    if-nez v3, :cond_23

    .line 67
    const-string v6, "TranslationAdapter"

    const-string v7, "Building translation without an array. Did you forget to set the layout?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_22
    return-void

    .line 71
    :cond_23
    const/4 v6, 0x1

    if-eq v0, v6, :cond_22

    .line 77
    new-array v5, v0, [I

    .line 78
    .local v5, rowEnd:[I
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 80
    const/4 v1, 0x0

    .line 82
    .local v1, i:I
    :goto_2d
    invoke-direct {p0, v0, v2, v3, v5}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->getNextPosition(IZ[[I[I)I

    move-result v4

    .line 83
    .local v4, position:I
    if-ltz v4, :cond_22

    .line 87
    if-ne v1, v4, :cond_38

    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    goto :goto_2d

    .line 93
    :cond_38
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    goto :goto_2d
.end method

.method private final getNextPosition(IZ[[I[I)I
    .registers 18
    .parameter "colCount"
    .parameter "isHorizontal"
    .parameter "layoutArray"
    .parameter "rowEnd"

    .prologue
    .line 110
    const/high16 v8, -0x8000

    .line 111
    .local v8, targetCol:I
    const v9, 0x7fffffff

    .line 113
    .local v9, targetRow:I
    if-eqz p2, :cond_13

    .line 114
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, p1, :cond_30

    .line 115
    aget v10, p4, v1

    .line 116
    .local v10, thisRow:I
    if-ge v10, v9, :cond_10

    .line 117
    move v8, v1

    .line 118
    move v9, v10

    .line 114
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 122
    .end local v1           #i:I
    .end local v10           #thisRow:I
    :cond_13
    const/high16 v3, -0x8000

    .line 123
    .local v3, lastRow:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_16
    if-ge v1, p1, :cond_29

    .line 124
    aget v10, p4, v1

    .line 125
    .restart local v10       #thisRow:I
    add-int/lit8 v11, v10, 0x1

    rem-int/2addr v11, p1

    if-nez v11, :cond_3a

    .line 127
    if-eqz v1, :cond_23

    if-ne v3, v10, :cond_27

    .line 129
    :cond_23
    move v3, v10

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 134
    :cond_27
    move v8, v1

    .line 135
    move v9, v10

    .line 147
    .end local v10           #thisRow:I
    :cond_29
    :goto_29
    const/high16 v11, -0x8000

    if-ne v8, v11, :cond_30

    .line 148
    const/4 v8, 0x0

    .line 149
    aget v9, p4, v8

    .line 152
    .end local v3           #lastRow:I
    :cond_30
    add-int/lit8 v9, v9, 0x1

    .line 154
    const/4 v11, 0x0

    aget-object v11, p3, v11

    array-length v7, v11

    .line 155
    .local v7, rowWidth:I
    if-lt v9, v7, :cond_3d

    .line 156
    const/4 v4, -0x1

    .line 195
    :cond_39
    return v4

    .line 140
    .end local v7           #rowWidth:I
    .restart local v3       #lastRow:I
    .restart local v10       #thisRow:I
    :cond_3a
    move v8, v1

    .line 141
    move v9, v10

    .line 142
    goto :goto_29

    .line 159
    .end local v3           #lastRow:I
    .end local v10           #thisRow:I
    .restart local v7       #rowWidth:I
    :cond_3d
    aget-object v11, p3, v8

    aget v4, v11, v9

    .line 162
    .local v4, newPosition:I
    move v0, v9

    .line 163
    .local v0, endRow:I
    sub-int v11, v7, v9

    invoke-static {p1, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 164
    .local v6, rowLookahead:I
    const/4 v2, 0x1

    .local v2, j:I
    :goto_49
    if-ge v2, v6, :cond_53

    .line 165
    aget-object v11, p3, v8

    add-int v12, v9, v2

    aget v11, v11, v12

    if-eq v11, v4, :cond_7c

    .line 172
    :cond_53
    move v1, v8

    :goto_54
    if-ge v1, p1, :cond_5c

    .line 173
    aget-object v11, p3, v1

    aget v11, v11, v0

    if-eq v11, v4, :cond_81

    .line 184
    :cond_5c
    const/4 v1, 0x1

    :goto_5d
    if-ge v1, p1, :cond_39

    .line 185
    add-int/lit8 v11, v1, -0x1

    aget v5, p4, v11

    .line 186
    .local v5, prevRowEnd:I
    aget v11, p4, v1

    add-int/lit8 v2, v11, 0x1

    :goto_67
    if-ge v2, v7, :cond_79

    aget v11, p4, v1

    if-le v5, v11, :cond_79

    .line 187
    add-int/lit8 v11, v1, -0x1

    aget-object v11, p3, v11

    aget v11, v11, v2

    aget-object v12, p3, v1

    aget v12, v12, v2

    if-eq v11, v12, :cond_8c

    .line 184
    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 168
    .end local v5           #prevRowEnd:I
    :cond_7c
    add-int v0, v9, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 177
    :cond_81
    aget v11, p4, v1

    add-int/lit8 v12, v9, -0x1

    if-ne v11, v12, :cond_5c

    .line 180
    aput v0, p4, v1

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 191
    .restart local v5       #prevRowEnd:I
    :cond_8c
    aput v2, p4, v1

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_67
.end method


# virtual methods
.method protected translate(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;

    if-nez v0, :cond_7

    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->buildTranslationTable()V

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamTranslationAdapter;->mTranslation:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method
