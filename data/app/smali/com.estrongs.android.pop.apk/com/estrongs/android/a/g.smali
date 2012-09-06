.class public Lcom/estrongs/android/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;)I
    .registers 5

    const v0, 0x1004d

    const/4 v1, -0x1

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_13

    :cond_11
    move v0, v1

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const/high16 v0, 0x1

    goto :goto_12

    :cond_3b
    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    const v0, 0x10010

    goto :goto_12

    :cond_47
    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_53

    const v0, 0x10011

    goto :goto_12

    :cond_53
    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string v3, ".wbmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    :cond_63
    const v0, 0x10012

    goto :goto_12

    :cond_67
    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    const v0, 0x10013

    goto :goto_12

    :cond_73
    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const v0, 0x10014

    goto :goto_12

    :cond_7f
    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const v0, 0x10020

    goto :goto_12

    :cond_8b
    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, ".m4v"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a0

    :cond_9b
    const v0, 0x1002c

    goto/16 :goto_12

    :cond_a0
    const-string v3, ".avi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const v0, 0x1002b

    goto/16 :goto_12

    :cond_ad
    const-string v3, ".mid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_bd

    const-string v3, ".midi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    :cond_bd
    const v0, 0x10021

    goto/16 :goto_12

    :cond_c2
    const-string v3, ".wmv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    const v0, 0x10028

    goto/16 :goto_12

    :cond_cf
    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_dc

    const v0, 0x10022

    goto/16 :goto_12

    :cond_dc
    const-string v3, ".asf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e9

    const v0, 0x10027

    goto/16 :goto_12

    :cond_e9
    const-string v3, ".mpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f6

    const v0, 0x1002d

    goto/16 :goto_12

    :cond_f6
    const-string v3, ".mpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_103

    const v0, 0x1002e

    goto/16 :goto_12

    :cond_103
    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_113

    const-string v3, ".3gpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_118

    :cond_113
    const v0, 0x1002a

    goto/16 :goto_12

    :cond_118
    const-string v3, ".amr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_125

    const v0, 0x10023

    goto/16 :goto_12

    :cond_125
    const-string v3, ".rm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_135

    const-string v3, ".rmvb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13a

    :cond_135
    const v0, 0x10029

    goto/16 :goto_12

    :cond_13a
    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14a

    const-string v3, ".x-ogg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14f

    :cond_14a
    const v0, 0x10024

    goto/16 :goto_12

    :cond_14f
    const-string v3, ".m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15f

    const-string v3, ".aac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_164

    :cond_15f
    const v0, 0x10025

    goto/16 :goto_12

    :cond_164
    const-string v3, ".wma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_171

    const v0, 0x10026

    goto/16 :goto_12

    :cond_171
    const-string v3, ".doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_181

    const-string v3, ".docx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_186

    :cond_181
    const v0, 0x10030

    goto/16 :goto_12

    :cond_186
    const-string v3, ".ppt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, ".pps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, ".ppx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, ".pptx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ae

    const-string v3, ".odp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    :cond_1ae
    const v0, 0x10037

    goto/16 :goto_12

    :cond_1b3
    const-string v3, ".xls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlsx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xla"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlsm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f3

    const-string v3, ".xlsb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    :cond_1f3
    const v0, 0x10031

    goto/16 :goto_12

    :cond_1f8
    const-string v3, ".chm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_205

    const v0, 0x10040

    goto/16 :goto_12

    :cond_205
    const-string v3, ".html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21d

    const-string v3, ".htm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21d

    const-string v3, ".mht"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_222

    :cond_21d
    const v0, 0x10032

    goto/16 :goto_12

    :cond_222
    const-string v3, ".bat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22f

    const v0, 0x10033

    goto/16 :goto_12

    :cond_22f
    const-string v3, ".exe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23c

    const v0, 0x10034

    goto/16 :goto_12

    :cond_23c
    const-string v3, ".dll"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_249

    const v0, 0x10035

    goto/16 :goto_12

    :cond_249
    const-string v3, ".lib"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_256

    const v0, 0x10036

    goto/16 :goto_12

    :cond_256
    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".ini"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".properties"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".prop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".conf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".classpath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29e

    const-string v3, ".project"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2a3

    :cond_29e
    const v0, 0x10001

    goto/16 :goto_12

    :cond_2a3
    const-string v3, ".ics"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, ".ical"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, ".icalendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".tar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".gz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".cab"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".esi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f3

    const-string v3, ".7z"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f8

    :cond_2f3
    const v0, 0x10038

    goto/16 :goto_12

    :cond_2f8
    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_305

    const v0, 0x1003a

    goto/16 :goto_12

    :cond_305
    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_312

    const v0, 0x10039

    goto/16 :goto_12

    :cond_312
    const-string v3, ".esj"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31f

    const v0, 0x1003b

    goto/16 :goto_12

    :cond_31f
    const-string v3, ".qcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32c

    const v0, 0x1002f

    goto/16 :goto_12

    :cond_32c
    const-string v3, ".epub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_339

    const v0, 0x1003c

    goto/16 :goto_12

    :cond_339
    const-string v3, ".mobi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_349

    const-string v3, ".prc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34e

    :cond_349
    const v0, 0x1004c

    goto/16 :goto_12

    :cond_34e
    const-string v3, ".mkv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    goto/16 :goto_12
.end method

.method public static final b(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/a/g;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10010

    if-lt v0, v1, :cond_10

    const v1, 0x10014

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final c(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/a/g;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10020

    if-lt v0, v1, :cond_10

    const v1, 0x10026

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static final d(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/estrongs/android/a/g;->a(Ljava/lang/String;)I

    move-result v0

    const v1, 0x10027

    if-lt v0, v1, :cond_10

    const v1, 0x1002e

    if-gt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
