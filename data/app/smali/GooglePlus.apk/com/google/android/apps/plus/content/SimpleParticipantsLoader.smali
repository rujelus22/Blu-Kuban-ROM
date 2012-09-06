.class public Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SimpleParticipantsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

.field mParticipants:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;[Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter
    .parameter "projection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, participants:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mParticipants:Ljava/util/Collection;

    .line 30
    iput-object p3, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mProjection:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method private addParticipantFieldToRow(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/String;Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;)V
    .registers 5
    .parameter "participant"
    .parameter "fieldName"
    .parameter "rowBuilder"

    .prologue
    .line 52
    const-string v0, "_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 53
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    .line 67
    :goto_10
    return-void

    .line 54
    :cond_11
    const-string v0, "participant_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 55
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10

    .line 56
    :cond_21
    const-string v0, "full_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 57
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10

    .line 58
    :cond_31
    const-string v0, "first_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 59
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10

    .line 60
    :cond_41
    const-string v0, "conversation_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 61
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10

    .line 62
    :cond_52
    const-string v0, "active"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10

    .line 65
    :cond_63
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    goto :goto_10
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 10

    .prologue
    .line 38
    new-instance v7, Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    iget-object v8, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mProjection:[Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v7, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    .line 40
    iget-object v7, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mParticipants:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 41
    .local v5, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v7, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/phone/EsMatrixCursor;->newRow()Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;

    move-result-object v6

    .line 42
    .local v6, rowBuilder:Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    iget-object v0, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mProjection:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_25
    if-ge v3, v4, :cond_f

    aget-object v1, v0, v3

    .line 43
    .local v1, fieldName:Ljava/lang/String;
    invoke-direct {p0, v5, v1, v6}, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->addParticipantFieldToRow(Lcom/google/wireless/realtimechat/proto/Data$Participant;Ljava/lang/String;Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;)V

    .line 42
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 47
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v6           #rowBuilder:Lcom/google/android/apps/plus/phone/EsMatrixCursor$RowBuilder;
    :cond_2f
    iget-object v7, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    return-object v7
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    if-eqz v0, :cond_a

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->mCursor:Lcom/google/android/apps/plus/phone/EsMatrixCursor;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->deliverResult(Ljava/lang/Object;)V

    .line 77
    :goto_9
    return-void

    .line 76
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/SimpleParticipantsLoader;->forceLoad()V

    goto :goto_9
.end method
