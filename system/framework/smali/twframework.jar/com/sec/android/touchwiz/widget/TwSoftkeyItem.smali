.class public Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
.super Landroid/widget/FrameLayout;
.source "TwSoftkeyItem.java"


# static fields
.field public static final IMAGE:I = 0x1

.field public static final SPACE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TwSoftkeyItem"

.field public static final TEXT:I = 0x0

.field public static final TEXT_AND_IMAGE:I = 0x2

.field private static mSoftkeyItemType:I


# instance fields
.field private final debug:Z

.field private mImage:Landroid/widget/ImageView;

.field private mItemIcon:Landroid/graphics/drawable/Drawable;

.field private mItemText:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->debug:Z

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->debug:Z

    .line 86
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 107
    sget-object v1, Ltouchwiz/R$styleable;->TwSoftkeyItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 111
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    .line 112
    const-string v1, "TwSoftkeyItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TwSoftkeyItem::mItemText is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const v1, 0x2010003

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setFocusable(Z)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 137
    const v0, 0x2020012

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setBackgroundResource(I)V

    .line 139
    sget v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    packed-switch v0, :pswitch_data_5c

    .line 164
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    .line 165
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->addView(Landroid/view/View;)V

    .line 171
    :goto_34
    :pswitch_34
    return-void

    .line 141
    :pswitch_35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    .line 142
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mItemIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->addView(Landroid/view/View;)V

    goto :goto_34

    .line 148
    :pswitch_53
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setVisibility(I)V

    .line 150
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setHapticFeedbackEnabled(Z)V

    goto :goto_34

    .line 139
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_53
    .end packed-switch
.end method

.method public static makeImage(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 3
    .parameter "context"
    .parameter "itemIconId"

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    return-object v0
.end method

.method public static makeImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 4
    .parameter "context"
    .parameter "icon"

    .prologue
    .line 204
    const/4 v1, 0x1

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 205
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, imageItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-object v0
.end method

.method public static makeSpace(Landroid/content/Context;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 3
    .parameter "context"

    .prologue
    .line 227
    const/4 v1, 0x3

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 228
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, spaceItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    return-object v0
.end method

.method public static makeText(Landroid/content/Context;I)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 3
    .parameter "context"
    .parameter "itemTextId"

    .prologue
    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .registers 4
    .parameter "context"
    .parameter "text"

    .prologue
    .line 180
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mSoftkeyItemType:I

    .line 181
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-direct {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, textItem:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-direct {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setSoftkeyItemText(Ljava/lang/CharSequence;)V

    .line 184
    return-object v0
.end method

.method private setSoftkeyItemImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void
.end method

.method private setSoftkeyItemText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    return-void
.end method
