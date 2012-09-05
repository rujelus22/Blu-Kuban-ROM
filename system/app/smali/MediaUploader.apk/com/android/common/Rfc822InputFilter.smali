.class public Lcom/android/common/Rfc822InputFilter;
.super Ljava/lang/Object;
.source "Rfc822InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    sub-int v0, p3, p2

    if-ne v0, v4, :cond_e

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_10

    :cond_e
    move-object v0, v3

    .line 72
    :goto_f
    return-object v0

    .line 44
    :cond_10
    const/4 v0, 0x0

    move v1, p5

    .line 45
    :goto_12
    if-lez v1, :cond_38

    .line 46
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p4, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    .line 47
    sparse-switch v2, :sswitch_data_3a

    goto :goto_12

    :sswitch_1e
    move-object v0, v3

    .line 52
    goto :goto_f

    :sswitch_20
    move v0, v4

    .line 50
    goto :goto_12

    .line 54
    :sswitch_22
    if-nez v0, :cond_26

    move-object v0, v3

    .line 55
    goto :goto_f

    .line 59
    :cond_26
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_35

    .line 60
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_f

    .line 64
    :cond_35
    const-string v0, ", "

    goto :goto_f

    :cond_38
    move-object v0, v3

    .line 72
    goto :goto_f

    .line 47
    :sswitch_data_3a
    .sparse-switch
        0x2c -> :sswitch_1e
        0x2e -> :sswitch_20
        0x40 -> :sswitch_22
    .end sparse-switch
.end method
