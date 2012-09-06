.class public Lcom/twitter/android/widget/k;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private final a:I


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/widget/k;->a:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
