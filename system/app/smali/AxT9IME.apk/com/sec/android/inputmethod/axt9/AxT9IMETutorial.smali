.class public Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;
.super Landroid/app/Activity;
.source "AxT9IMETutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mTutorialEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initViews()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/16 v9, 0x2e

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 53
    const v4, 0x7f030027

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->setContentView(I)V

    .line 66
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/String;

    .line 68
    .local v0, tmp:[Ljava/lang/String;
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 69
    .local v1, tv01:Landroid/widget/TextView;
    const v4, 0x7f07005f

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, tv02:Landroid/widget/TextView;
    const v4, 0x7f070060

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, tv03:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 75
    aget-object v4, v0, v7

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    aget-object v4, v0, v7

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 79
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v10

    .line 83
    aget-object v4, v0, v6

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_c6

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v6

    .line 87
    :cond_c6
    aget-object v4, v0, v8

    aget-object v5, v0, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_ed

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    .line 91
    :cond_ed
    aget-object v4, v0, v7

    aget-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v9, :cond_114

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v7

    .line 99
    :cond_114
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 100
    const/4 v4, 0x4

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v4, 0x7f070052

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mTutorialEditText:Landroid/widget/EditText;

    .line 124
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;

    invoke-direct {v5, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IMETutorial;->initViews()V

    .line 50
    return-void
.end method
