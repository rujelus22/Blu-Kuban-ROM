.class Lcom/android/email/activity/ChipsAddressTextView;
.super Lcom/android/ex/chips/RecipientEditTextView;
.source "ChipsAddressTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ChipsAddressTextView$1;,
        Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;
    }
.end annotation


# instance fields
.field private final mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/ChipsAddressTextView;Lcom/android/email/activity/ChipsAddressTextView$1;)V

    iput-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    .line 49
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    invoke-super {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 50
    return-void
.end method


# virtual methods
.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 3
    .parameter "validator"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView;->mInternalValidator:Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 55
    return-void
.end method
