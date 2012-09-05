.class Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;
.super Ljava/lang/Object;
.source "TextSelectorForHtmlComposer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/TextSelectorForHtmlComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field protected mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public mCursorControllerParent:Landroid/webkit/HtmlComposerView;

.field private mPasteTextView:Landroid/widget/TextView;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field final synthetic this$0:Lcom/android/email/TextSelectorForHtmlComposer;


# direct methods
.method public constructor <init>(Lcom/android/email/TextSelectorForHtmlComposer;Landroid/content/Context;Landroid/webkit/HtmlComposerView;)V
    .registers 8
    .parameter
    .parameter "context"
    .parameter "tv"

    .prologue
    const/4 v3, -0x2

    .line 153
    iput-object p1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    .line 155
    iput-object p3, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    .line 156
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->createPopupWindow()V

    .line 158
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 160
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 161
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 163
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->initContentView()V

    .line 165
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 168
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 171
    return-void
.end method


# virtual methods
.method protected createPopupWindow()V
    .registers 5

    .prologue
    .line 174
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 176
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 177
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 280
    return-void
.end method

.method protected initContentView()V
    .registers 11

    .prologue
    const v9, 0x10900cd

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 180
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 182
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 183
    iput-object v3, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 184
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x10806dc

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 187
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 190
    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 194
    .local v4, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    .line 196
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v6, 0x104000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108065d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, drawable1:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-virtual {v2, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    .line 220
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 222
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v6, 0x10405c4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 224
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1080650

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    .local v1, drawable3:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 232
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .registers 6

    .prologue
    const/high16 v4, -0x8000

    .line 313
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 315
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 320
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_24

    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v0}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 263
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->hide()V

    .line 271
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/TextSelectorForHtmlComposer;->mIsSCHMenu:Z
    invoke-static {v0, v1}, Lcom/android/email/TextSelectorForHtmlComposer;->access$102(Lcom/android/email/TextSelectorForHtmlComposer;Z)Z

    .line 272
    return-void

    .line 266
    :cond_24
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1d

    .line 267
    iget-object v0, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    iget-object v1, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    const v1, 0x102040a

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    .line 269
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->hide()V

    goto :goto_1d
.end method

.method positionAtCursor()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 284
    .local v0, ComposerRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 286
    .local v1, CursorRect:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v12}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v1

    .line 287
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v0}, Landroid/webkit/HtmlComposerView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 289
    const/4 v9, 0x2

    new-array v8, v9, [I

    .line 290
    .local v8, tmpLocOnWin:[I
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkit/HtmlComposerView;->getLocationInWindow([I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->measureContent()V

    .line 293
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, contentView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 295
    .local v4, popupwidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 297
    .local v3, popupheight:I
    aget v9, v8, v11

    iget v10, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    div-int/lit8 v10, v4, 0x2

    sub-int v5, v9, v10

    .line 298
    .local v5, pos_x:I
    aget v9, v8, v12

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    sub-int v6, v9, v3

    .line 300
    .local v6, pos_y:I
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v7, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 302
    .local v7, screenWidth:I
    if-gez v5, :cond_57

    .line 303
    const/4 v5, 0x0

    .line 308
    :cond_4f
    :goto_4f
    iget-object v9, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v10, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v9, v10, v11, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 310
    return-void

    .line 304
    :cond_57
    add-int v9, v5, v4

    if-ge v7, v9, :cond_4f

    .line 305
    sub-int v5, v7, v4

    goto :goto_4f
.end method

.method public show()V
    .registers 7

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 235
    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->this$0:Lcom/android/email/TextSelectorForHtmlComposer;

    #getter for: Lcom/android/email/TextSelectorForHtmlComposer;->mComposerControl:Landroid/webkit/HtmlComposerView;
    invoke-static {v2}, Lcom/android/email/TextSelectorForHtmlComposer;->access$000(Lcom/android/email/TextSelectorForHtmlComposer;)Landroid/webkit/HtmlComposerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v0

    .line 238
    .local v0, canPaste:Z
    iget-object v5, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_31

    move v2, v3

    :goto_12
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mCursorControllerParent:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "clipboardEx"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 246
    .local v1, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    iget-object v2, p0, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v5

    if-eqz v5, :cond_33

    :goto_2b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    if-nez v0, :cond_35

    .line 259
    :goto_30
    return-void

    .end local v1           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_31
    move v2, v4

    .line 238
    goto :goto_12

    .restart local v1       #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_33
    move v3, v4

    .line 246
    goto :goto_2b

    .line 258
    :cond_35
    invoke-virtual {p0}, Lcom/android/email/TextSelectorForHtmlComposer$ActionPopupWindow;->positionAtCursor()V

    goto :goto_30
.end method
