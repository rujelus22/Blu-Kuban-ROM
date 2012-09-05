.class public Leu/chainfire/supersu/AppDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Leu/chainfire/supersu/Settings;

.field private d:Leu/chainfire/supersu/Settings$App;

.field private e:Landroid/widget/Spinner;

.field private f:Landroid/widget/Spinner;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Spinner;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    iput-object v1, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Leu/chainfire/supersu/AppDetailActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "eu.chainfire.supersu.extra.appname"

    if-eqz p1, :cond_2e

    :goto_25
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x1100

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2e
    const-string p1, ""

    goto :goto_25
.end method


# virtual methods
.method public onCancel(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/4 v4, 0x2

    const/4 v7, 0x1

    const v6, 0x1090009

    const v5, 0x1090008

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setContentView(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_30
    if-eqz p1, :cond_37

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_37
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->a:Landroid/os/Bundle;

    const-string v2, "eu.chainfire.supersu.extra.appname"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_49

    const-string v0, ""

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    :cond_49
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    :goto_53
    return-void

    :cond_54
    new-instance v0, Leu/chainfire/supersu/Settings;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {p0, v1}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_81

    :try_start_6e
    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_81

    iget-object v3, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_81} :catch_1e7

    :cond_81
    :goto_81
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Leu/chainfire/supersu/Settings;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    const v0, 0x7f0b0004

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->i:I

    packed-switch v0, :pswitch_data_1ea

    :goto_b6
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    const v0, 0x7f0b0006

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->g:I

    packed-switch v0, :pswitch_data_1f4

    :goto_d7
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_17b

    const v0, 0x7f0b0005

    invoke-static {p0, v0, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v0, v0, Leu/chainfire/supersu/Settings$App;->h:I

    packed-switch v0, :pswitch_data_1fe

    :goto_fc
    const v0, 0x7f040026

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_1bf

    sget-object v0, Leu/chainfire/supersu/Constants;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090058

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    move v0, v1

    :goto_120
    sget-object v3, Leu/chainfire/supersu/Constants;->a:[I

    array-length v3, v3

    if-lt v0, v3, :cond_1a3

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_53

    :pswitch_139
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_b6

    :pswitch_140
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_b6

    :pswitch_147
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_b6

    :pswitch_14e
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_d7

    :pswitch_154
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_d7

    :pswitch_15b
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_d7

    :pswitch_162
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_fc

    :pswitch_168
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_fc

    :pswitch_16e
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_fc

    :pswitch_174
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_fc

    :cond_17b
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_fc

    :cond_1a3
    add-int/lit8 v3, v0, 0x1

    sget-object v4, Leu/chainfire/supersu/Constants;->a:[I

    aget v4, v4, v0

    invoke-static {v4}, Leu/chainfire/supersu/Constants;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v3, Leu/chainfire/supersu/Constants;->a:[I

    aget v3, v3, v0

    iget-object v4, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iget v4, v4, Leu/chainfire/supersu/Settings$App;->d:I

    if-ne v3, v4, :cond_1bb

    add-int/lit8 v1, v0, 0x1

    :cond_1bb
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_120

    :cond_1bf
    new-instance v0, Landroid/widget/ArrayAdapter;

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_53

    :catch_1e7
    move-exception v0

    goto/16 :goto_81

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_147
        :pswitch_140
        :pswitch_139
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch -0x1
        :pswitch_14e
        :pswitch_15b
        :pswitch_154
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch -0x1
        :pswitch_162
        :pswitch_174
        :pswitch_16e
        :pswitch_168
    .end packed-switch
.end method

.method public onForget(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method

.method public onSave(Landroid/view/View;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->e:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_84

    :goto_d
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->g:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    :goto_16
    iget-boolean v0, p0, Leu/chainfire/supersu/AppDetailActivity;->i:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_98

    :goto_23
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    :cond_2f
    :goto_2f
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->e()V

    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->c:Leu/chainfire/supersu/Settings;

    invoke-virtual {v0, p0}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void

    :pswitch_40
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_d

    :pswitch_45
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_d

    :pswitch_4a
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->i:I

    goto :goto_d

    :pswitch_4f
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_16

    :pswitch_54
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_16

    :pswitch_59
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->g:I

    goto :goto_16

    :pswitch_5e
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_23

    :pswitch_63
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v4, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_23

    :pswitch_68
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v3, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_23

    :pswitch_6d
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    iput v2, v0, Leu/chainfire/supersu/Settings$App;->h:I

    goto :goto_23

    :cond_72
    iget-object v0, p0, Leu/chainfire/supersu/AppDetailActivity;->d:Leu/chainfire/supersu/Settings$App;

    sget-object v1, Leu/chainfire/supersu/Constants;->a:[I

    iget-object v2, p0, Leu/chainfire/supersu/AppDetailActivity;->h:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    goto :goto_2f

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_40
        :pswitch_45
        :pswitch_4a
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_54
        :pswitch_59
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_63
        :pswitch_68
        :pswitch_6d
    .end packed-switch
.end method

.method protected onUserLeaveHint()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/AppDetailActivity;->setResult(I)V

    invoke-virtual {p0}, Leu/chainfire/supersu/AppDetailActivity;->finish()V

    return-void
.end method
