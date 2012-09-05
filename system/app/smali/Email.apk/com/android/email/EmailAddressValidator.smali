.class public Lcom/android/email/EmailAddressValidator;
.super Ljava/lang/Object;
.source "EmailAddressValidator.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "invalidText"

    .prologue
    .line 25
    const-string v0, ""

    return-object v0
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
