.class public Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "NewFeaturesFragmentDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 23
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 47
    .local v7, context:Landroid/support/v4/app/FragmentActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v17

    const-string v18, "account"

    invoke-virtual/range {v17 .. v18}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    .line 49
    .local v4, account:Lcom/google/android/apps/plus/content/EsAccount;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300ef

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 54
    .local v16, view:Landroid/view/View;
    const v17, 0x7f09006c

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 55
    .local v12, message:Landroid/widget/TextView;
    const v17, 0x7f080317

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, hyperlinkMessage:Ljava/lang/String;
    const v5, 0x7f080316

    .line 59
    .local v5, additionalSummaryResId:I
    new-instance v14, Landroid/text/SpannableString;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/google/android/apps/plus/util/AndroidUtils;->hasTelephony(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_10b

    const v17, 0x7f080314

    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f080316

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 65
    .local v14, s:Landroid/text/SpannableString;
    new-instance v17, Landroid/text/style/BulletSpan;

    const/16 v18, 0x10

    invoke-direct/range {v17 .. v18}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v18, 0x0

    invoke-virtual {v14}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f08046e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, helpUrlParam:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 69
    .local v10, link:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    .line 70
    .local v15, scheme:Ljava/lang/String;
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 71
    .local v13, pattern:Ljava/util/regex/Pattern;
    invoke-static {v14, v13, v15}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z

    .line 72
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 77
    const v17, 0x7f08043c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v11, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v7, v4}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog$1;-><init>(Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;Landroid/support/v4/app/FragmentActivity;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 102
    .local v11, listener:Landroid/content/DialogInterface$OnClickListener;
    const v17, 0x7f08043d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    const v17, 0x7f08043e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/NewFeaturesFragmentDialog;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 104
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    return-object v17

    .line 59
    .end local v8           #helpUrlParam:Ljava/lang/String;
    .end local v10           #link:Landroid/net/Uri;
    .end local v11           #listener:Landroid/content/DialogInterface$OnClickListener;
    .end local v13           #pattern:Ljava/util/regex/Pattern;
    .end local v14           #s:Landroid/text/SpannableString;
    .end local v15           #scheme:Ljava/lang/String;
    :cond_10b
    const v17, 0x7f080315

    goto/16 :goto_49
.end method
