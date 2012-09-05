.class public Lcom/google/android/apps/books/render/ReaderSettings;
.super Ljava/lang/Object;
.source "ReaderSettings.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final fontFamily:Ljava/lang/String;

.field public final isThemeNight:Z

.field private final mLineHeightFP:I

.field private final mTextZoomFP:I

.field public final textAlign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .registers 6
    .parameter "context"
    .parameter "textZoom"

    .prologue
    const/high16 v2, 0x42c8

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->isThemeNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    .line 49
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getTypeface()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    .line 50
    mul-float v1, p2, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    .line 51
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getLineHeight()F

    move-result v1

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    .line 52
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getTextAlign()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    .line 53
    return-void
.end method

.method constructor <init>(ZLjava/lang/String;FFLjava/lang/String;)V
    .registers 8
    .parameter "isThemeNight"
    .parameter "fontFamily"
    .parameter "textZoom"
    .parameter "lineHeight"
    .parameter "textAlign"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v1, 0x42c8

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    .line 59
    iput-object p2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    .line 60
    mul-float v0, p3, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    .line 61
    mul-float v0, p4, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    .line 62
    iput-object p5, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 78
    instance-of v2, p1, Lcom/google/android/apps/books/render/ReaderSettings;

    if-nez v2, :cond_6

    .line 80
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 79
    check-cast v0, Lcom/google/android/apps/books/render/ReaderSettings;

    .line 80
    .local v0, compare:Lcom/google/android/apps/books/render/ReaderSettings;
    iget-boolean v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    iget-boolean v3, v0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    iget v3, v0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    iget v3, v0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public getLineHeight()F
    .registers 3

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public getTextZoom()F
    .registers 3

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReaderSettings{isThemeNight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->isThemeNight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fontFamily=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->fontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTextZoomFP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mTextZoomFP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineHeight=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->mLineHeightFP:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textAlign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/render/ReaderSettings;->textAlign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
