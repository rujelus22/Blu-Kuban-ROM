.class public Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "AxT9Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9Keyboard$AxT9Key;
    }
.end annotation


# instance fields
.field public mDefaultVerticalGap:I

.field public mIsLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 31
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "modeId"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 31
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 7
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 31
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    .line 43
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[I[Ljava/lang/String;II)V
    .registers 18
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "codes"
    .parameter "labels"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 60
    .local v8, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .local v9, n:I
    :goto_20
    if-ge v6, v9, :cond_39

    .line 61
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 62
    .local v7, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aget v2, p4, v6

    aput v2, v0, v1

    iput-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 63
    aget-object v0, p5, v6

    iput-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 65
    .end local v7           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;II)V
    .registers 18
    .parameter "context"
    .parameter "layoutTemplateResId"
    .parameter "characters"
    .parameter "texts"
    .parameter "labels"
    .parameter "columns"
    .parameter "horizontalPadding"

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getVerticalGap()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mDefaultVerticalGap:I

    .line 87
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v8

    .line 89
    .local v8, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v6, 0x0

    .local v6, i:I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .local v9, n:I
    :goto_20
    if-ge v6, v9, :cond_45

    .line 90
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 91
    .local v7, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0x6f

    aput v2, v0, v1

    .line 92
    aget-object v0, p4, v6

    if-nez v0, :cond_3a

    .line 93
    iget-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    const/16 v2, -0xff

    aput v2, v0, v1

    .line 95
    :cond_3a
    aget-object v0, p4, v6

    iput-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 96
    aget-object v0, p5, v6

    iput-object v0, v7, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 89
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 98
    .end local v7           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_45
    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 12
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 104
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard$AxT9Key;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard$AxT9Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method setShiftLocked(Z)V
    .registers 5
    .parameter "shiftLocked"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getShiftKeyIndex()I

    move-result v1

    .line 124
    .local v1, shiftKeyIndex:I
    if-gez v1, :cond_7

    .line 131
    :cond_6
    :goto_6
    return-void

    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 126
    .local v0, shiftKey:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_6

    .line 127
    if-eqz p1, :cond_6

    .line 128
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShifted(Z)Z

    goto :goto_6
.end method
