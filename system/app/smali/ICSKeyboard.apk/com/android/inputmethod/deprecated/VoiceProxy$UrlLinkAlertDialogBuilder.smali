.class Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UrlLinkAlertDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private replaceURLSpan(Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 12
    .parameter "message"

    .prologue
    const/4 v6, 0x0

    .line 255
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    .local v4, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const-class v7, Landroid/text/style/URLSpan;

    invoke-virtual {v4, v6, v5, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/URLSpan;

    array-length v7, v5

    :goto_13
    if-lt v6, v7, :cond_16

    .line 263
    return-object v4

    .line 256
    :cond_16
    aget-object v0, v5, v6

    .line 257
    .local v0, span:Landroid/text/style/URLSpan;
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 258
    .local v3, spanStart:I
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 259
    .local v1, spanEnd:I
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 260
    .local v2, spanFlags:I
    invoke-virtual {v4, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 261
    new-instance v8, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$ClickableSpan;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;Ljava/lang/String;)V

    invoke-virtual {v4, v8, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 256
    add-int/lit8 v6, v6, 0x1

    goto :goto_13
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .registers 3

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 270
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder$1;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 280
    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->mAlertDialog:Landroid/app/AlertDialog;

    .line 281
    return-object v0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .registers 3
    .parameter "message"

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;->replaceURLSpan(Ljava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method
