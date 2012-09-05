.class Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;
.super Ljava/lang/Object;
.source "CaptionEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/caption/CaptionEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/ve/view/caption/CaptionEditText;Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;-><init>(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 65
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, width:F
    const/4 v1, 0x0

    .line 72
    .local v1, mCurrString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getting messure text:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Landroid/graphics/Paint;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mywidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x276

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8e

    .line 75
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->access$1(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 76
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->access$1(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_54
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    #getter for: Lcom/sec/android/app/ve/view/caption/CaptionEditText;->mTextPaintOutline:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->access$0(Lcom/sec/android/app/ve/view/caption/CaptionEditText;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 86
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_9f

    const v3, 0x441d8000

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9f

    .line 87
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 88
    .local v0, FilterArray:[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 89
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 95
    :goto_82
    return-void

    .line 78
    .end local v0           #FilterArray:[Landroid/text/InputFilter;
    :cond_83
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_54

    .line 80
    :cond_8e
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/ve/view/caption/CaptionEditText;->currString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->access$2(Lcom/sec/android/app/ve/view/caption/CaptionEditText;Ljava/lang/String;)V

    goto :goto_54

    .line 91
    :cond_9f
    new-array v0, v7, [Landroid/text/InputFilter;

    .line 92
    .restart local v0       #FilterArray:[Landroid/text/InputFilter;
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v6

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/ve/view/caption/CaptionEditText$MyTextWatcher;->this$0:Lcom/sec/android/app/ve/view/caption/CaptionEditText;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/ve/view/caption/CaptionEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_82
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 101
    return-void
.end method
