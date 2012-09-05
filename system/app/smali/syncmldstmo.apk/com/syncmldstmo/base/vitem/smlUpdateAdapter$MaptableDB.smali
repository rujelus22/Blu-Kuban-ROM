.class public Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;
.super Ljava/lang/Object;
.source "smlUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaptableDB"
.end annotation


# instance fields
.field public _bChanged:Z

.field private _bLoadMaptable:Z

.field public m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 184
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    .line 185
    iput-boolean v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z

    return-void
.end method

.method static synthetic access$200(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z

    return v0
.end method


# virtual methods
.method public LoadMaptable(Ljava/lang/String;)V
    .registers 13
    .parameter "path"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data/data/com.syncmldstmo/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, mapfile:Ljava/lang/String;
    iput-boolean v9, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 238
    invoke-static {v6}, Lcom/syncmldstmo/cust/smlFile;->smlFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 240
    invoke-static {v6}, Lcom/syncmldstmo/cust/smlFile;->smlFileRead(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;

    .line 241
    .local v5, map:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;
    if-eqz v5, :cond_5b

    .line 244
    const/4 v1, 0x0

    .local v1, i:I
    :goto_26
    if-ge v1, v10, :cond_38

    .line 246
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v7, v7, v1

    if-eqz v7, :cond_35

    .line 247
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->clear()V

    .line 244
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 250
    :cond_38
    const/4 v0, 0x0

    .local v0, cnt:I
    :goto_39
    if-ge v0, v10, :cond_5b

    .line 252
    const/4 v1, 0x0

    :goto_3c
    iget-object v7, v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    aget v7, v7, v0

    if-ge v1, v7, :cond_58

    .line 254
    iget-object v7, v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->luid:[[I

    aget-object v7, v7, v0

    aget v4, v7, v1

    .line 255
    .local v4, luid:I
    iget-object v7, v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->crc:[[J

    aget-object v7, v7, v0

    aget-wide v2, v7, v1

    .line 257
    .local v2, key:J
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v7, v7, v0

    invoke-virtual {v7, v4, v2, v3, v9}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->add(IJI)Z

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 250
    .end local v2           #key:J
    .end local v4           #luid:I
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 262
    .end local v0           #cnt:I
    .end local v1           #i:I
    .end local v5           #map:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;
    :cond_5b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z

    .line 263
    return-void
.end method

.method public SaveMaptable(Ljava/lang/String;)V
    .registers 14
    .parameter "path"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x5

    .line 267
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data/data/com.syncmldstmo/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, mapfile:Ljava/lang/String;
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;

    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;-><init>()V

    .line 270
    .local v3, map:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, cnt:I
    const/4 v6, 0x0

    .line 275
    .local v6, nTemp:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_20
    if-ge v2, v10, :cond_59

    .line 277
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v8

    aput v8, v7, v2

    .line 279
    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v10, :cond_56

    .line 281
    if-eq v2, v0, :cond_53

    .line 283
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v8

    aput v8, v7, v0

    .line 284
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    aget v7, v7, v2

    iget-object v8, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    aget v8, v8, v0

    if-ge v7, v8, :cond_53

    .line 286
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    aget v7, v7, v0

    if-ge v6, v7, :cond_53

    .line 287
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    aget v6, v7, v0

    .line 279
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 275
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 293
    :cond_59
    if-nez v6, :cond_b8

    .line 295
    filled-new-array {v10, v11}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->luid:[[I

    .line 296
    filled-new-array {v10, v11}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    iput-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->crc:[[J

    .line 304
    :goto_77
    const/4 v0, 0x0

    :goto_78
    if-ge v0, v10, :cond_d8

    .line 306
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->count:[I

    iget-object v8, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->size()I

    move-result v8

    aput v8, v7, v0

    .line 309
    const/4 v1, 0x0

    .local v1, i:I
    :goto_87
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v7, v7, v0

    #getter for: Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;
    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->access$100(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_d5

    .line 311
    iget-object v7, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v7, v7, v0

    #getter for: Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;
    invoke-static {v7}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->access$100(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    .line 312
    .local v5, mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    if-eqz v5, :cond_b5

    .line 314
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->luid:[[I

    aget-object v7, v7, v0

    iget v8, v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    aput v8, v7, v1

    .line 315
    iget-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->crc:[[J

    aget-object v7, v7, v0

    iget-wide v8, v5, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    aput-wide v8, v7, v1

    .line 309
    :cond_b5
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 300
    .end local v1           #i:I
    .end local v5           #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :cond_b8
    filled-new-array {v10, v6}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->luid:[[I

    .line 301
    filled-new-array {v10, v6}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[J

    iput-object v7, v3, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapTableFile;->crc:[[J

    goto :goto_77

    .line 304
    .restart local v1       #i:I
    :cond_d5
    add-int/lit8 v0, v0, 0x1

    goto :goto_78

    .line 320
    .end local v1           #i:I
    :cond_d8
    invoke-static {v4, v3}, Lcom/syncmldstmo/cust/smlFile;->smlFileWrite(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    iput-boolean v11, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bLoadMaptable:Z

    .line 322
    return-void
.end method

.method public delete(II)V
    .registers 4
    .parameter "index"
    .parameter "luid"

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 212
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->remove(I)Z

    .line 213
    return-void
.end method

.method public deleteAll()V
    .registers 3

    .prologue
    .line 200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    const/4 v1, 0x5

    if-ge v0, v1, :cond_17

    .line 203
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_14

    .line 204
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->clear()V

    .line 201
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 206
    :cond_17
    return-void
.end method

.method public insert(IIJ)V
    .registers 7
    .parameter "index"
    .parameter "luid"
    .parameter "key"

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 219
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->add(IJI)Z

    .line 220
    return-void
.end method

.method public mapinit()V
    .registers 5

    .prologue
    .line 189
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_17

    .line 191
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v1, v1, v0

    if-nez v1, :cond_14

    .line 193
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    new-instance v2, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;-><init>(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$1;)V

    aput-object v2, v1, v0

    .line 189
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_17
    return-void
.end method

.method public update(IIJ)V
    .registers 7
    .parameter "index"
    .parameter "luid"
    .parameter "key"

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->_bChanged:Z

    .line 226
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MaptableDB;->m_mapItemList:[Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->set(IJI)Z

    .line 227
    return-void
.end method
