.class public Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;
.super Landroid/app/Activity;
.source "AxT9optionsAbout.java"


# instance fields
.field private final DEBUG:Z

.field private final INFO:Z

.field private mTextView1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->DEBUG:Z

    .line 32
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->INFO:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v7, 0x7f03000f

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->setContentView(I)V

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, aboutTitle:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    const v7, 0x7f070024

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->mTextView1:Landroid/widget/TextView;

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, wStatus:S
    const/16 v7, 0x46

    new-array v2, v7, [S

    .line 54
    .local v2, psCodeVerBuf:[S
    const/16 v5, 0x46

    .line 55
    .local v5, wBufMaxSize:S
    const/4 v7, 0x1

    new-array v3, v7, [S

    .line 56
    .local v3, pwBufSize:[S
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "XT9 Ver: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .local v4, sVerInfo:Ljava/lang/StringBuilder;
    invoke-static {v2, v5, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9GetCodeVersion([SS[S)S

    move-result v6

    .line 60
    if-nez v6, :cond_40

    .line 61
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    const/4 v7, 0x0

    aget-short v7, v3, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_45

    .line 62
    aget-short v7, v2, v1

    int-to-char v7, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 66
    .end local v1           #i:I
    :cond_40
    const-string v7, "Could not get the version informaion."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_45
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAbout;->mTextView1:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method
