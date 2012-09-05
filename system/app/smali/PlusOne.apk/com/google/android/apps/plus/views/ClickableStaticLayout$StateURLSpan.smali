.class public final Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;
.super Landroid/text/style/URLSpan;
.source "ClickableStaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ClickableStaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateURLSpan"
.end annotation


# instance fields
.field private mBgColor:I

.field private mClicked:Z

.field private mFirstTime:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mFirstTime:Z

    .line 58
    return-void
.end method


# virtual methods
.method public setClicked(Z)V
    .registers 2
    .parameter "clicked"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mClicked:Z

    .line 93
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5
    .parameter "ds"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mFirstTime:Z

    if-eqz v0, :cond_b

    .line 66
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mFirstTime:Z

    .line 68
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mBgColor:I

    .line 71
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mClicked:Z

    if-eqz v0, :cond_28

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_23

    .line 76
    const v0, -0xcc4a1b

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 84
    :goto_1a
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 85
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 86
    return-void

    .line 78
    :cond_23
    const/16 v0, -0x8000

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_1a

    .line 81
    :cond_28
    iget v0, p0, Lcom/google/android/apps/plus/views/ClickableStaticLayout$StateURLSpan;->mBgColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    goto :goto_1a
.end method
