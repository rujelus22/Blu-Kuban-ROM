.class Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;
.super Ljava/lang/Object;
.source "ChipsAddressTextView.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ChipsAddressTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardValidator"
.end annotation


# instance fields
.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;

.field final synthetic this$0:Lcom/android/email/activity/ChipsAddressTextView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/ChipsAddressTextView;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->this$0:Lcom/android/email/activity/ChipsAddressTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/ChipsAddressTextView;Lcom/android/email/activity/ChipsAddressTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;-><init>(Lcom/android/email/activity/ChipsAddressTextView;)V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "invalidText"

    .prologue
    .line 33
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v0, p1}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .registers 2
    .parameter "validator"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/email/activity/ChipsAddressTextView$ForwardValidator;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 42
    return-void
.end method
