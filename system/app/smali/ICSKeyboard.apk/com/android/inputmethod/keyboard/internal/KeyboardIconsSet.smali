.class public Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;
.super Ljava/lang/Object;
.source "KeyboardIconsSet.java"


# static fields
.field private static final ICON_DELETE_KEY:I = 0x2

.field private static final ICON_LAST:I = 0xd

.field private static final ICON_PREVIEW_SETTINGS_KEY:I = 0xc

.field private static final ICON_PREVIEW_SHORTCUT_KEY:I = 0xd

.field private static final ICON_PREVIEW_TAB_KEY:I = 0xb

.field private static final ICON_RETURN_KEY:I = 0x5

.field private static final ICON_SEARCH_KEY:I = 0x6

.field private static final ICON_SETTINGS_KEY:I = 0x3

.field private static final ICON_SHIFTED_SHIFT_KEY:I = 0xa

.field private static final ICON_SHIFT_KEY:I = 0x1

.field private static final ICON_SHORTCUT_FOR_LABEL:I = 0x9

.field private static final ICON_SHORTCUT_KEY:I = 0x8

.field private static final ICON_SPACE_KEY:I = 0x4

.field private static final ICON_TAB_KEY:I = 0x7

.field public static final ICON_UNDEFINED:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIcons:[Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    .line 26
    return-void
.end method

.method private static final getIconId(I)I
    .registers 2
    .parameter "attrIndex"

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_26

    .line 81
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 55
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 57
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 59
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 61
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 63
    :pswitch_d
    const/4 v0, 0x5

    goto :goto_4

    .line 65
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_4

    .line 67
    :pswitch_11
    const/4 v0, 0x7

    goto :goto_4

    .line 69
    :pswitch_13
    const/16 v0, 0x8

    goto :goto_4

    .line 71
    :pswitch_16
    const/16 v0, 0x9

    goto :goto_4

    .line 73
    :pswitch_19
    const/16 v0, 0xa

    goto :goto_4

    .line 75
    :pswitch_1c
    const/16 v0, 0xb

    goto :goto_4

    .line 77
    :pswitch_1f
    const/16 v0, 0xc

    goto :goto_4

    .line 79
    :pswitch_22
    const/16 v0, 0xd

    goto :goto_4

    .line 53
    nop

    :pswitch_data_26
    .packed-switch 0xe
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method private static setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .parameter "icon"

    .prologue
    const/4 v2, 0x0

    .line 109
    if-eqz p0, :cond_e

    .line 110
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 112
    :cond_e
    return-object p0
.end method


# virtual methods
.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "iconId"

    .prologue
    .line 101
    if-nez p1, :cond_4

    .line 102
    const/4 v0, 0x0

    .line 105
    :goto_3
    return-object v0

    .line 103
    :cond_4
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-lt p1, v0, :cond_20

    .line 104
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "icon id is out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_20
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    goto :goto_3
.end method

.method public loadIcons(Landroid/content/res/TypedArray;)V
    .registers 10
    .parameter "keyboardAttrs"

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .line 87
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    if-lt v3, v1, :cond_8

    .line 98
    return-void

    .line 88
    :cond_8
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 89
    .local v0, attrIndex:I
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->getIconId(I)I

    move-result v4

    .line 90
    .local v4, iconId:I
    if-eqz v4, :cond_1e

    .line 92
    :try_start_12
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->mIcons:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v5, v4
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_1e} :catch_21

    .line 87
    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 93
    :catch_21
    move-exception v2

    .line 94
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    sget-object v5, Lcom/android/inputmethod/keyboard/internal/KeyboardIconsSet;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Drawable resource for icon #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
