.class public Lcom/google/android/apps/plus/util/BackgroundPatternUtils;
.super Ljava/lang/Object;
.source "BackgroundPatternUtils.java"


# static fields
.field private static sInstance:Lcom/google/android/apps/plus/util/BackgroundPatternUtils;

.field private static sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/util/BackgroundPatternUtils;
    .registers 7
    .parameter "context"

    .prologue
    .line 24
    sget-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    if-nez v3, :cond_5f

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 26
    .local v1, res:Landroid/content/res/Resources;
    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x0

    const v3, 0x7f020021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v3, v4, v5

    const/4 v5, 0x1

    const v3, 0x7f020022

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v3, v4, v5

    const/4 v5, 0x2

    const v3, 0x7f020023

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v3, v4, v5

    const/4 v5, 0x3

    const v3, 0x7f02002a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    aput-object v3, v4, v5

    sput-object v4, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    .line 31
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    array-length v2, v3

    .local v2, size:I
    :goto_41
    if-ge v0, v2, :cond_58

    .line 32
    sget-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v0

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 33
    sget-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    aget-object v3, v3, v0

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 36
    :cond_58
    new-instance v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;

    invoke-direct {v3}, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;-><init>()V

    sput-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sInstance:Lcom/google/android/apps/plus/util/BackgroundPatternUtils;

    .line 39
    .end local v0           #i:I
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #size:I
    :cond_5f
    sget-object v3, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sInstance:Lcom/google/android/apps/plus/util/BackgroundPatternUtils;

    return-object v3
.end method


# virtual methods
.method public getBackgroundPattern(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 4
    .parameter "activityId"

    .prologue
    .line 43
    sget-object v0, Lcom/google/android/apps/plus/util/BackgroundPatternUtils;->sTiledPlusStageDrawables:[Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method
