.class public final Lcom/google/android/marvin/talkback/formatter/TextFormatters$ChangedTextFormatter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/marvin/talkback/formatter/EventSpeechRule$AccessibilityEventFormatter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/accessibility/AccessibilityEvent;Landroid/content/Context;Lcom/google/android/marvin/talkback/ac;)Z
    .registers 15

    const v10, 0x7f070051

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p3}, Lcom/google/android/marvin/talkback/ac;->b()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->isPassword()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v1

    if-ne v1, v3, :cond_2c

    if-nez v0, :cond_2c

    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f0700e1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2b
    return v3

    :cond_2c
    if-nez v1, :cond_45

    if-ne v0, v3, :cond_45

    new-array v0, v9, [Ljava/lang/Object;

    const v1, 0x7f0700e1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_45
    const v5, 0x7f070037

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    invoke-virtual {p2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v4, v1}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2b

    :cond_62
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_77

    move-object v0, v1

    :goto_69
    invoke-static {p1}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->a(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_8d

    :cond_6f
    :goto_6f
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a1

    move v3, v2

    goto :goto_2b

    :cond_77
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getRemovedCount()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v0, v5, v6}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->a(Ljava/lang/CharSequence;II)Z

    move-result v7

    if-nez v7, :cond_88

    move-object v0, v1

    goto :goto_69

    :cond_88
    invoke-interface {v0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_69

    :cond_8d
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAddedCount()I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v5, v6, v7}, Lcom/google/android/marvin/talkback/formatter/TextFormatters;->a(Ljava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_6f

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_6f

    :cond_a1
    if-eqz v0, :cond_a5

    if-nez v1, :cond_a7

    :cond_a5
    move v3, v2

    goto :goto_2b

    :cond_a7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v6, v5, :cond_cc

    invoke-static {v1, v2, v0, v2, v5}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_cc

    invoke-static {v1, v5, v6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""

    :cond_bd
    :goto_bd
    invoke-static {p2, v0}, Lcom/google/android/marvin/talkback/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {p2, v1}, Lcom/google/android/marvin/talkback/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v5, :cond_c9

    if-nez v6, :cond_db

    :cond_c9
    move v3, v2

    goto/16 :goto_2b

    :cond_cc
    if-le v5, v6, :cond_bd

    invoke-static {v0, v2, v1, v2, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v7

    if-eqz v7, :cond_bd

    const-string v1, ""

    invoke-static {v0, v6, v5}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_bd

    :cond_db
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_103

    move v0, v2

    :goto_e2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_105

    move v1, v2

    :goto_e9
    if-eqz v0, :cond_107

    if-eqz v1, :cond_107

    new-array v0, v3, [Ljava/lang/Object;

    const v1, 0x7f070036

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v2

    aput-object v6, v7, v3

    invoke-virtual {p2, v1, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    :cond_103
    move v0, v3

    goto :goto_e2

    :cond_105
    move v1, v3

    goto :goto_e9

    :cond_107
    if-eqz v0, :cond_112

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v6, v0, v2

    invoke-static {v4, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    :cond_112
    if-eqz v1, :cond_123

    new-array v0, v9, [Ljava/lang/Object;

    aput-object v5, v0, v2

    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v4, v0}, Lcom/google/android/marvin/utils/a;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2b

    :cond_123
    move v3, v2

    goto/16 :goto_2b
.end method
