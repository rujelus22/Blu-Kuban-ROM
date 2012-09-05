.class public Lcom/google/android/apps/plus/phone/StreamAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "StreamAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/StreamAdapter$2;,
        Lcom/google/android/apps/plus/phone/StreamAdapter$StreamQuery;,
        Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private final mFooterView:Landroid/view/View;

.field private mSearchQuery:Ljava/lang/String;

.field private final mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/StreamRowView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;Landroid/view/View;)V
    .registers 9
    .parameter "context"
    .parameter "listView"
    .parameter "account"
    .parameter "cursor"
    .parameter "clickListener"
    .parameter "viewUseListener"
    .parameter "footerView"

    .prologue
    .line 143
    invoke-direct {p0, p1, p4}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    .line 145
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 146
    iput-object p5, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 147
    iput-object p6, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    .line 148
    iput-object p7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    .line 150
    new-instance v0, Lcom/google/android/apps/plus/phone/StreamAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/StreamAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/StreamAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/StreamAdapter;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/StreamAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 368
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    if-ne p1, v1, :cond_5

    .line 390
    :cond_4
    :goto_4
    return-void

    .line 372
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 375
    .local v0, streamRowView:Lcom/google/android/apps/plus/views/StreamRowView;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mSearchQuery:Ljava/lang/String;

    move-object v1, p2

    move-object v3, p3

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/views/StreamRowView;->bindView(Lcom/google/android/apps/plus/views/StreamRowView;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/database/Cursor;Lcom/google/android/apps/plus/views/ItemClickListener;ZZLjava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 379
    const-string v1, "StreamAdapter"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 380
    const-string v1, "StreamAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_52
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_57
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    if-eqz v1, :cond_4

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;->onViewUsed(I)V

    goto :goto_4
.end method

.method public getActivityId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorId()J
    .registers 3

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContinuationToken()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 260
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_8

    .line 270
    :cond_7
    :goto_7
    return-object v1

    .line 266
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 267
    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 431
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_d

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getItemViewType(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 419
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 420
    const/4 v0, 0x0

    .line 422
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getObjectType()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;
    .registers 4

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/16 v2, 0xc

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    move-result-object v0

    .line 217
    .local v0, source:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    sget-object v1, Lcom/google/android/apps/plus/phone/StreamAdapter$2;->$SwitchMap$com$google$wireless$tacotruck$proto$Data$Source$Type:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 223
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TORTILLA:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    :goto_1b
    return-object v1

    .line 219
    :pswitch_1c
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->TACO:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    goto :goto_1b

    .line 217
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method

.method public getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 203
    .local v0, poBytes:[B
    if-eqz v0, :cond_10

    .line 204
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    .line 206
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "pos"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 319
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_12

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    if-eqz v0, :cond_f

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViewUseListener:Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;

    invoke-interface {v0}, Lcom/google/android/apps/plus/phone/StreamAdapter$ViewUseListener;->onFooterViewUsed()V

    .line 323
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    .line 326
    :goto_11
    return-object v0

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_11
.end method

.method public getViewFromPos(I)Landroid/view/View;
    .registers 5
    .parameter "pos"

    .prologue
    .line 334
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_9

    .line 335
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    .line 344
    :goto_8
    return-object v1

    .line 338
    :cond_9
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 339
    .local v1, view:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_f

    goto :goto_8

    .line 344
    .end local v1           #view:Lcom/google/android/apps/plus/views/StreamRowView;
    :cond_22
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 411
    const/4 v0, 0x2

    return v0
.end method

.method public isFooterIndex(I)Z
    .registers 3
    .parameter "pos"

    .prologue
    .line 439
    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLimited()Z
    .registers 3

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isLocked()Z
    .registers 3

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/StreamAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 397
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-super {p0}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_d

    .line 398
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mFooterView:Landroid/view/View;

    .line 403
    :goto_c
    return-object v1

    .line 401
    :cond_d
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 403
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_c
.end method

.method public onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 10
    .parameter "url"
    .parameter "bitmap"
    .parameter "type"

    .prologue
    .line 176
    if-nez p2, :cond_3

    .line 196
    :cond_2
    return-void

    .line 180
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/StreamRowView;

    .local v1, v:Landroid/view/View;
    move-object v2, v1

    .line 181
    check-cast v2, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 182
    .local v2, view:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasSkyjamThumbnail(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 183
    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setSkyjamThumbnail(Landroid/graphics/Bitmap;)V

    .line 184
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_9

    .line 185
    :cond_25
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 186
    const-string v3, "StreamAdapter"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 187
    const-string v3, "StreamAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageLoaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_60
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/StreamRowView;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_9

    .line 191
    :cond_67
    invoke-virtual {v2, p1}, Lcom/google/android/apps/plus/views/StreamRowView;->hasTitleImage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 192
    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/plus/views/StreamRowView;->setTitleImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_9
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 352
    const-string v2, "StreamAdapter"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 353
    const-string v2, "StreamAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_31
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/StreamRowView;

    .line 357
    .local v1, view:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->refreshImages()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 358
    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->invalidate()V

    goto :goto_37

    .line 361
    .end local v1           #view:Lcom/google/android/apps/plus/views/StreamRowView;
    :cond_4d
    return-void
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .registers 2
    .parameter "searchQuery"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamAdapter;->mSearchQuery:Ljava/lang/String;

    .line 449
    return-void
.end method
