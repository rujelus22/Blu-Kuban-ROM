.class public Lcom/google/android/apps/plus/views/UpperCaseLabel;
.super Landroid/widget/TextView;
.source "UpperCaseLabel.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/UpperCaseLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    const v0, 0x7f0f004f

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/UpperCaseLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/UpperCaseLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 30
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_14

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/UpperCaseLabel;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :cond_14
    return-void
.end method
