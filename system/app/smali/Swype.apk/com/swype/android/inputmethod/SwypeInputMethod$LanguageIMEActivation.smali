.class Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;
.super Ljava/lang/Object;
.source "SwypeInputMethod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/inputmethod/SwypeInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageIMEActivation"
.end annotation


# instance fields
.field private currentIMEType:I

.field private isReset:Z

.field final synthetic this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;


# direct methods
.method private constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 2
    .parameter

    .prologue
    .line 5086
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Lcom/swype/android/inputmethod/SwypeInputMethod$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5086
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 5112
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->isReset:Z

    if-eqz v0, :cond_15

    .line 5113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->isReset:Z

    .line 5114
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #getter for: Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$900(Lcom/swype/android/inputmethod/SwypeInputMethod;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5115
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->this$0:Lcom/swype/android/inputmethod/SwypeInputMethod;

    #calls: Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMEConversionArea()V
    invoke-static {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->access$1000(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 5117
    :cond_15
    return-void
.end method

.method setLanguageType(B)V
    .registers 3
    .parameter

    .prologue
    .line 5100
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->currentIMEType:I

    if-eq p1, v0, :cond_a

    .line 5101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->isReset:Z

    .line 5102
    iput p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->currentIMEType:I

    .line 5107
    :goto_9
    return-void

    .line 5105
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->isReset:Z

    goto :goto_9
.end method
