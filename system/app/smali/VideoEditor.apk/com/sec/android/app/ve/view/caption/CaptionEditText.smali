.class public Lcom/sec/android/app/ve/view/caption/CaptionEditText;
.super Landroid/widget/EditText;
.source "CaptionEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;
    }
.end annotation


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/caption/CaptionEditText;


# instance fields
.field private currString:Ljava/lang/String;

.field private mTextPaintOutline:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;

    .line 23
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;

    .line 29
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->init()V

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Landroid/graphics/Paint;
    .registers 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/caption/CaptionEditText;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;

    return-void
.end method

.method public static get_instance()Lcom/sec/android/app/ve/view/caption/CaptionEditText;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    return-object v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionEditText;Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 4
    .parameter "text"
    .parameter "type"

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;

    .line 57
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 58
    return-void
.end method

.method public setTextColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 50
    return-void
.end method
