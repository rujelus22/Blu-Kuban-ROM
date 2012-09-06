.class public Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
.super Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;
.source "MoreSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/MoreSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder",
        "<",
        "Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;",
        ">;"
    }
.end annotation


# instance fields
.field private mFromPos:I

.field private final mPaneView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

.field private mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

.field private mToPos:I


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/MoreSuggestionsView;)V
    .registers 4
    .parameter "paneView"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/MoreSuggestionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;

    invoke-direct {v1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;-><init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/internal/KeyboardParams;)V

    .line 175
    iput-object p1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mPaneView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    .line 176
    return-void
.end method

.method private static getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/String;
    .registers 6
    .parameter "suggestions"
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-static {}, Lcom/android/inputmethod/latin/MoreSuggestions;->access$0()Z

    move-result v3

    if-nez v3, :cond_9

    move-object v0, v2

    .line 199
    :cond_8
    :goto_8
    return-object v0

    .line 195
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/SuggestedWords;->getInfo(I)Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;

    move-result-object v1

    .line 196
    .local v1, wordInfo:Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
    if-nez v1, :cond_11

    move-object v0, v2

    goto :goto_8

    .line 197
    :cond_11
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->getDebugString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, info:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v2

    goto :goto_8
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/inputmethod/keyboard/Keyboard;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->build()Lcom/android/inputmethod/latin/MoreSuggestions;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/inputmethod/latin/MoreSuggestions;
    .registers 22

    .prologue
    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;

    .line 205
    .local v2, params:Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mFromPos:I

    move/from16 v20, v0

    .local v20, pos:I
    :goto_c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mToPos:I

    move/from16 v0, v20

    if-lt v0, v5, :cond_1b

    .line 225
    new-instance v5, Lcom/android/inputmethod/latin/MoreSuggestions;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v7}, Lcom/android/inputmethod/latin/MoreSuggestions;-><init>(Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;Lcom/android/inputmethod/latin/MoreSuggestions;)V

    return-object v5

    .line 206
    :cond_1b
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getX(I)I

    move-result v8

    .line 207
    .local v8, x:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getY(I)I

    move-result v9

    .line 208
    .local v9, y:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getWidth(I)I

    move-result v10

    .line 209
    .local v10, width:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, word:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    move/from16 v0, v20

    invoke-static {v5, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->getDebugInfo(Lcom/android/inputmethod/latin/SuggestedWords;I)Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, info:Ljava/lang/String;
    move/from16 v0, v20

    add-int/lit16 v6, v0, 0x400

    .line 212
    .local v6, index:I
    new-instance v1, Lcom/android/inputmethod/keyboard/Key;

    .line 213
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 214
    iget v11, v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    .line 212
    invoke-direct/range {v1 .. v11}, Lcom/android/inputmethod/keyboard/Key;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILjava/lang/CharSequence;IIII)V

    .line 215
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    move/from16 v0, v20

    invoke-virtual {v2, v1, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->markAsEdgeKey(Lcom/android/inputmethod/keyboard/Key;I)V

    .line 216
    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 217
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getColumnNumber(I)I

    move-result v18

    .line 218
    .local v18, columnNumber:I
    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->getNumColumnInRow(I)I

    move-result v19

    .line 219
    .local v19, numColumnInRow:I
    add-int/lit8 v5, v19, -0x1

    move/from16 v0, v18

    if-ge v0, v5, :cond_82

    .line 220
    new-instance v11, Lcom/android/inputmethod/keyboard/Key$Spacer;

    iget-object v13, v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int v14, v8, v10

    .line 221
    iget v0, v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDividerWidth:I

    move/from16 v16, v0

    iget v0, v2, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mDefaultRowHeight:I

    move/from16 v17, v0

    move-object v12, v2

    move v15, v9

    .line 220
    invoke-direct/range {v11 .. v17}, Lcom/android/inputmethod/keyboard/Key$Spacer;-><init>(Lcom/android/inputmethod/keyboard/internal/KeyboardParams;Landroid/graphics/drawable/Drawable;IIII)V

    .line 222
    .local v11, spacer:Lcom/android/inputmethod/keyboard/Key$Spacer;
    invoke-virtual {v2, v11}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->onAddKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 205
    .end local v11           #spacer:Lcom/android/inputmethod/keyboard/Key$Spacer;
    :cond_82
    add-int/lit8 v20, v20, 0x1

    goto :goto_c
.end method

.method public layout(Lcom/android/inputmethod/latin/SuggestedWords;IIII)Lcom/android/inputmethod/latin/MoreSuggestions$Builder;
    .registers 16
    .parameter "suggestions"
    .parameter "fromPos"
    .parameter "maxWidth"
    .parameter "minWidth"
    .parameter "maxRow"

    .prologue
    const v2, 0x7f050027

    .line 180
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v8

    .line 181
    .local v8, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    const v9, 0x7f050027

    .line 182
    .local v9, xmlId:I
    iget-object v0, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardId;->cloneWithNewXml(Ljava/lang/String;I)Lcom/android/inputmethod/keyboard/KeyboardId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->load(Lcom/android/inputmethod/keyboard/KeyboardId;)Lcom/android/inputmethod/keyboard/internal/KeyboardBuilder;

    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;

    iget-object v1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v1, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;

    iget v2, v8, Lcom/android/inputmethod/keyboard/Keyboard;->mVerticalGap:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mTopPadding:I

    iput v2, v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->mVerticalGap:I

    .line 185
    iget-object v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mParams:Lcom/android/inputmethod/keyboard/internal/KeyboardParams;

    check-cast v0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;

    .line 186
    iget-object v6, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mPaneView:Lcom/android/inputmethod/latin/MoreSuggestionsView;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/android/inputmethod/latin/MoreSuggestions$Builder$MoreSuggestionsParam;->layout(Lcom/android/inputmethod/latin/SuggestedWords;IIIILcom/android/inputmethod/keyboard/KeyboardView;)I

    move-result v7

    .line 187
    .local v7, count:I
    iput p2, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mFromPos:I

    .line 188
    add-int v0, p2, v7

    iput v0, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mToPos:I

    .line 189
    iput-object p1, p0, Lcom/android/inputmethod/latin/MoreSuggestions$Builder;->mSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 190
    return-object p0
.end method
