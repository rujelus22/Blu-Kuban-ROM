.class public Lcom/infraware/office/util/EvUtil;
.super Ljava/lang/Object;
.source "EvUtil.java"


# static fields
.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/infraware/office/util/EvUtil;->mRect:Landroid/graphics/Rect;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCenterXOfRect(Landroid/graphics/Rect;)I
    .registers 3
    .parameter "rect"

    .prologue
    .line 24
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getCenterXOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static getCenterYOfRect(Landroid/graphics/Rect;)I
    .registers 3
    .parameter "rect"

    .prologue
    .line 28
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static getCenterYOfView(Landroid/view/View;)I
    .registers 3
    .parameter "view"

    .prologue
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    sget-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_e

    .line 33
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    sput-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 34
    :cond_e
    sget-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static final getItemRectByCenter(Landroid/view/View;II)Landroid/graphics/Rect;
    .registers 10
    .parameter "v"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 71
    .local v1, halfWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 72
    .local v0, halfHeight:I
    sget-object v2, Lcom/infraware/office/util/EvUtil;->mRect:Landroid/graphics/Rect;

    sub-int v3, p1, v1

    sub-int v4, p2, v0

    add-int v5, p1, v1

    add-int v6, p2, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    sget-object v2, Lcom/infraware/office/util/EvUtil;->mRect:Landroid/graphics/Rect;

    return-object v2
.end method

.method public static hideIme(Landroid/content/Context;Landroid/os/IBinder;)V
    .registers 4
    .parameter "context"
    .parameter "windowToken"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, _imm:Landroid/view/inputmethod/InputMethodManager;
    sget-object v1, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_14

    .line 59
    sget-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    :goto_7
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 67
    :cond_13
    return-void

    .line 61
    :cond_14
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #_imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 62
    .restart local v0       #_imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/office/util/EvUtil;->setInputMethodManager(Landroid/view/inputmethod/InputMethodManager;)V

    goto :goto_7
.end method

.method public static setInputMethodManager(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 4
    .parameter "imm"

    .prologue
    .line 38
    const-string v0, "EvUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setInputMethodManager imm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sput-object p0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    return-void
.end method

.method public static showIme(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, _imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    .local v1, context:Landroid/content/Context;
    sget-object v2, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_12

    .line 46
    sget-object v0, Lcom/infraware/office/util/EvUtil;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 52
    :goto_b
    if-eqz v0, :cond_11

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 54
    :cond_11
    return-void

    .line 48
    :cond_12
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #_imm:Landroid/view/inputmethod/InputMethodManager;
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 49
    .restart local v0       #_imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/infraware/office/util/EvUtil;->setInputMethodManager(Landroid/view/inputmethod/InputMethodManager;)V

    goto :goto_b
.end method

.method public static stringToHexa(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "text"

    .prologue
    .line 78
    const/16 v3, 0x20

    .line 79
    .local v3, s:C
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 80
    .local v0, buff:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_19

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 81
    :cond_19
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 82
    .local v1, c:I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_e
.end method
