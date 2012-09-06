.class public Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field public static a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

.field public static b:J

.field private static c:Landroid/widget/TextView;

.field private static d:Ljava/lang/String;

.field private static f:Z


# instance fields
.field private e:Z

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->f:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->e:Z

    new-instance v0, Lcom/estrongs/android/pop/view/bb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/bb;-><init>(Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->g:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/bc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/bc;-><init>(Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->h:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ftpserver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->e:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->b:J

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->setContentView(I)V

    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->c:Landroid/widget/TextView;

    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_89

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_67

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_67
    const-string v3, "ok_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_78

    const-string v3, "ok_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_78
    const-string v3, "cancel_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_89

    const-string v3, "cancel_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_89
    sput-object p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    new-array v2, v4, [I

    fill-array-data v2, :array_bc

    new-array v3, v4, [I

    fill-array-data v3, :array_c6

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->a([I[I)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->e:Z

    if-eqz v2, :cond_ba

    const v2, 0x7f09029b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f090148

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f090060

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_ba
    return-void

    nop

    :array_bc
    .array-data 0x4
        0x75t 0x0t 0x7t 0x7ft
        0x76t 0x0t 0x7t 0x7ft
        0x77t 0x0t 0x7t 0x7ft
    .end array-data

    :array_c6
    .array-data 0x4
        0x50t 0x0t 0x9t 0x7ft
        0x5ft 0x0t 0x9t 0x7ft
        0x85t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->f:Z

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->f:Z

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
