.class public Lcom/google/android/apps/plus/views/ActionButton;
.super Landroid/widget/TextView;
.source "ActionButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ActionButton;->setup()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ActionButton;->setup()V

    .line 28
    return-void
.end method

.method private setup()V
    .registers 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 35
    .local v0, text:Ljava/lang/CharSequence;
    if-eqz v0, :cond_11

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ActionButton;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_11
    return-void
.end method
