.class Lcom/estrongs/android/pop/view/mf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/TitleEditor;

.field private b:Z

.field private c:J

.field private d:I


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/TitleEditor;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/mf;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/mf;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/view/mf;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/pop/view/mf;->d:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 13

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/mf;->b:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const-string v3, "."

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v3, 0xf0

    if-le v0, v3, :cond_ad

    if-lez v6, :cond_ad

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    const/16 v3, 0xc

    if-gt v0, v3, :cond_ad

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget v7, p0, Lcom/estrongs/android/pop/view/mf;->d:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_38

    iget v7, p0, Lcom/estrongs/android/pop/view/mf;->d:I

    if-ne v7, v0, :cond_85

    :cond_38
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput v0, p0, Lcom/estrongs/android/pop/view/mf;->d:I

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    :goto_41
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    move-object v6, v3

    move v3, v1

    :goto_48
    rsub-int v7, v0, 0xf0

    if-gt v4, v7, :cond_88

    if-eqz v3, :cond_7

    iput-boolean v5, p0, Lcom/estrongs/android/pop/view/mf;->b:Z

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p1, v0, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    if-eqz v2, :cond_60

    invoke-interface {p1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_60
    iput-boolean v1, p0, Lcom/estrongs/android/pop/view/mf;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/view/mf;->c:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/mf;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    iget-object v4, p0, Lcom/estrongs/android/pop/view/mf;->a:Lcom/estrongs/android/pop/view/TitleEditor;

    const v5, 0x7f0901c7

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/view/TitleEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-wide v2, p0, Lcom/estrongs/android/pop/view/mf;->c:J

    goto :goto_7

    :cond_85
    move v0, v1

    move-object v3, v4

    goto :goto_41

    :cond_88
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const-wide/high16 v8, 0x3ff0

    int-to-double v3, v4

    mul-double/2addr v3, v8

    int-to-double v8, v7

    div-double/2addr v3, v8

    rsub-int v8, v0, 0xf0

    int-to-double v8, v8

    div-double v3, v8, v3

    double-to-int v3, v3

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v7, :cond_9e

    add-int/lit8 v3, v3, -0x1

    :cond_9e
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    move-object v6, v4

    move v4, v3

    move v3, v5

    goto :goto_48

    :cond_ad
    move v0, v1

    move-object v3, v4

    goto :goto_41
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
