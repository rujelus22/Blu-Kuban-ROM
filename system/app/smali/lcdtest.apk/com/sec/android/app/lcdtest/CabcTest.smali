.class public Lcom/sec/android/app/lcdtest/CabcTest;
.super Landroid/app/Activity;
.source "CabcTest.java"


# instance fields
.field private final CABC_ONOFF_INFO_FILE:Ljava/lang/String;

.field private mCabcValue:I

.field mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "/sys/class/sec/sec_tune_cmc623/cabconoff"

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest;->CABC_ONOFF_INFO_FILE:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/sec/android/app/lcdtest/CabcTest$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/lcdtest/CabcTest$1;-><init>(Lcom/sec/android/app/lcdtest/CabcTest;)V

    iput-object v0, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mClickListener:Landroid/view/View$OnClickListener;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mCabcValue:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/lcdtest/CabcTest;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/lcdtest/CabcTest;->setSysfsFile(I)V

    return-void
.end method

.method private setSysfsFile(I)V
    .registers 9
    .parameter "value"

    .prologue
    .line 123
    const-string v3, "Cabc TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSysfsFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, str:Ljava/lang/String;
    const-string v3, "Cabc TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_40
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/sec_tune_cmc623/cabconoff"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 134
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_51} :catch_52

    .line 139
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_51
    return-void

    .line 135
    :catch_52
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    const-string v3, "Cabc TEST"

    const-string v4, "file writing error"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method


# virtual methods
.method public confirmSysfsFileCabcValue()I
    .registers 8

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 91
    .local v2, s:Ljava/lang/String;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/sec_tune_cmc623/cabconoff"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 92
    .local v0, buf:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_14} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_23

    .line 104
    .end local v0           #buf:Ljava/io/BufferedReader;
    :goto_14
    invoke-virtual {p0, v2}, Lcom/sec/android/app/lcdtest/CabcTest;->isNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    .line 105
    const/4 v3, 0x1

    .local v3, value:I
    move v4, v3

    .line 107
    .end local v3           #value:I
    .local v4, value:I
    :goto_1c
    return v4

    .line 95
    .end local v4           #value:I
    :catch_1d
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 97
    const/4 v2, 0x0

    .line 102
    goto :goto_14

    .line 99
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_23
    move-exception v1

    .line 100
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    const/4 v2, 0x0

    goto :goto_14

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    :cond_29
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #value:I
    move v4, v3

    .end local v3           #value:I
    .restart local v4       #value:I
    goto :goto_1c
.end method

.method public getCabcValue()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mCabcValue:I

    return v0
.end method

.method public isNumber(Ljava/lang/String;)Z
    .registers 5
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 111
    const-string v2, ""

    if-ne p1, v2, :cond_6

    .line 119
    :cond_5
    :goto_5
    return v1

    .line 114
    :cond_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 119
    :cond_1a
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->setContentView(I)V

    .line 59
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, layout:Landroid/widget/LinearLayout;
    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 62
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/lcdtest/CabcTest;->confirmSysfsFileCabcValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/lcdtest/CabcTest;->setCabcValue(I)V

    .line 66
    return-void
.end method

.method public setCabcValue(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 52
    iput p1, p0, Lcom/sec/android/app/lcdtest/CabcTest;->mCabcValue:I

    .line 53
    return-void
.end method
