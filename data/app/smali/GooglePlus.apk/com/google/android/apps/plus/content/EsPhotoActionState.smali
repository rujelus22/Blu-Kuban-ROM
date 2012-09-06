.class public Lcom/google/android/apps/plus/content/EsPhotoActionState;
.super Ljava/lang/Object;
.source "EsPhotoActionState.java"


# direct methods
.method static getFlags(Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;)I
    .registers 5
    .parameter "state"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanComment()Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v2

    :goto_a
    or-int/2addr v0, v1

    .line 31
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanTag()Z

    move-result v1

    if-eqz v1, :cond_25

    move v1, v2

    :goto_12
    or-int/2addr v0, v1

    .line 32
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanEdit()Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    :goto_1a
    or-int/2addr v0, v1

    .line 33
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->getViewerCanApprove()Z

    move-result v1

    if-eqz v1, :cond_29

    :goto_21
    or-int/2addr v0, v2

    .line 34
    return v0

    :cond_23
    move v1, v3

    .line 30
    goto :goto_a

    :cond_25
    move v1, v3

    .line 31
    goto :goto_12

    :cond_27
    move v1, v3

    .line 32
    goto :goto_1a

    :cond_29
    move v2, v3

    .line 33
    goto :goto_21
.end method

.method public static getState(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
    .registers 5
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    move-result-object v0

    .line 40
    .local v0, stateBuilder:Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_2a

    move v1, v2

    :goto_b
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanComment(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 41
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2c

    move v1, v2

    :goto_13
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanTag(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 42
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2e

    move v1, v2

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanEdit(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 43
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_30

    :goto_22
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->setViewerCanApprove(Z)Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;

    .line 44
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;

    move-result-object v1

    return-object v1

    :cond_2a
    move v1, v3

    .line 40
    goto :goto_b

    :cond_2c
    move v1, v3

    .line 41
    goto :goto_13

    :cond_2e
    move v1, v3

    .line 42
    goto :goto_1b

    :cond_30
    move v2, v3

    .line 43
    goto :goto_22
.end method
