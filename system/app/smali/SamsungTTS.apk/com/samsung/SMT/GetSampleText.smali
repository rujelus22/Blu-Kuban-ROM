.class public Lcom/samsung/SMT/GetSampleText;
.super Landroid/app/Activity;
.source "GetSampleText.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v2, 0x0

    .line 39
    .local v2, result:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v3, returnData:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/SMT/GetSampleText;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "language"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, language:Ljava/lang/String;
    const-string v4, "kor"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 44
    const-string v4, "sampleText"

    const v5, 0x7f040003

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :goto_2b
    invoke-virtual {p0, v2, v3}, Lcom/samsung/SMT/GetSampleText;->setResult(ILandroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/SMT/GetSampleText;->finish()V

    .line 72
    return-void

    .line 46
    :cond_32
    const-string v4, "eng"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 47
    const-string v4, "sampleText"

    const v5, 0x7f040004

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 49
    :cond_47
    const-string v4, "zho"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 50
    const-string v4, "sampleText"

    const v5, 0x7f040005

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 52
    :cond_5c
    const-string v4, "spa"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 53
    const-string v4, "sampleText"

    const v5, 0x7f040006

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 55
    :cond_71
    const-string v4, "deu"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 56
    const-string v4, "sampleText"

    const v5, 0x7f040007

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 58
    :cond_86
    const-string v4, "fra"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9b

    .line 59
    const-string v4, "sampleText"

    const v5, 0x7f040008

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 61
    :cond_9b
    const-string v4, "ita"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 62
    const-string v4, "sampleText"

    const v5, 0x7f040009

    invoke-virtual {p0, v5}, Lcom/samsung/SMT/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2b

    .line 66
    :cond_b1
    const/4 v2, -0x2

    .line 67
    const-string v4, "sampleText"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2b
.end method
