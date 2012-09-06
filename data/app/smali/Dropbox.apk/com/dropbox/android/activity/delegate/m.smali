.class final enum Lcom/dropbox/android/activity/delegate/m;
.super Lcom/dropbox/android/activity/delegate/g;
.source "panda.py"


# instance fields
.field i:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/delegate/g;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/delegate/h;)V

    .line 117
    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/delegate/m;Ldbxyzptlk/e/m;)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/delegate/m;->a(Ldbxyzptlk/e/m;)I

    move-result v0

    return v0
.end method

.method private a(Ldbxyzptlk/e/m;)I
    .registers 4
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/android/activity/delegate/w;->a:[I

    invoke-virtual {p1}, Ldbxyzptlk/e/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 127
    const v0, 0x7f090095

    :goto_e
    return v0

    .line 122
    :pswitch_f
    const v0, 0x7f090094

    goto :goto_e

    .line 124
    :pswitch_13
    const v0, 0x7f090093

    goto :goto_e

    .line 120
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)Landroid/app/Dialog;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 238
    invoke-static {p2}, Lcom/dropbox/android/activity/delegate/x;->b(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    .line 239
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 240
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 241
    const v0, 0x7f090090

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 242
    const v0, 0x7f090091

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    const v0, 0x7f09000d

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030022

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Landroid/app/Dialog;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v7, -0x1

    .line 134
    move-object v4, p3

    check-cast v4, Landroid/app/AlertDialog;

    .line 136
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 137
    const v0, 0x7f0d00a2

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 138
    const-string v0, ""

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    if-eqz v0, :cond_27

    .line 140
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    .line 143
    :cond_27
    const v0, 0x7f0d00a3

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    .line 144
    invoke-virtual {v5, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    const v0, 0x7f0d00a4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 146
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    new-instance v0, Lcom/dropbox/android/activity/delegate/n;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/android/activity/delegate/n;-><init>(Lcom/dropbox/android/activity/delegate/m;Landroid/app/Activity;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    .line 194
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dropbox/android/activity/delegate/p;

    invoke-direct {v2, p0}, Lcom/dropbox/android/activity/delegate/p;-><init>(Lcom/dropbox/android/activity/delegate/m;)V

    invoke-virtual {v4, v7, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    new-instance v0, Lcom/dropbox/android/activity/delegate/q;

    invoke-direct {v0, p0, v4, v6}, Lcom/dropbox/android/activity/delegate/q;-><init>(Lcom/dropbox/android/activity/delegate/m;Landroid/app/AlertDialog;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    .line 231
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/m;->i:Landroid/text/TextWatcher;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 232
    return-void
.end method
