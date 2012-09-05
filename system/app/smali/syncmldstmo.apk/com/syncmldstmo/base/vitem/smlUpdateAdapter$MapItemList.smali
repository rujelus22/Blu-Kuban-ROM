.class Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;
.super Ljava/lang/Object;
.source "smlUpdateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapItemList"
.end annotation


# instance fields
.field private mapArray:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;)Ljava/util/Vector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public add(IJI)Z
    .registers 7
    .parameter "luid"
    .parameter "crc"
    .parameter "action"

    .prologue
    .line 113
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;-><init>()V

    .line 115
    .local v0, mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    iput p1, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    .line 116
    iput-wide p2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    .line 117
    iput p4, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->action:I

    .line 118
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    const/4 v1, 0x1

    return v1
.end method

.method clear()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 147
    return-void
.end method

.method public getIndexFromLuid(I)I
    .registers 5
    .parameter "luid"

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 86
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    .line 87
    .local v1, mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    iget v2, v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    if-ne v2, p1, :cond_16

    .line 90
    .end local v0           #i:I
    .end local v1           #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :goto_15
    return v0

    .line 84
    .restart local v0       #i:I
    .restart local v1       #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    .end local v1           #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :cond_19
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public getItem(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    return-object v0
.end method

.method public getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    .registers 5
    .parameter "luid"

    .prologue
    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 104
    iget-object v2, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    .line 105
    .local v1, mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    iget v2, v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->luid:I

    if-ne v2, p1, :cond_16

    .line 108
    .end local v1           #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :goto_15
    return-object v1

    .line 102
    .restart local v1       #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v1           #mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    :cond_19
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public remove(I)Z
    .registers 4
    .parameter "luid"

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getIndexFromLuid(I)I

    move-result v0

    .line 138
    .local v0, i:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 139
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_c
    const/4 v1, 0x1

    return v1
.end method

.method public set(IJI)Z
    .registers 7
    .parameter "luid"
    .parameter "crc"
    .parameter "action"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->getItemFromLuid(I)Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;

    move-result-object v0

    .line 126
    .local v0, mapitem:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;
    if-nez v0, :cond_8

    .line 127
    const/4 v1, 0x0

    .line 132
    :goto_7
    return v1

    .line 129
    :cond_8
    iput-wide p2, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->crc:J

    .line 130
    iput p4, v0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItem;->action:I

    .line 132
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public size()I
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter$MapItemList;->mapArray:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
