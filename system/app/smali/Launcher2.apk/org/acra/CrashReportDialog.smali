.class public Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    .line 51
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    .line 52
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    .line 53
    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x3

    const/high16 v8, 0x3f80

    const/16 v7, 0xa

    const/4 v6, -0x2

    const/4 v5, -0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening CrashReportDialog for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->a:Ljava/lang/String;

    if-nez v0, :cond_33

    .line 67
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 69
    :cond_33
    invoke-virtual {p0, v9}, Lorg/acra/CrashReportDialog;->requestWindowFeature(I)Z

    .line 71
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 73
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 74
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v3

    invoke-interface {v3}, Lorg/acra/a/a;->h()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v1, v2, v5, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;II)V

    .line 85
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->d()I

    move-result v1

    .line 86
    if-eqz v1, :cond_b2

    .line 87
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    .line 95
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 97
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->c:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    :cond_b2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->e()I

    move-result v1

    .line 103
    if-eqz v1, :cond_121

    .line 104
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v7, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    .line 111
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->setSingleLine()V

    .line 112
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 114
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v2

    invoke-interface {v2}, Lorg/acra/a/a;->p()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    .line 116
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/acra/CrashReportDialog;->b:Landroid/content/SharedPreferences;

    const-string v3, "acra.user.email"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lorg/acra/CrashReportDialog;->d:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    :cond_121
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v7, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 125
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 126
    const v3, 0x1040013

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 127
    new-instance v3, Lorg/acra/g;

    invoke-direct {v3, p0}, Lorg/acra/g;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 166
    const v3, 0x1040009

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 167
    new-instance v3, Lorg/acra/h;

    invoke-direct {v3, p0}, Lorg/acra/h;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->setContentView(Landroid/view/View;)V

    .line 181
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v0

    invoke-interface {v0}, Lorg/acra/a/a;->i()I

    move-result v0

    .line 182
    if-eqz v0, :cond_18b

    .line 183
    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->setTitle(I)V

    .line 186
    :cond_18b
    invoke-virtual {p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/a/a;

    move-result-object v1

    invoke-interface {v1}, Lorg/acra/a/a;->f()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 188
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 189
    return-void
.end method
