.class public Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# static fields
.field public static a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

.field public static b:J

.field private static c:Landroid/os/Handler;

.field private static d:Landroid/widget/TextView;

.field private static e:Ljava/lang/String;

.field private static g:Z


# instance fields
.field private f:Z

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->e:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->g:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->f:Z

    new-instance v0, Lcom/estrongs/android/pop/view/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/i;-><init>(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->h:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/pop/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/j;-><init>(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->i:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a()Landroid/widget/TextView;
    .registers 1

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4

    sput-object p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->e:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->c:Landroid/os/Handler;

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->g:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->c:Landroid/os/Handler;

    sget-object v1, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->f:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ftpserver"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->f:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->b:J

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->f:Z

    if-nez v0, :cond_55

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_2f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Open File Explorer"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_45
    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_10a

    :goto_48
    invoke-static {p0}, Lcom/estrongs/android/pop/d/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/a;

    move-result-object v0

    sget-wide v1, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/d/a;->b(J)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->finish()V

    :cond_54
    :goto_54
    return-void

    :cond_55
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->setTitle(I)V

    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->setContentView(I)V

    const v0, 0x7f070075

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->d:Landroid/widget/TextView;

    const v0, 0x7f070076

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_c5

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a3

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_a3
    const-string v3, "ok_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b4

    const-string v3, "ok_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_b4
    const-string v3, "cancel_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c5

    const-string v3, "cancel_label"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_c5
    sput-object p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    sget-object v2, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->e:Ljava/lang/String;

    if-eqz v2, :cond_d2

    sget-object v2, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->d:Landroid/widget/TextView;

    sget-object v3, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d2
    new-instance v2, Lcom/estrongs/android/pop/view/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/k;-><init>(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)V

    sput-object v2, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->c:Landroid/os/Handler;

    new-array v2, v4, [I

    fill-array-data v2, :array_10e

    new-array v3, v4, [I

    fill-array-data v3, :array_118

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a([I[I)V

    iget-boolean v2, p0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->f:Z

    if-eqz v2, :cond_54

    const v2, 0x7f09029b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f090148

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f090060

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    sget-object v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->d:Landroid/widget/TextView;

    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_54

    :catch_10a
    move-exception v0

    goto/16 :goto_48

    nop

    :array_10e
    .array-data 0x4
        0x75t 0x0t 0x7t 0x7ft
        0x76t 0x0t 0x7t 0x7ft
        0x77t 0x0t 0x7t 0x7ft
    .end array-data

    :array_118
    .array-data 0x4
        0x50t 0x0t 0x9t 0x7ft
        0x5ft 0x0t 0x9t 0x7ft
        0x85t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onPause()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->g:Z

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->g:Z

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    return-void
.end method
