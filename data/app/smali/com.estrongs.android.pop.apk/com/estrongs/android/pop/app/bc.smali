.class Lcom/estrongs/android/pop/app/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/CompressActivity;

.field private b:Z

.field private c:J


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/CompressActivity;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bc;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->b:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/bc;->c:J

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 13

    const/16 v10, 0xf0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bc;->b:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    move-object v4, v3

    move v3, v0

    move v0, v1

    :goto_15
    if-gt v3, v10, :cond_4b

    :cond_17
    if-eqz v0, :cond_8

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/bc;->b:Z

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/bc;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/bc;->c:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bc;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bc;->a:Lcom/estrongs/android/pop/app/CompressActivity;

    const v5, 0x7f0901c7

    invoke-virtual {v4, v5}, Lcom/estrongs/android/pop/app/CompressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/bc;->c:J

    goto :goto_8

    :cond_4b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-wide/high16 v6, 0x3ff0

    int-to-double v8, v3

    mul-double/2addr v6, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    int-to-double v8, v10

    div-double v6, v8, v6

    double-to-int v3, v6

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v5, :cond_17

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    move-object v4, v3

    move v3, v0

    move v0, v2

    goto :goto_15
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
