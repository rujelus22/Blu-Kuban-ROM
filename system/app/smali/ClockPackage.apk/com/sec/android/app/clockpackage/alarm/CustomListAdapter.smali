.class public Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$1;,
        Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;,
        Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

.field private mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mFlagVisibility:I

.field private mHeaderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$1;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;

    .line 35
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    .line 268
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Landroid/database/DataSetObservable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;)Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    return-object v0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)Z
    .registers 4
    .parameter "v"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, ret:Z
    if-eqz v0, :cond_15

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 91
    .end local v0           #ret:Z
    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v0, :cond_12

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    goto :goto_11
.end method

.method public getHeaderViewCount()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 5
    .parameter "position"

    .prologue
    .line 156
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v1, :cond_1c

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 160
    .local v0, headerCount:I
    if-ge p1, v0, :cond_13

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 170
    .end local v0           #headerCount:I
    :goto_12
    return-object v1

    .line 166
    .restart local v0       #headerCount:I
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_12

    .line 170
    .end local v0           #headerCount:I
    :cond_1c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_12
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 178
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v1, :cond_23

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 182
    .local v0, headerCount:I
    if-ge p1, v0, :cond_1a

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v1, v1

    .line 192
    .end local v0           #headerCount:I
    :goto_19
    return-wide v1

    .line 188
    .restart local v0       #headerCount:I
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_19

    .line 192
    .end local v0           #headerCount:I
    :cond_23
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_19
.end method

.method public getItemViewType(I)I
    .registers 4
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v1, :cond_e

    .line 110
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_e

    .line 112
    const/4 v0, 0x1

    .line 120
    :cond_e
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 215
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    if-nez v1, :cond_1e

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 219
    .local v0, headerCount:I
    if-ge p1, v0, :cond_15

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 232
    .end local v0           #headerCount:I
    :goto_14
    return-object v1

    .line 225
    .restart local v0       #headerCount:I
    :cond_15
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2, p2, p3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_14

    .line 232
    .end local v0           #headerCount:I
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_14
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mHeaderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    const/4 v0, 0x1

    .line 209
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    if-eqz v0, :cond_c

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->notifyDataSetChanged()V

    .line 247
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 249
    const-string v0, "CustomListAdapter"

    const-string v1, "notifyDataSetChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_17
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .registers 3

    .prologue
    .line 256
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    if-eqz v0, :cond_c

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->notifyDataSetInvalidated()V

    .line 262
    :cond_c
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->DEBUG:Z

    if-eqz v0, :cond_17

    .line 264
    const-string v0, "CustomListAdapter"

    const-string v1, "notifyDataSetInvalidated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_17
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public setCursorAdapter(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mCursorChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$CursorAdapterChangeListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setOnCursorChangeListener(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CursorChangeListener;)V

    .line 61
    return-void
.end method

.method public setHeaderVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 99
    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 101
    :cond_6
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mFlagVisibility:I

    .line 103
    :cond_8
    return-void
.end method

.method public setOnItemChangeListener(Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mOnItemChangeListener:Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter$OnItemChangeListener;

    .line 53
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CustomListAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 75
    return-void
.end method
