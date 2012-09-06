.class public final Lcom/google/android/apps/reader/widget/ReaderLinks;
.super Ljava/lang/Object;
.source "ReaderLinks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;
    }
.end annotation


# static fields
.field private static final ADD:Ljava/lang/String; = "#add"

.field private static final POP:Ljava/lang/String; = "#pop"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 112
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 113
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, language:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    move-object v3, v1

    .line 117
    :goto_15
    return-object v3

    :cond_16
    const-string v3, "en"

    goto :goto_15
.end method

.method public static linkify(Landroid/widget/TextView;ILcom/google/android/accounts/Account;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v2, v9, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v3, v0

    move v4, v9

    :goto_1c
    if-ge v4, v3, :cond_6b

    aget-object v5, v0, v4

    .line 65
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v7, "#add"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 67
    invoke-static {p2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v6

    .line 68
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    invoke-direct {v7, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 69
    new-instance v6, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;

    invoke-direct {v6, v7}, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;-><init>(Landroid/content/Intent;)V

    invoke-static {v2, v5, v6}, Lcom/google/android/apps/reader/widget/ReaderLinks;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    :cond_3f
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 70
    :cond_42
    const-string v7, "#pop"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 71
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ReaderLinks;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 72
    const-string v7, "top"

    invoke-static {v7, v6}, Lcom/google/android/apps/reader/provider/ReaderStream;->createPopularStreamId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const/4 v7, 0x1

    const-string v8, "auto"

    invoke-static {p2, v6, v7, v8}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->streamUri(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 74
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v7, v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    new-instance v6, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;

    invoke-direct {v6, v7}, Lcom/google/android/apps/reader/widget/ReaderLinks$IntentSpan;-><init>(Landroid/content/Intent;)V

    invoke-static {v2, v5, v6}, Lcom/google/android/apps/reader/widget/ReaderLinks;->replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3f

    .line 80
    :cond_6b
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 86
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setSaveEnabled(Z)V

    .line 87
    return-void
.end method

.method private static replaceSpan(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "spannable"
    .parameter "target"
    .parameter "replacement"

    .prologue
    .line 97
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 98
    .local v2, start:I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, end:I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 100
    .local v1, flags:I
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 101
    invoke-interface {p0, p2, v2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 102
    return-void
.end method
