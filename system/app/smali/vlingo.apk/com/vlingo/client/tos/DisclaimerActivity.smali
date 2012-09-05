.class public Lcom/vlingo/client/tos/DisclaimerActivity;
.super Landroid/app/Activity;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VLG_DisclaimerActivity"


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field m_ctx:Landroid/content/Context;

.field m_extraActivity:Ljava/lang/String;

.field m_handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 43
    iput-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->m_handler:Landroid/os/Handler;

    .line 44
    iput-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->m_ctx:Landroid/content/Context;

    .line 45
    iput-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->m_extraActivity:Ljava/lang/String;

    return-void
.end method

.method private switchToVlingoTOS()V
    .registers 8

    .prologue
    .line 176
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 177
    invoke-virtual {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->hideSamsungDisclaimer()V

    .line 178
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/vlingo/client/settings/Settings;->setSamsungDisclaimerAccepted(Z)V

    .line 181
    move-object v0, p0

    .line 183
    .local v0, ctx:Landroid/content/Context;
    const v4, 0x7f0f013a

    invoke-virtual {p0, v4}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, parentLayoutView:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :try_start_17
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09042e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/tos/TermsOfServiceView;

    sget-object v6, Lcom/vlingo/client/tos/TermsOfServiceView$Text;->TextTerms:Lcom/vlingo/client/tos/TermsOfServiceView$Text;

    invoke-direct {v5, v0, v6}, Lcom/vlingo/client/tos/TermsOfServiceView;-><init>(Landroid/content/Context;Lcom/vlingo/client/tos/TermsOfServiceView$Text;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090423

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/tos/DisclaimerActivity$3;

    invoke-direct {v6, p0}, Lcom/vlingo/client/tos/DisclaimerActivity$3;-><init>(Lcom/vlingo/client/tos/DisclaimerActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090425

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/vlingo/client/tos/DisclaimerActivity$2;

    invoke-direct {v6, p0}, Lcom/vlingo/client/tos/DisclaimerActivity$2;-><init>(Lcom/vlingo/client/tos/DisclaimerActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/vlingo/client/tos/DisclaimerActivity$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/tos/DisclaimerActivity$1;-><init>(Lcom/vlingo/client/tos/DisclaimerActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 257
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 258
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v4

    const-string v5, "tos-accept"

    invoke-virtual {v4, v5}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->helpPageViewed(Ljava/lang/String;)V
    :try_end_7c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_7c} :catch_7d

    .line 264
    .end local v1           #d:Landroid/app/AlertDialog;
    :goto_7c
    return-void

    .line 259
    :catch_7d
    move-exception v2

    .line 261
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_7c
.end method


# virtual methods
.method public getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 325
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideSamsungDisclaimer()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    .line 143
    const v3, 0x7f0f013d

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 144
    .local v2, tv_disclaimer_title:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    const v3, 0x7f0f0140

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    .local v1, tv_disclaimer_body:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const v3, 0x7f0f0142

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 150
    .local v0, btn_disclaimer_confirm:Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    .line 308
    :goto_8
    :pswitch_8
    return-void

    .line 282
    :pswitch_9
    invoke-direct {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->switchToVlingoTOS()V

    goto :goto_8

    .line 287
    :pswitch_d
    invoke-static {v2}, Lcom/vlingo/client/settings/Settings;->setTOSAccepted(Z)V

    .line 288
    invoke-virtual {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->finish()V

    .line 289
    iget-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->m_extraActivity:Ljava/lang/String;

    const-string v1, "HomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 295
    :cond_28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8

    .line 300
    :pswitch_33
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setTOSAccepted(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090429

    invoke-virtual {p0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    invoke-virtual {p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->finish()V

    goto :goto_8

    .line 279
    nop

    :pswitch_data_4e
    .packed-switch 0x7f0f0142
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_33
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 28
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    :try_start_3
    const-string v22, "VLG_DisclaimerActivity"

    const-string v23, "OnCreate()"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const v22, 0x7f030053

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->setContentView(I)V

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x400

    const/16 v24, 0x400

    invoke-virtual/range {v22 .. v24}, Landroid/view/Window;->setFlags(II)V

    .line 60
    const v22, 0x7f0f013d

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 61
    .local v20, tv_disclaimer_title:Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<h1>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</h1>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v22, 0x7f0f013e

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 64
    .local v18, tv_TOS_title:Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<h1>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "</h1>"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    const v22, 0x7f0f0140

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 68
    .local v19, tv_disclaimer_body:Landroid/widget/TextView;
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v22

    const-string v23, "ko-KR"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c9

    .line 69
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v22

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v23

    add-int/lit8 v23, v23, 0x53

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v24

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v25

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    :cond_c9
    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 77
    .local v11, html:Landroid/text/Spanned;
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v22, 0x7f0f0141

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 80
    .local v17, tv_TOS_body:Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 81
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v22, 0x7f0f0142

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 84
    .local v7, btn_disclaimer_confirm:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v22, 0x7f0f0144

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 87
    .local v5, btn_TOS_accept:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v22, 0x7f0f0145

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 90
    .local v6, btn_TOS_decline:Landroid/widget/Button;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v22, 0x7f0f0141

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 93
    .local v12, layout_vlingo_tos:Landroid/view/View;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 96
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v21

    .line 97
    .local v21, width:I
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 99
    .local v10, height:I
    const v22, 0x7f0f013f

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ScrollView;

    .line 100
    .local v14, scrollView01:Landroid/widget/ScrollView;
    add-int/lit16 v15, v10, -0xb2

    .line 101
    .local v15, scrollView01Height:I
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v14}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v13, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .local v13, params:Landroid/view/ViewGroup$LayoutParams;
    iput v15, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    move/from16 v0, v21

    iput v0, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v1, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 116
    .local v16, thisIntent:Landroid/content/Intent;
    const-string v22, "Activity"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/tos/DisclaimerActivity;->m_extraActivity:Ljava/lang/String;

    .line 117
    const-string v22, "Activity"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vlingo/client/tos/DisclaimerActivity;->m_extraActivity:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSamsungDisclaimerAccepted()Z

    move-result v22

    if-eqz v22, :cond_1ae

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/vlingo/client/tos/DisclaimerActivity;->switchToVlingoTOS()V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1ae} :catch_1af

    .line 138
    .end local v5           #btn_TOS_accept:Landroid/widget/Button;
    .end local v6           #btn_TOS_decline:Landroid/widget/Button;
    .end local v7           #btn_disclaimer_confirm:Landroid/widget/Button;
    .end local v8           #display:Landroid/view/Display;
    .end local v10           #height:I
    .end local v11           #html:Landroid/text/Spanned;
    .end local v12           #layout_vlingo_tos:Landroid/view/View;
    .end local v13           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v14           #scrollView01:Landroid/widget/ScrollView;
    .end local v15           #scrollView01Height:I
    .end local v16           #thisIntent:Landroid/content/Intent;
    .end local v17           #tv_TOS_body:Landroid/widget/TextView;
    .end local v18           #tv_TOS_title:Landroid/widget/TextView;
    .end local v19           #tv_disclaimer_body:Landroid/widget/TextView;
    .end local v20           #tv_disclaimer_title:Landroid/widget/TextView;
    .end local v21           #width:I
    :cond_1ae
    :goto_1ae
    return-void

    .line 131
    :catch_1af
    move-exception v9

    .line 133
    .local v9, e:Ljava/lang/Exception;
    const-string v22, "VLG_DisclaimerActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception caught = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ae
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 269
    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    .line 270
    const/4 v0, 0x1

    .line 273
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public showVlingoTOS()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 157
    const v3, 0x7f0f013e

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, tv_disclaimer_title:Landroid/widget/TextView;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    const v3, 0x7f0f0141

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 161
    .local v1, tv_TOS_body:Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    const v3, 0x7f0f0143

    invoke-virtual {p0, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, layout_tos_buttons:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public startCarActivity()V
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity;->m_extraActivity:Ljava/lang/String;

    const-string v1, "HomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 314
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    :goto_14
    return-void

    .line 318
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14
.end method
