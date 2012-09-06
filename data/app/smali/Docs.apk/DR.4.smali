.class public abstract LDR;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements LEd;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0}, LDR;->a()[C

    move-result-object v3

    .line 55
    invoke-virtual {p0}, LDR;->b()[C

    move-result-object v4

    .line 60
    instance-of v1, p1, Landroid/text/Editable;

    if-nez v1, :cond_40

    .line 65
    const/4 v1, 0x1

    .line 66
    array-length v5, v3

    move v2, v0

    .line 67
    :goto_10
    if-ge v2, v5, :cond_54

    .line 68
    aget-char v6, v3, v2

    invoke-static {p1, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v6

    if-ltz v6, :cond_1d

    .line 73
    :goto_1a
    if-eqz v0, :cond_20

    .line 99
    :goto_1c
    return-object p1

    .line 67
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 77
    :cond_20
    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_40

    .line 83
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_36

    .line 84
    new-instance v0, Landroid/text/SpannedString;

    new-instance v1, LDT;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v1, p1, v3, v4}, LDT;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v0, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    goto :goto_1c

    .line 88
    :cond_36
    new-instance v0, LDS;

    invoke-direct {v0, p1, v3, v4}, LDS;-><init>(Ljava/lang/CharSequence;[C[C)V

    invoke-virtual {v0}, LDS;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    .line 95
    :cond_40
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_4d

    .line 96
    new-instance v0, LDT;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v0, p1, v3, v4}, LDT;-><init>(Landroid/text/Spanned;[C[C)V

    move-object p1, v0

    goto :goto_1c

    .line 99
    :cond_4d
    new-instance v0, LDS;

    invoke-direct {v0, p1, v3, v4}, LDS;-><init>(Ljava/lang/CharSequence;[C[C)V

    move-object p1, v0

    goto :goto_1c

    :cond_54
    move v0, v1

    goto :goto_1a
.end method

.method public a(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method protected abstract a()[C
.end method

.method protected abstract b()[C
.end method
