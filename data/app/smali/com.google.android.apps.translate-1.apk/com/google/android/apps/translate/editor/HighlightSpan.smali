.class public Lcom/google/android/apps/translate/editor/HighlightSpan;
.super Landroid/text/style/TextAppearanceSpan;
.source "HighlightSpan.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 16
    sget v0, Lcom/google/android/apps/translate/R$style;->correctable_highlight:I

    invoke-direct {p0, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method
