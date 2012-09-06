.class public Lcom/google/googlenav/ui/view/android/rideabout/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->a:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->b:I

    .line 38
    iput p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->c:I

    .line 39
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/widget/LinearLayout;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    const/4 v0, 0x0

    :goto_1c
    array-length v3, v2

    if-ge v0, v3, :cond_35

    .line 60
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    aget-object v4, v2, v0

    invoke-virtual {p0, v4, p2}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 64
    :cond_35
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;
    .registers 6
    .parameter

    .prologue
    .line 121
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->a:Landroid/content/Context;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->b:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method

.method public varargs b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/n;)Landroid/text/SpannableStringBuilder;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 84
    const/4 v0, 0x0

    .line 114
    :goto_8
    return-object v0

    .line 86
    :cond_9
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 87
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_8d

    .line 89
    const-string v1, "<b>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 90
    const-string v1, "</b>"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 91
    const-string v3, "<b>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/q;->b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/text/SpannableStringBuilder;)V

    .line 94
    const-string v0, "</b>"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 95
    goto :goto_e

    :cond_3c
    const-string v1, "{"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 96
    const-string v1, "}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 97
    const-string v3, "{"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 98
    aget-object v0, p2, v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/text/SpannableStringBuilder;)V

    .line 99
    const-string v0, "}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 100
    goto :goto_e

    :cond_66
    move v1, v0

    .line 102
    :goto_67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_7d

    .line 103
    const-string v3, "<b>"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "{"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 108
    :cond_7d
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/q;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(Landroid/text/SpannableStringBuilder;)V

    move v0, v1

    .line 112
    goto :goto_e

    .line 102
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_8d
    move-object v0, v2

    .line 114
    goto/16 :goto_8
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/n;
    .registers 6
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->a:Landroid/content/Context;

    iget v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/q;->c:I

    invoke-direct {v1, v2, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/n;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method
