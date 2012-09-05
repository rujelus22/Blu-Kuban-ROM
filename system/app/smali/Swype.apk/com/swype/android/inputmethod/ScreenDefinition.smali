.class public Lcom/swype/android/inputmethod/ScreenDefinition;
.super Ljava/lang/Object;
.source "ScreenDefinition.java"


# instance fields
.field private displayNumber:I

.field private orientation:I

.field private screenHeight:I

.field private screenWidth:I

.field private type:Lcom/swype/android/inputmethod/ScreenType;


# direct methods
.method private constructor <init>(ILcom/swype/android/inputmethod/ScreenType;III)V
    .registers 7
    .parameter "orientation"
    .parameter "type"
    .parameter "width"
    .parameter "height"
    .parameter "activeDisplay"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lcom/swype/android/inputmethod/ScreenDefinition;->mapOrientationToCoreValue(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->orientation:I

    .line 40
    iput-object p2, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->type:Lcom/swype/android/inputmethod/ScreenType;

    .line 41
    iput p3, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenWidth:I

    .line 42
    iput p4, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenHeight:I

    .line 43
    iput p5, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->displayNumber:I

    .line 44
    return-void
.end method

.method public static getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 93
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 94
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 96
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 98
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Lcom/swype/android/inputmethod/ScreenType;->fromDimension(II)Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v2

    .line 100
    new-instance v0, Lcom/swype/android/inputmethod/ScreenDefinition;

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/swype/android/inputmethod/ScreenDefinition;-><init>(ILcom/swype/android/inputmethod/ScreenType;III)V

    return-object v0
.end method

.method public static mapOrientationToCoreValue(I)I
    .registers 2
    .parameter "orientation"

    .prologue
    .line 80
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    .line 81
    const/4 v0, 0x0

    .line 84
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getDisplayNumber()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->displayNumber:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->orientation:I

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenWidth:I

    return v0
.end method

.method public getType()Lcom/swype/android/inputmethod/ScreenType;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->type:Lcom/swype/android/inputmethod/ScreenType;

    return-object v0
.end method

.method public setDisplayNumber(I)V
    .registers 2
    .parameter "n"

    .prologue
    .line 67
    iput p1, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->displayNumber:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->type:Lcom/swype/android/inputmethod/ScreenType;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->screenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/swype/android/inputmethod/ScreenDefinition;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_43

    const-string v1, "ls"

    :goto_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    const-string v1, "pt"

    goto :goto_34
.end method
