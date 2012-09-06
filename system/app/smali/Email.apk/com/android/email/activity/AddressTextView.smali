.class Lcom/android/email/activity/AddressTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AddressTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/AddressTextView$1;,
        Lcom/android/email/activity/AddressTextView$ForwardValidator;
    }
.end annotation


# instance fields
.field private final mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

.field private mIsValid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    .line 48
    new-instance v0, Lcom/android/email/activity/AddressTextView$ForwardValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/AddressTextView;Lcom/android/email/activity/AddressTextView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    .line 52
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-super {p0, v0}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/android/email/activity/AddressTextView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    return p1
.end method

.method private markError(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 68
    if-eqz p1, :cond_11

    .line 69
    invoke-virtual {p0}, Lcom/android/email/activity/AddressTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    .line 73
    :goto_10
    return-void

    .line 71
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/AddressTextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method


# virtual methods
.method public performValidation()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    .line 63
    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->performValidation()V

    .line 64
    iget-boolean v1, p0, Lcom/android/email/activity/AddressTextView;->mIsValid:Z

    if-nez v1, :cond_e

    :goto_a
    invoke-direct {p0, v0}, Lcom/android/email/activity/AddressTextView;->markError(Z)V

    .line 65
    return-void

    .line 64
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 3
    .parameter "validator"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/email/activity/AddressTextView;->mInternalValidator:Lcom/android/email/activity/AddressTextView$ForwardValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/AddressTextView$ForwardValidator;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 58
    return-void
.end method
