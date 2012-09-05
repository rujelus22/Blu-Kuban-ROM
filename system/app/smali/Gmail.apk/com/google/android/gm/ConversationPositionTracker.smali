.class public Lcom/google/android/gm/ConversationPositionTracker;
.super Ljava/lang/Object;
.source "ConversationPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;
    }
.end annotation


# instance fields
.field private mConversationId:J

.field private mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

.field private mHasPosition:Z

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mPositionIsValid:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mObservers:Ljava/util/List;

    .line 40
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mHasPosition:Z

    .line 42
    return-void
.end method

.method private isDataLoaded()Z
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Z)Z
    .registers 12
    .parameter "listAdapter"
    .parameter "positionIsValidBefore"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, conversationPosition:I
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 288
    invoke-virtual {p1, v1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getItemId(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_29

    .line 289
    iget v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    if-eq v5, v1, :cond_27

    move v0, v3

    .line 290
    .local v0, changed:Z
    :goto_18
    iput v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 291
    iput-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 293
    if-nez v0, :cond_20

    if-nez p2, :cond_26

    .line 299
    :cond_20
    if-nez p2, :cond_23

    move v4, v3

    :cond_23
    invoke-virtual {p0, v4}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    .line 323
    .end local v0           #changed:Z
    :cond_26
    :goto_26
    return v3

    :cond_27
    move v0, v4

    .line 289
    goto :goto_18

    .line 303
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 309
    :cond_2c
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getCount()I

    move-result v2

    .line 310
    .local v2, listSize:I
    iget v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    if-lt v5, v2, :cond_38

    .line 311
    if-nez v2, :cond_49

    .line 312
    iput-boolean v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 319
    :cond_38
    :goto_38
    iget-boolean v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v5, :cond_47

    .line 320
    iget v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {p1, v5}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getItemId(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 321
    invoke-virtual {p0, v3}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    :cond_47
    move v3, v4

    .line 323
    goto :goto_26

    .line 314
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationHeaderCursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    goto :goto_38
.end method

.method private onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)Z
    .registers 11
    .parameter "cursor"
    .parameter "positionIsValidBefore"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, conversationPosition:I
    :goto_3
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 246
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_29

    .line 248
    iput v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 249
    iput-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 254
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 256
    if-nez p2, :cond_25

    move v2, v3

    :cond_25
    invoke-virtual {p0, v2}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    .line 279
    :goto_28
    return v3

    .line 259
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 264
    :cond_2c
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v1

    .line 265
    .local v1, listSize:I
    iget v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    if-lt v4, v1, :cond_3a

    .line 266
    if-nez v1, :cond_52

    .line 267
    iput-boolean v2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 274
    :cond_3a
    :goto_3a
    iget-boolean v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v4, :cond_50

    .line 275
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v5, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 276
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 277
    invoke-virtual {p0, v3}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    :cond_50
    move v3, v2

    .line 279
    goto :goto_28

    .line 269
    :cond_52
    iget-object v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    goto :goto_3a
.end method


# virtual methods
.method public clearPosition()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 68
    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/ConversationPositionTracker;->initialize(JI)V

    .line 69
    iput-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mHasPosition:Z

    .line 70
    invoke-virtual {p0, v3}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    .line 71
    return-void
.end method

.method public getNewer()Lcom/google/android/gm/ConversationInfo;
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->hasNewer()Z

    move-result v0

    if-nez v0, :cond_8

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_7
    return-object v0

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 148
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v0}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_7
.end method

.method public getNewer(Lcom/google/android/gm/ConversationSelectionSet;)Lcom/google/android/gm/ConversationInfo;
    .registers 7
    .parameter "batchConversations"

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    if-nez v3, :cond_c

    .line 168
    :cond_b
    :goto_b
    return-object v2

    .line 159
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationSelectionSet;->keySet()Ljava/util/Collection;

    move-result-object v0

    .line 160
    .local v0, conversationIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    iget v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v3, -0x1

    .line 161
    .local v1, pos:I
    :goto_14
    if-ltz v1, :cond_b

    .line 162
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 163
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 164
    iget-object v2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v2}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v2

    goto :goto_b

    .line 166
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_14
.end method

