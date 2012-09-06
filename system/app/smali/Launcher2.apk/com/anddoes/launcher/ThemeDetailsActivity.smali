.class public Lcom/anddoes/launcher/ThemeDetailsActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/anddoes/launcher/preference/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/anddoes/launcher/c/i;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/preference/h;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->a:Lcom/anddoes/launcher/preference/h;

    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/anddoes/launcher/ThemeDetailsActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic g(Lcom/anddoes/launcher/ThemeDetailsActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic h(Lcom/anddoes/launcher/ThemeDetailsActivity;)Lcom/anddoes/launcher/c/i;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->showDialog(I)V

    .line 278
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 282
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    .line 286
    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f060145

    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->j:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 218
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->finish()V

    .line 258
    :cond_f
    :goto_f
    return-void

    .line 219
    :cond_10
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 220
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    .line 221
    const-string v1, "User Action"

    .line 222
    const-string v2, "Manage Theme"

    const-string v3, "rate_theme"

    .line 220
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 225
    :cond_35
    invoke-static {p0}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 226
    const-string v0, "com.anddoes.launcher.pro"

    .line 229
    :cond_41
    :goto_41
    :try_start_41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 230
    invoke-static {v0}, Lcom/anddoes/launcher/ia;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_58} :catch_59

    goto :goto_f

    .line 234
    :catch_59
    move-exception v0

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    .line 226
    :cond_62
    const-string v0, "com.anddoes.launcher"

    goto :goto_41

    .line 236
    :cond_65
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->l:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anddoes/launcher/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 238
    const v0, 0x7f060252

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->finish()V

    goto :goto_f

    .line 242
    :cond_87
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 243
    :cond_93
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 244
    :cond_9f
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_ab

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 245
    :cond_ab
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_c3

    .line 246
    :cond_b7
    const v0, 0x7f06010b

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f

    .line 249
    :cond_c3
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    .line 250
    const-string v1, "User Action"

    .line 251
    const-string v2, "Manage Theme"

    const-string v3, "apply_theme"

    .line 249
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    :try_start_d0
    new-instance v0, Lcom/anddoes/launcher/kt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/kt;-><init>(Lcom/anddoes/launcher/ThemeDetailsActivity;B)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/kt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_dc} :catch_de

    goto/16 :goto_f

    .line 255
    :catch_de
    move-exception v0

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->setContentView(I)V

    .line 65
    new-instance v0, Lcom/anddoes/launcher/preference/h;

    invoke-direct {v0, p0}, Lcom/anddoes/launcher/preference/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->a:Lcom/anddoes/launcher/preference/h;

    .line 66
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1e

    .line 68
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->finish()V

    .line 71
    :cond_1e
    const-string v1, "com.anddoes.launcher.THEME_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/anddoes/launcher/c/l;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 73
    const v1, 0x7f060252

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 74
    invoke-virtual {p0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->finish()V

    .line 77
    :cond_3f
    const-string v1, "com.anddoes.launcher.THEME_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->c:Ljava/lang/String;

    .line 78
    const-string v1, "com.anddoes.launcher.THEME_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    .line 79
    const-string v0, "apex_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 80
    new-instance v0, Lcom/anddoes/launcher/c/b;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    .line 92
    :goto_62
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 93
    if-eqz v0, :cond_7c

    .line 94
    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v1}, Lcom/anddoes/launcher/c/i;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_27c

    .line 96
    invoke-static {v1, p0}, Lcom/anddoes/launcher/kw;->b(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_7c
    :goto_7c
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    if-eqz v0, :cond_94

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_94

    .line 104
    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :cond_94
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    if-eqz v0, :cond_ae

    .line 108
    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v1}, Lcom/anddoes/launcher/c/i;->p()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_284

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_ae
    :goto_ae
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->b()V

    .line 117
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/SimplePagedView;

    .line 118
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/anddoes/launcher/CircleIndicator;

    .line 120
    const v2, 0x7f080061

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    if-eqz v2, :cond_db

    .line 122
    iget-object v3, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v3}, Lcom/anddoes/launcher/c/i;->s()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_289

    .line 124
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :cond_db
    :goto_db
    const v2, 0x7f080062

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 131
    if-eqz v2, :cond_10a

    .line 132
    iget-object v3, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v3}, Lcom/anddoes/launcher/c/i;->t()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_298

    .line 134
    const-string v4, "adw_theme"

    iget-object v5, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28e

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 136
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_10a
    :goto_10a
    const v2, 0x7f080063

    invoke-virtual {p0, v2}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    if-eqz v2, :cond_142

    .line 148
    iget-object v3, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v3}, Lcom/anddoes/launcher/c/i;->q()Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a0

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    const v5, 0x7f060107

    invoke-virtual {p0, v5}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_142
    :goto_142
    iget-object v2, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v2}, Lcom/anddoes/launcher/c/i;->u()Ljava/util/List;

    move-result-object v2

    .line 157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2a5

    .line 166
    invoke-virtual {v0}, Lcom/anddoes/launcher/SimplePagedView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2c3

    .line 167
    iput-boolean v6, v0, Lcom/anddoes/launcher/SimplePagedView;->ag:Z

    .line 168
    invoke-static {}, Lcom/anddoes/launcher/ia;->c()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/anddoes/launcher/CircleIndicator;->a(F)V

    .line 169
    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/SimplePagedView;->a(Lcom/anddoes/launcher/iy;)V

    .line 175
    :goto_169
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    .line 176
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_18a

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->e()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 177
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 178
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 180
    :cond_18a
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    .line 181
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1ab

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->f()Z

    move-result v0

    if-nez v0, :cond_1ab

    .line 182
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 185
    :cond_1ab
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    .line 186
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1cc

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->g()Z

    move-result v0

    if-nez v0, :cond_1cc

    .line 187
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 190
    :cond_1cc
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    .line 191
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1ed

    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->h()Z

    move-result v0

    if-nez v0, :cond_1ed

    .line 192
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 195
    :cond_1ed
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->j:Landroid/widget/Button;

    .line 196
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->j:Landroid/widget/Button;

    if-eqz v0, :cond_201

    .line 197
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_201
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->k:Landroid/widget/Button;

    .line 200
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->k:Landroid/widget/Button;

    if-eqz v0, :cond_215

    .line 201
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_215
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/anddoes/launcher/ThemeDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->l:Landroid/widget/Button;

    .line 204
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->l:Landroid/widget/Button;

    if-eqz v0, :cond_229

    .line 205
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    :cond_229
    return-void

    .line 81
    :cond_22a
    const-string v0, "adw_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 82
    new-instance v0, Lcom/anddoes/launcher/c/a;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    goto/16 :goto_62

    .line 83
    :cond_23f
    const-string v0, "lp_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 84
    new-instance v0, Lcom/anddoes/launcher/c/f;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    goto/16 :goto_62

    .line 85
    :cond_254
    const-string v0, "go_theme"

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_269

    .line 86
    new-instance v0, Lcom/anddoes/launcher/c/c;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    goto/16 :goto_62

    .line 88
    :cond_269
    new-instance v0, Lcom/anddoes/launcher/c/b;

    iget-object v1, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/anddoes/launcher/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    .line 89
    iget-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->e:Lcom/anddoes/launcher/c/i;

    invoke-virtual {v0}, Lcom/anddoes/launcher/c/i;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/ThemeDetailsActivity;->c:Ljava/lang/String;

    goto/16 :goto_62

    .line 98
    :cond_27c
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7c

    .line 112
    :cond_284
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_ae

    .line 126
    :cond_289
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_db

    .line 138
    :cond_28e
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 139
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10a

    .line 142
    :cond_298
    const v3, 0x7f060106

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_10a

    .line 152
    :cond_2a0
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_142

    .line 157
    :cond_2a5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 158
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v4, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 160
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v0, v4}, Lcom/anddoes/launcher/SimplePagedView;->addView(Landroid/view/View;)V

    goto/16 :goto_14c

    .line 171
    :cond_2c3
    iput-boolean v6, v0, Lcom/anddoes/launcher/SimplePagedView;->ae:Z

    .line 172
    invoke-virtual {v1, v7}, Lcom/anddoes/launcher/CircleIndicator;->setVisibility(I)V

    goto/16 :goto_169
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_2c

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 265
    :pswitch_8
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 266
    sget v1, Landroid/app/ProgressDialog;->STYLE_SPINNER:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 267
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 268
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Lcom/anddoes/launcher/ThemeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 269
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 270
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_7

    .line 262
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 212
    invoke-static {p0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v0

    const-string v1, "/Settings/ThemeDetails"

    invoke-virtual {v0, v1}, Lcom/anddoes/launcher/i;->b(Ljava/lang/String;)V

    .line 213
    return-void
.end method
