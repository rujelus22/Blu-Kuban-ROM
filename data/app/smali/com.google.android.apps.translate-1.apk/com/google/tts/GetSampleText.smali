.class public Lcom/google/tts/GetSampleText;
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
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, result:I
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 39
    .local v4, returnData:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/tts/GetSampleText;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "language"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, language:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "country"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "variant"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, variant:Ljava/lang/String;
    const-string v6, "afr"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 45
    const-string v6, "sampleText"

    const v7, 0x7f070020

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :goto_3f
    invoke-virtual {p0, v3, v4}, Lcom/google/tts/GetSampleText;->setResult(ILandroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/tts/GetSampleText;->finish()V

    .line 119
    return-void

    .line 46
    :cond_46
    const-string v6, "bos"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 47
    const-string v6, "sampleText"

    const v7, 0x7f070021

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 48
    :cond_5b
    const-string v6, "zho"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 49
    const-string v6, "sampleText"

    const v7, 0x7f070022

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 50
    :cond_70
    const-string v6, "hrv"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 51
    const-string v6, "sampleText"

    const v7, 0x7f070023

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 52
    :cond_85
    const-string v6, "ces"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 53
    const-string v6, "sampleText"

    const v7, 0x7f070024

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 54
    :cond_9a
    const-string v6, "nld"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 55
    const-string v6, "sampleText"

    const v7, 0x7f070025

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3f

    .line 56
    :cond_af
    const-string v6, "eng"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 57
    const-string v6, "sampleText"

    const v7, 0x7f070026

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 58
    :cond_c5
    const-string v6, "epo"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 59
    const-string v6, "sampleText"

    const v7, 0x7f070027

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 60
    :cond_db
    const-string v6, "fin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 61
    const-string v6, "sampleText"

    const v7, 0x7f070028

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 62
    :cond_f1
    const-string v6, "fra"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_107

    .line 63
    const-string v6, "sampleText"

    const v7, 0x7f070029

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 64
    :cond_107
    const-string v6, "deu"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 65
    const-string v6, "sampleText"

    const v7, 0x7f07002a

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 66
    :cond_11d
    const-string v6, "ell"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_133

    .line 67
    const-string v6, "sampleText"

    const v7, 0x7f07002b

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 68
    :cond_133
    const-string v6, "hin"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_149

    .line 69
    const-string v6, "sampleText"

    const v7, 0x7f07002c

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 70
    :cond_149
    const-string v6, "hun"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15f

    .line 71
    const-string v6, "sampleText"

    const v7, 0x7f07002d

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 72
    :cond_15f
    const-string v6, "isl"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_175

    .line 73
    const-string v6, "sampleText"

    const v7, 0x7f07002e

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 74
    :cond_175
    const-string v6, "ind"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 75
    const-string v6, "sampleText"

    const v7, 0x7f07002f

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 76
    :cond_18b
    const-string v6, "ita"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a1

    .line 77
    const-string v6, "sampleText"

    const v7, 0x7f070030

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 78
    :cond_1a1
    const-string v6, "kur"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 79
    const-string v6, "sampleText"

    const v7, 0x7f070031

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 80
    :cond_1b7
    const-string v6, "lat"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cd

    .line 81
    const-string v6, "sampleText"

    const v7, 0x7f070032

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 82
    :cond_1cd
    const-string v6, "mkd"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e3

    .line 83
    const-string v6, "sampleText"

    const v7, 0x7f070033

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 84
    :cond_1e3
    const-string v6, "nor"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f9

    .line 85
    const-string v6, "sampleText"

    const v7, 0x7f070034

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 86
    :cond_1f9
    const-string v6, "pol"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20f

    .line 87
    const-string v6, "sampleText"

    const v7, 0x7f070035

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 88
    :cond_20f
    const-string v6, "por"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_225

    .line 89
    const-string v6, "sampleText"

    const v7, 0x7f070036

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 90
    :cond_225
    const-string v6, "ron"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23b

    .line 91
    const-string v6, "sampleText"

    const v7, 0x7f070037

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 92
    :cond_23b
    const-string v6, "rus"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_251

    .line 93
    const-string v6, "sampleText"

    const v7, 0x7f070038

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 94
    :cond_251
    const-string v6, "srp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_267

    .line 95
    const-string v6, "sampleText"

    const v7, 0x7f070039

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 96
    :cond_267
    const-string v6, "slk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27d

    .line 97
    const-string v6, "sampleText"

    const v7, 0x7f07003a

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 98
    :cond_27d
    const-string v6, "spa"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_293

    .line 99
    const-string v6, "sampleText"

    const v7, 0x7f07003b

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 100
    :cond_293
    const-string v6, "swa"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a9

    .line 101
    const-string v6, "sampleText"

    const v7, 0x7f07003c

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 102
    :cond_2a9
    const-string v6, "swe"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2bf

    .line 103
    const-string v6, "sampleText"

    const v7, 0x7f07003d

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 104
    :cond_2bf
    const-string v6, "tam"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d5

    .line 105
    const-string v6, "sampleText"

    const v7, 0x7f07003e

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 106
    :cond_2d5
    const-string v6, "tur"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2eb

    .line 107
    const-string v6, "sampleText"

    const v7, 0x7f07003f

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 108
    :cond_2eb
    const-string v6, "vie"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_301

    .line 109
    const-string v6, "sampleText"

    const v7, 0x7f070040

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 110
    :cond_301
    const-string v6, "cym"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_317

    .line 111
    const-string v6, "sampleText"

    const v7, 0x7f070041

    invoke-virtual {p0, v7}, Lcom/google/tts/GetSampleText;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 113
    :cond_317
    const/4 v3, -0x2

    .line 114
    const-string v6, "sampleText"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f
.end method
