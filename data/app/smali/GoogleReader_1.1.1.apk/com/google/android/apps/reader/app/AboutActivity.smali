.class public Lcom/google/android/apps/reader/app/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getPackageVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, packageName:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 62
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 65
    .end local v0           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v1           #packageManager:Landroid/content/pm/PackageManager;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_f
    return-object v3

    :catch_10
    move-exception v3

    const-string v3, "1.0"

    goto :goto_f
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 79
    :goto_7
    return-void

    .line 75
    :pswitch_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/AboutActivity;->setResult(I)V

    .line 76
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AboutActivity;->finish()V

    goto :goto_7

    .line 73
    :pswitch_data_10
    .packed-switch 0x1020019
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/AboutActivity;->setContentView(I)V

    .line 46
    const v3, 0x1020005

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, hint:Landroid/widget/TextView;
    const v3, 0x1020014

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, text2:Landroid/widget/TextView;
    const v3, 0x7f0d0074

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/apps/reader/app/AboutActivity;->getPackageVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/reader/app/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 53
    const v3, 0x1020019

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 86
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/AboutActivity;->finish()V

    .line 87
    const/4 v0, 0x1

    goto :goto_b

    .line 83
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
