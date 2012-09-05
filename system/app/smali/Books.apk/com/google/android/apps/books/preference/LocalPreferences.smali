.class public Lcom/google/android/apps/books/preference/LocalPreferences;
.super Ljava/lang/Object;
.source "LocalPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/preference/LocalPreferences$ViewMode;,
        Lcom/google/android/apps/books/preference/LocalPreferences$VolumeSortOrder;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Justification;,
        Lcom/google/android/apps/books/preference/LocalPreferences$LineHeight;,
        Lcom/google/android/apps/books/preference/LocalPreferences$TextZoom;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Themes;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Typeface;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Brightness;,
        Lcom/google/android/apps/books/preference/LocalPreferences$Keys;
    }
.end annotation


# static fields
.field private static sDefaultTextZoom:Ljava/lang/Float;


# instance fields
.field private final mResources:Landroid/content/res/Resources;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const v6, 0x3ecccccd

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mResources:Landroid/content/res/Resources;

    .line 140
    sget-object v4, Lcom/google/android/apps/books/preference/LocalPreferences;->sDefaultTextZoom:Ljava/lang/Float;

    if-nez v4, :cond_73

    .line 141
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 143
    .local v2, mgr:Landroid/view/WindowManager;
    if-eqz v2, :cond_73

    .line 144
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    const/high16 v5, 0x3f00

    div-float/2addr v4, v5

    add-float v0, v4, v6

    .line 149
    .local v0, calculatedZoom:F
    sget v3, Lcom/google/android/apps/books/preference/TextZoomPreference;->ZOOM_INCREMENT:F

    .line 150
    .local v3, zoomInc:F
    div-float v4, v0, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/books/preference/LocalPreferences;->sDefaultTextZoom:Ljava/lang/Float;

    .line 152
    const-string v4, "LocalPreferences"

    const/4 v5, 0x4

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 153
    const-string v4, "LocalPreferences"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated default zoom: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/books/preference/LocalPreferences;->sDefaultTextZoom:Ljava/lang/Float;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " density: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0           #calculatedZoom:F
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #mgr:Landroid/view/WindowManager;
    .end local v3           #zoomInc:F
    :cond_73
    return-void
.end method

.method public static getDefaultTextZoom()F
    .registers 2

    .prologue
    .line 311
    sget-object v0, Lcom/google/android/apps/books/preference/LocalPreferences;->sDefaultTextZoom:Ljava/lang/Float;

    if-nez v0, :cond_17

    .line 312
    const-string v0, "LocalPreferences"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 313
    const-string v0, "LocalPreferences"

    const-string v1, "sDefaultTextZoom should not be null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_14
    const/high16 v0, 0x3f80

    .line 317
    :goto_16
    return v0

    :cond_17
    sget-object v0, Lcom/google/android/apps/books/preference/LocalPreferences;->sDefaultTextZoom:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_16
.end method

.method public static isAccountKey(Ljava/lang/String;)Z
    .registers 2
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    const-string v0, "account"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public applyMissingDefaults()V
    .registers 4

    .prologue
    .line 194
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "brightness"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 197
    const-string v1, "brightness"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    :cond_16
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "themes"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 200
    const-string v1, "themes"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    :cond_27
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "typeface2"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 203
    const-string v1, "typeface2"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "textZoom"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 206
    const-string v1, "textZoom"

    invoke-static {}, Lcom/google/android/apps/books/preference/LocalPreferences;->getDefaultTextZoom()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 208
    :cond_4b
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lineHeight2"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 209
    const-string v1, "lineHeight2"

    const v2, 0x3fc66666

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 211
    :cond_5d
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "justification2"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    .line 212
    const-string v1, "justification2"

    const-string v2, "default"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 214
    :cond_6e
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "viewMode"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 215
    const-string v1, "viewMode"

    const-string v2, "carousel"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    :cond_7f
    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 219
    return-void
.end method

.method public getAccount()Landroid/accounts/Account;
    .registers 4

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_e

    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 162
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v1, "account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBrightness()I
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "brightness"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrontend()Ljava/lang/String;
    .registers 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "db_frontend"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasShownUnsupportedCountryWarning()Z
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "shownUnsupportedCountry"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLineHeight()F
    .registers 5

    .prologue
    .line 244
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lineHeight2"

    const v3, 0x3fc66666

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 245
    .local v0, lineHeight:F
    return v0
.end method

.method public getTextAlign()Ljava/lang/String;
    .registers 5

    .prologue
    .line 252
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "justification2"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, prefValue:Ljava/lang/String;
    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    .end local v0           #prefValue:Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getTextZoom()F
    .registers 5

    .prologue
    .line 239
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "textZoom"

    invoke-static {}, Lcom/google/android/apps/books/preference/LocalPreferences;->getDefaultTextZoom()F

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 240
    .local v0, textZoom:F
    return v0
.end method

.method public getTypeface()Ljava/lang/String;
    .registers 5

    .prologue
    .line 234
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "typeface2"

    const-string v3, "default"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, prefValue:Ljava/lang/String;
    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    .end local v0           #prefValue:Ljava/lang/String;
    :cond_13
    return-object v0
.end method

.method public getViewMode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "viewMode"

    const-string v2, "carousel"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isThemeNight()Z
    .registers 5

    .prologue
    .line 227
    const-string v0, "1"

    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "themes"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_13

    .line 173
    const-string v1, "account"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    :goto_f
    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 178
    return-void

    .line 175
    :cond_13
    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_f
.end method

.method public setFrontend(Ljava/lang/String;)V
    .registers 4
    .parameter "frontend"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 186
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "db_frontend"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 188
    return-void
.end method

.method public setHasShownUnsupportedCountryWarning(Z)V
    .registers 4
    .parameter "value"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 301
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "shownUnsupportedCountry"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 303
    return-void
.end method

.method public setViewMode(Ljava/lang/String;)V
    .registers 6
    .parameter "viewMode"

    .prologue
    .line 272
    const-string v1, "carousel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 273
    :cond_10
    iget-object v1, p0, Lcom/google/android/apps/books/preference/LocalPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 274
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "viewMode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-static {v0}, Lcom/google/android/apps/books/util/SharedPreferencesEditorUtils;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 281
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1e
    :goto_1e
    return-void

    .line 277
    :cond_1f
    const-string v1, "LocalPreferences"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 278
    const-string v1, "LocalPreferences"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown viewMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
