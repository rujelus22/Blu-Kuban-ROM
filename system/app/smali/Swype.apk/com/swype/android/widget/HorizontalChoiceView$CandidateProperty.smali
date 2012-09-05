.class public Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;
.super Ljava/lang/Object;
.source "HorizontalChoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/HorizontalChoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CandidateProperty"
.end annotation


# static fields
.field public static final CANDIDATE_FORMAT_ADD_WORD:I = 0x8

.field public static final CANDIDATE_FORMAT_FILL_SCREEN:I = 0x2

.field public static final CANDIDATE_FORMAT_HWCL_TIP:I = 0x10

.field public static final CANDIDATE_FORMAT_LOCK_ICON:I = 0x1

.field public static final CANDIDATE_FORMAT_NON_INTERACTIVE:I = 0x4

.field public static final CANDIDATE_TYPE_CHINESE_TEXT:I = 0x3

.field public static final CANDIDATE_TYPE_DEFAULT_WORD:I = 0x1

.field public static final CANDIDATE_TYPE_EXACT_TAPPED_WORD:I = 0x2

.field public static final CANDIDATE_TYPE_JAPANESE_SPECIAL:I = 0x5

.field public static final CANDIDATE_TYPE_JAPANESE_TEXT:I = 0x4

.field public static final CANDIDATE_TYPE_NONE:I = 0x0

.field public static final CANDIDATE_TYPE_NWP:I = 0x6


# instance fields
.field private property:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "property"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->property:I

    .line 45
    return-void
.end method

.method public static isAddWordList([I)Z
    .registers 3
    .parameter "properties"

    .prologue
    .line 74
    if-eqz p0, :cond_13

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 76
    aget v1, p0, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 77
    const/4 v1, 0x1

    .line 81
    .end local v0           #i:I
    :goto_f
    return v1

    .line 75
    .restart local v0       #i:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 81
    .end local v0           #i:I
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isTipShownInHWCLCheck([I)Z
    .registers 3
    .parameter "properties"

    .prologue
    .line 88
    if-eqz p0, :cond_13

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_13

    .line 90
    aget v1, p0, v0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_10

    .line 91
    const/4 v1, 0x1

    .line 95
    .end local v0           #i:I
    :goto_f
    return v1

    .line 89
    .restart local v0       #i:I
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 95
    .end local v0           #i:I
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public final getCandidateFormatBits()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->property:I

    shr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public final getCandidateType()I
    .registers 3

    .prologue
    .line 104
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->property:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final hasProperty(I)Z
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->getCandidateFormatBits()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
