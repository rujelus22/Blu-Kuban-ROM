.class public Lcom/google/android/apps/docs/editors/kix/spans/SelectionSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "SelectionSpan.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 24
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/kix/spans/SelectionSpan;->getBackgroundColor()I

    move-result v1

    invoke-static {v0, v1}, LEX;->a(II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 29
    return-void
.end method
