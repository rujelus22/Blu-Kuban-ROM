.class public Lcom/google/android/apps/plus/content/EsPhotoActionState;
.super Ljava/lang/Object;
.source "EsPhotoActionState.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

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
