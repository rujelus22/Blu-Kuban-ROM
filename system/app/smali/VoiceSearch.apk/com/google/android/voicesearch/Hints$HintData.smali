.class public Lcom/google/android/voicesearch/Hints$HintData;
.super Ljava/lang/Object;
.source "Hints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/Hints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HintData"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/voicesearch/Hints$HintData;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "title"
    .parameter "text"
    .parameter "icon"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/google/android/voicesearch/Hints$HintData;->mTitle:Ljava/lang/CharSequence;

    .line 271
    iput-object p2, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    .line 272
    iput-object p3, p0, Lcom/google/android/voicesearch/Hints$HintData;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 273
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/Hints$HintData;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
