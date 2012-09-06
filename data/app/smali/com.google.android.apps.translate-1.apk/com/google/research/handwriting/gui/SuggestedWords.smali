.class public Lcom/google/research/handwriting/gui/SuggestedWords;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/SuggestedWords$1;,
        Lcom/google/research/handwriting/gui/SuggestedWords$TranslationExtraInfo;,
        Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;,
        Lcom/google/research/handwriting/gui/SuggestedWords$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;


# instance fields
.field private final mClickable:Z

.field private final mExtras:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/google/research/handwriting/gui/SuggestedWords;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/research/handwriting/gui/SuggestedWords;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    sput-object v0, Lcom/google/research/handwriting/gui/SuggestedWords;->EMPTY:Lcom/google/research/handwriting/gui/SuggestedWords;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/List;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter "clickable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, extra:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    if-eqz p1, :cond_e

    .line 30
    iput-object p1, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    .line 34
    :goto_7
    if-eqz p2, :cond_15

    .line 35
    iput-object p2, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mExtras:Ljava/util/List;

    .line 39
    :goto_b
    iput-boolean p3, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mClickable:Z

    .line 40
    return-void

    .line 32
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    goto :goto_7

    .line 37
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mExtras:Ljava/util/List;

    goto :goto_b
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ZLcom/google/research/handwriting/gui/SuggestedWords$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/google/research/handwriting/gui/SuggestedWords;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public clickable()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mClickable:Z

    return v0
.end method

.method public getExtra(I)Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;
    .registers 3
    .parameter "pos"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mExtras:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/gui/SuggestedWords$ExtraInfo;

    return-object v0
.end method

.method public getExtrasSize()I
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mExtras:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWord(I)Ljava/lang/CharSequence;
    .registers 4
    .parameter "pos"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_11

    .line 255
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 258
    :goto_10
    return-object v0

    .line 257
    :cond_11
    const-string v0, "SuggestedWords"

    const-string v1, "Accessing non-existing result"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v0, ""

    goto :goto_10
.end method

.method public getWords()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 264
    const-string v1, ""

    .line 265
    .local v1, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/research/handwriting/gui/SuggestedWords;->mWords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 266
    .local v2, w:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 268
    .end local v2           #w:Ljava/lang/CharSequence;
    :cond_2c
    return-object v1
.end method