.method public getOlder()Lcom/google/android/gm/ConversationInfo;
    .registers 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/google/android/gm/ConversationPositionTracker;->hasOlder()Z

    move-result v0

    if-nez v0, :cond_8

    .line 99
    const/4 v0, 0x0

    .line 103
    :goto_7
    return-object v0

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 103
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v0}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v0

    goto :goto_7
.end method

.method public getOlder(Lcom/google/android/gm/ConversationSelectionSet;)Lcom/google/android/gm/ConversationInfo;
    .registers 7
    .parameter "batchConversations"

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-boolean v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v3, :cond_b

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v3

    if-nez v3, :cond_c

    .line 123
    :cond_b
    :goto_b
    return-object v2

    .line 114
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gm/ConversationSelectionSet;->keySet()Ljava/util/Collection;

    move-result-object v0

    .line 115
    .local v0, conversationIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    iget v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v3, 0x1

    .line 116
    .local v1, pos:I
    :goto_14
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->count()I

    move-result v3

    if-ge v1, v3, :cond_b

    .line 117
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    .line 118
    iget-object v3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 119
    iget-object v2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-static {v2}, Lcom/google/android/gm/ConversationInfo;->forCursor(Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Lcom/google/android/gm/ConversationInfo;

    move-result-object v2

    goto :goto_b

    .line 121
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    return v0
.end method

.method hasNewer()Z
    .registers 3

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method hasOlder()Z
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    iget v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public initialize(JI)V
    .registers 5
    .parameter "initialConversationId"
    .parameter "initialPosition"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 57
    iput p3, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mHasPosition:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 62
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mHasPosition:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public moveToPosition(IZ)Z
    .registers 5
    .parameter "position"
    .parameter "smoothScroll"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->moveTo(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 78
    :cond_e
    const/4 v0, 0x0

    .line 83
    :goto_f
    return v0

    .line 80
    :cond_10
    iput p1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPosition:I

    .line 81
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mConversationId:J

    .line 82
    invoke-virtual {p0, p2}, Lcom/google/android/gm/ConversationPositionTracker;->notifyPositionChanged(Z)V

    .line 83
    const/4 v0, 0x1

    goto :goto_f
.end method

.method notifyPositionChanged(Z)V
    .registers 5
    .parameter "smoothScroll"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mObservers:Ljava/util/List;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;

    .line 341
    .local v1, observer:Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;
    invoke-interface {v1, p0, p1}, Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;->onPositionChanged(Lcom/google/android/gm/ConversationPositionTracker;Z)V

    goto :goto_a

    .line 343
    .end local v1           #observer:Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;
    :cond_1a
    return-void
.end method

.method public onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Lcom/google/android/gm/provider/Gmail$ConversationCursor;)Z
    .registers 6
    .parameter "listAdapter"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 219
    iput-object p2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    .line 220
    iget-boolean v2, p0, Lcom/google/android/gm/ConversationPositionTracker;->mHasPosition:Z

    if-nez v2, :cond_8

    .line 236
    :goto_7
    return v1

    .line 224
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gm/ConversationPositionTracker;->isDataLoaded()Z

    move-result v2

    if-nez v2, :cond_11

    .line 225
    iput-boolean v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    goto :goto_7

    .line 231
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mPositionIsValid:Z

    .line 233
    .local v0, positionIsValidBefore:Z
    if-eqz p1, :cond_1a

    .line 234
    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/ConversationHeaderCursorAdapter;Z)Z

    move-result v1

    goto :goto_7

    .line 236
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gm/ConversationPositionTracker;->mCursor:Lcom/google/android/gm/provider/Gmail$ConversationCursor;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gm/ConversationPositionTracker;->onListDataChanged(Lcom/google/android/gm/provider/Gmail$ConversationCursor;Z)Z

    move-result v1

    goto :goto_7
.end method

.method public registerObserver(Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-void
.end method

.method public unregisterObserver(Lcom/google/android/gm/ConversationPositionTracker$ConversationPositionObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gm/ConversationPositionTracker;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method
