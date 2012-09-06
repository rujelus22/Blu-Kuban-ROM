.class public Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;
.super Landroid/text/style/BackgroundColorSpan;
.source "DocosActiveSpan.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 22
    const/high16 v0, -0x1

    invoke-direct {p0, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a:Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a:Ljava/lang/String;

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .parameter

    .prologue
    .line 44
    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/kix/spans/DocosActiveSpan;->a:Z

    if-eqz v0, :cond_f

    const/high16 v0, -0x1

    :goto_8
    invoke-static {v1, v0}, LEX;->a(II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 45
    return-void

    .line 44
    :cond_f
    const v0, -0xff0100

    goto :goto_8
.end method
