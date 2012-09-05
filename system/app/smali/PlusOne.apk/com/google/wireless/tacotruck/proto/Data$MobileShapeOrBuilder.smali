.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$MobileShapeOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobileShapeOrBuilder"
.end annotation


# virtual methods
.method public abstract getFocusObfuscatedNameTagCreatorId()Ljava/lang/String;
.end method

.method public abstract getFocusObfuscatedSubjectId()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getLowerRightX()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLowerRightY()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getNameTagCreatorGaiaId()J
.end method

.method public abstract getNormalizedBounds()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Rect;
.end method

.method public abstract getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
.end method

.method public abstract getStatus()Lcom/google/wireless/tacotruck/proto/Data$MobileShape$Status;
.end method

.method public abstract getSubjectGaiaId()J
.end method

.method public abstract getSuggestion(I)Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;
.end method

.method public abstract getSuggestionCount()I
.end method

.method public abstract getSuggestionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PersonSuggestion;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpperLeftX()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getUpperLeftY()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasFocusObfuscatedNameTagCreatorId()Z
.end method

.method public abstract hasFocusObfuscatedSubjectId()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLowerRightX()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasLowerRightY()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasNameTagCreatorGaiaId()Z
.end method

.method public abstract hasNormalizedBounds()Z
.end method

.method public abstract hasPhotoActionState()Z
.end method

.method public abstract hasStatus()Z
.end method

.method public abstract hasSubjectGaiaId()Z
.end method

.method public abstract hasUpperLeftX()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasUpperLeftY()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
