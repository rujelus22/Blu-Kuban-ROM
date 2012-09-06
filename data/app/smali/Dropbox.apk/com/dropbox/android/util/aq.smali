.class public final Lcom/dropbox/android/util/aq;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Locale;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_17

    .line 15
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_16
    return-object v0

    .line 16
    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2e

    .line 17
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 20
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "server_locale set in your locale\'s locale.xml should be either 2 or 5 characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Locale;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_26

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 35
    :goto_1f
    return-object v0

    .line 32
    :cond_20
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1f

    .line 34
    :cond_26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3d

    .line 35
    new-instance v0, Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 38
    :cond_3d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "server_locale set in your locale\'s locale.xml should be either 2 or 5 characters long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 56
    :cond_11
    :goto_11
    return v0

    :cond_12
    invoke-static {p0}, Lcom/dropbox/android/util/aq;->a(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    goto :goto_11
.end method
