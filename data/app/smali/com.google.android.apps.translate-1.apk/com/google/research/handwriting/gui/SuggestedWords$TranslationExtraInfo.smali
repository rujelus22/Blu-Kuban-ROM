.class public Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranslationExtraInfo"
.end annotation


# instance fields
.field private mSourceAndTargetTexts:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "extraInfo"

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    :try_start_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_e} :catch_f

    .line 197
    :goto_e
    return-void

    .line 194
    :catch_f
    move-exception v0

    goto :goto_e
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "sourceText"
    .parameter "targetText"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    if-eqz p1, :cond_7

    if-nez p2, :cond_8

    .line 189
    :cond_7
    :goto_7
    return-void

    .line 186
    :cond_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    .line 187
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7
.end method

.method private hasValidExtraInfo()Z
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public getSourceText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->hasValidExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    :goto_d
    return-object v1

    .line 206
    :cond_e
    const-string v1, ""
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_d

    .line 207
    :catch_11
    move-exception v0

    .line 208
    .local v0, e:Lorg/json/JSONException;
    const-string v1, ""

    goto :goto_d
.end method

.method public getTargetText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->hasValidExtraInfo()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    :goto_d
    return-object v1

    .line 214
    :cond_e
    const-string v1, ""
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_d

    .line 215
    :catch_11
    move-exception v0

    .line 216
    .local v0, e:Lorg/json/JSONException;
    const-string v1, ""

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;->mSourceAndTargetTexts:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
