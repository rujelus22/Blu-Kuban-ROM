.class public abstract Lcom/syncmldstmo/base/smlUpdate;
.super Ljava/lang/Object;
.source "smlUpdate.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I
.end method

.method public abstract deleteAllItem(Ljava/lang/Object;I)I
.end method

.method public abstract deleteItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;)I
.end method

.method public abstract getItem(Ljava/lang/Object;Lcom/syncmldstmo/base/sml$Item_t;Lcom/syncmldstmo/base/smlUpdate$UpdateItem;)I
.end method

.method public abstract getNextUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
.end method

.method public abstract getPrevUpdatedItem(Lcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;III)Lcom/syncmldstmo/base/smlUpdate$UpdateItem;
.end method

.method public abstract initMapDB()I
.end method

.method public abstract mapTableReinitAlloc()I
.end method

.method public abstract notifyAddStatus(IIII)I
.end method

.method public abstract notifyAddStatusEx(IIIIILjava/lang/String;)I
.end method

.method public abstract notifyDeleteAllStatus(II)I
.end method

.method public abstract notifyDeleteStatus(IIII)I
.end method

.method public abstract notifyDeleteStatusEx(IIIIILjava/lang/String;)I
.end method

.method public abstract notifyReplaceStatus(IIII)I
.end method

.method public abstract notifyReplaceStatusEx(IIIIILjava/lang/String;)I
.end method

.method public abstract replaceItem(Ljava/lang/Object;ILcom/syncmldstmo/base/sml$Item_t;I)I
.end method

.method public abstract saveMapTable()I
.end method

.method public abstract smlGetUpdateList(ILcom/syncmldstmo/database/smlProfile$SMLSyncDBInfo_t;Lcom/syncmldstmo/base/smlDebug$RefInt;)I
.end method
