.class Lcom/android/inputmethod/latin/CustomDialogWrapper;
.super Ljava/lang/Object;
.source "CustomDitctionaryEditor.java"


# instance fields
.field base:Landroid/view/View;

.field localeField:Landroid/widget/EditText;

.field wordField:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 348
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 349
    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    .line 352
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    .line 353
    const v0, 0x7f070039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 354
    const v0, 0x7f07003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 355
    return-void
.end method

.method private getlocaleField()Landroid/widget/EditText;
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    if-nez v0, :cond_11

    .line 375
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    .line 378
    :cond_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    return-object v0
.end method

.method private getwordField()Landroid/widget/EditText;
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    if-nez v0, :cond_11

    .line 367
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->base:Landroid/view/View;

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    .line 370
    :cond_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method getLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getlocaleField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getWord()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getwordField()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
