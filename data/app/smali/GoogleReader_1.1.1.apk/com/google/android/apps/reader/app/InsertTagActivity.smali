.class public Lcom/google/android/apps/reader/app/InsertTagActivity;
.super Landroid/app/Activity;
.source "InsertTagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mEditTagLabel:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private insertTag()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/reader/app/InsertTagActivity;->mEditTagLabel:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v0, v5

    .line 71
    :goto_e
    return v0

    .line 53
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 56
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v4, "label"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_3d

    .line 66
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/InsertTagActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    const/4 v0, 0x1

    goto :goto_e

    :cond_3d
    move v0, v5

    .line 71
    goto :goto_e
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 89
    :cond_7
    :goto_7
    return-void

    .line 81
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->insertTag()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->finish()V

    goto :goto_7

    .line 86
    :pswitch_12
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->finish()V

    goto :goto_7

    .line 79
    :pswitch_data_16
    .packed-switch 0x7f0b0036
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/apps/reader/app/InsertTagActivity;->mEditTagLabel:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/InsertTagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
