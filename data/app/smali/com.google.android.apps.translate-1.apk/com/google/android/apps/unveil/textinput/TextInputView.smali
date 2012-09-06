.class public Lcom/google/android/apps/unveil/textinput/TextInputView;
.super Landroid/widget/FrameLayout;
.source "TextInputView.java"

# interfaces
.implements Lcom/google/android/apps/unveil/textinput/TextInput$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private customHeight:Ljava/lang/String;

.field private instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

.field private keyboardButton:Landroid/view/View;

.field private listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

.field private progressBar:Landroid/view/View;

.field private retryButton:Landroid/view/View;

.field private snapButton:Landroid/view/View;

.field private sourceLanguage:Ljava/lang/String;

.field private textInput:Lcom/google/android/apps/unveil/textinput/TextInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->createView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->addView(Landroid/view/View;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/textinput/TextInputView;)Lcom/google/android/apps/unveil/textinput/TextInput;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/unveil/textinput/TextInputView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->sourceLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/textinput/TextInputView;)Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    return-object v0
.end method

.method private makeSizeSpec(Ljava/lang/String;I)I
    .registers 11
    .parameter "param"
    .parameter "suggestedSpec"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, -0x8000

    const/4 v5, 0x0

    .line 203
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 204
    .local v0, mode:I
    if-ne v0, v7, :cond_c

    .line 226
    .end local p2
    :cond_b
    :goto_b
    return p2

    .line 207
    .restart local p2
    :cond_c
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 208
    .local v2, size:I
    move v1, v2

    .line 209
    .local v1, pixels:I
    const-string v3, "px"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    :cond_2b
    :goto_2b
    if-eqz v0, :cond_31

    if-ne v0, v6, :cond_b

    if-le v2, v1, :cond_b

    .line 224
    :cond_31
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_b

    .line 211
    :cond_36
    const-string v3, "dp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/env/PixelUtils;->dipToPix(FLandroid/content/Context;)I

    move-result v1

    goto :goto_2b

    .line 214
    :cond_59
    const-string v3, "in"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/unveil/env/PixelUtils;->inchToPix(FLandroid/content/Context;)I

    move-result v1

    goto :goto_2b

    .line 217
    :cond_7c
    const-string v3, "%"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 218
    if-ne v0, v6, :cond_2b

    .line 219
    int-to-float v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    float-to-int v1, v3

    goto :goto_2b
.end method


# virtual methods
.method protected createView(Landroid/content/Context;)Landroid/view/View;
    .registers 4
    .parameter "context"

    .prologue
    .line 64
    sget v0, Lcom/google/android/apps/unveil/textinput/R$layout;->text_input_view:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public cycleDebugMode(Z)V
    .registers 3
    .parameter "cycleUp"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->cycleDebugMode(Z)V

    .line 192
    return-void
.end method

.method public finishInput()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->finishInput()V

    .line 149
    return-void
.end method

.method public getSupportedLanguages()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFrozen()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public noResults()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 303
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "no results"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->NO_TEXT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->sendAccessibilityEvent(I)V

    .line 307
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->progressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 310
    return-void
.end method

.method public onCameraError()V
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;->onCameraError()V

    .line 327
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/textinput/TextInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    .local v0, context:Landroid/content/Context;
    const-class v1, Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-static {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInput;->findViewByType(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/textinput/TextInput;

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/unveil/textinput/TextInput;->setListener(Lcom/google/android/apps/unveil/textinput/TextInput$Listener;)V

    .line 77
    sget v1, Lcom/google/android/apps/unveil/textinput/R$id;->instructions:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/textinput/InstructionsView;

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    .line 78
    sget v1, Lcom/google/android/apps/unveil/textinput/R$id;->progress_bar:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->progressBar:Landroid/view/View;

    .line 80
    sget v1, Lcom/google/android/apps/unveil/textinput/R$id;->snapshot:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInputView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/textinput/TextInputView$1;-><init>(Lcom/google/android/apps/unveil/textinput/TextInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v1, Lcom/google/android/apps/unveil/textinput/R$id;->retry:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInputView$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/textinput/TextInputView$2;-><init>(Lcom/google/android/apps/unveil/textinput/TextInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v1, Lcom/google/android/apps/unveil/textinput/R$id;->keyboard:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/unveil/textinput/TextInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->keyboardButton:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->keyboardButton:Landroid/view/View;

    new-instance v2, Lcom/google/android/apps/unveil/textinput/TextInputView$3;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/textinput/TextInputView$3;-><init>(Lcom/google/android/apps/unveil/textinput/TextInputView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-object v1, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "text input view is created."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 240
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/textinput/TextInput;->snap()V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 249
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_6

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->customHeight:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->customHeight:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/unveil/textinput/TextInputView;->makeSizeSpec(Ljava/lang/String;I)I

    move-result p2

    .line 233
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "param.height is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->customHeight:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_1d
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 236
    return-void
.end method

.method public onNetworkError(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 314
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "network error: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;->onNetworkError(I)V

    .line 316
    return-void
.end method

.method public onPictureTaken()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_FINGER_TO_HIGHLIGHT:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V

    .line 281
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->sendAccessibilityEvent(I)V

    .line 282
    return-void
.end method

.method public onPreviewFrozen()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 269
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on preview frozen"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->HOLD_STEADY:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->sendAccessibilityEvent(I)V

    .line 273
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 275
    return-void
.end method

.method public onRestart()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 257
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on restart"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->TAP_TO_READ:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->sendAccessibilityEvent(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->progressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public onResult(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "text"
    .parameter "alternatives"

    .prologue
    const/4 v3, 0x0

    .line 293
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on result \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;->onTextSelected(Ljava/lang/String;[Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->retryButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->snapButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->progressBar:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 299
    return-void
.end method

.method public onSearching(J)V
    .registers 8
    .parameter "queryId"

    .prologue
    const/4 v4, 0x0

    .line 286
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "on searching with query id %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->progressBar:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public onZoom()V
    .registers 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->instructions:Lcom/google/android/apps/unveil/textinput/InstructionsView;

    sget-object v1, Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;->USE_TWO_FINGERS_TO_PAN:Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/textinput/InstructionsView;->show(Lcom/google/android/apps/unveil/textinput/InstructionsView$Instruction;)V

    .line 322
    return-void
.end method

.method public setAutoFocus(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->setAutoFocus(Z)V

    .line 169
    return-void
.end method

.method public setClientType(Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;)V
    .registers 3
    .parameter "clientType"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->setClientType(Lcom/google/android/apps/unveil/textinput/TextInput$ClientType;)V

    .line 122
    return-void
.end method

.method public setImageLogging(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->setImageLogging(Z)V

    .line 178
    return-void
.end method

.method public setListener(Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 112
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "set listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->listener:Lcom/google/android/apps/unveil/textinput/TextInputView$Listener;

    .line 114
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3
    .parameter "userAgent"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/textinput/TextInput;->setUserAgent(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setViewHeight(Ljava/lang/String;)V
    .registers 2
    .parameter "height"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->customHeight:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public startInput(Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;)Z
    .registers 6
    .parameter "info"
    .parameter "language"

    .prologue
    .line 139
    sget-object v0, Lcom/google/android/apps/unveil/textinput/TextInputView;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "start input with editor info"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->sourceLanguage:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/TextInputView;->textInput:Lcom/google/android/apps/unveil/textinput/TextInput;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/textinput/TextInput;->startInput(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
