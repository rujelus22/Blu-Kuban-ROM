.class public Lcom/google/android/apps/plus/views/MentionSpan;
.super Landroid/text/style/URLSpan;
.source "MentionSpan.java"


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;)V
    .registers 4
    .parameter "span"

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {p1}, Lcom/google/android/apps/plus/views/MentionSpan;->isMention(Landroid/text/style/URLSpan;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "aggregateId"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static isMention(Landroid/text/style/URLSpan;)Z
    .registers 3
    .parameter "span"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, url:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public getAggregateId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MentionSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 4
    .parameter "ds"

    .prologue
    const/4 v1, 0x0

    .line 55
    const v0, -0xcc9934

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 56
    iput v1, p1, Landroid/text/TextPaint;->bgColor:I

    .line 57
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 58
    return-void
.end method
