.class public Lcom/sprint/smps/activities/PaymentAccountDetail;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "PaymentAccountDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Payment Account Detail"

.field private static parentActivity:Lcom/sprint/smps/activities/PaymentAccountDetail;

.field public static paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;


# instance fields
.field protected buttons:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private deletePaymentAccount:Ljava/lang/Runnable;

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-class v0, Lcom/sprint/smps/activities/PaymentAccountDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/PaymentAccountDetail;->TAG:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/sprint/smps/activities/PaymentAccountDetail;->parentActivity:Lcom/sprint/smps/activities/PaymentAccountDetail;

    .line 32
    sput-object v1, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->buttons:Ljava/util/Hashtable;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->successful:Z

    .line 35
    new-instance v0, Lcom/sprint/smps/activities/PaymentAccountDetail$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/PaymentAccountDetail$1;-><init>(Lcom/sprint/smps/activities/PaymentAccountDetail;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->deletePaymentAccount:Ljava/lang/Runnable;

    .line 56
    sput-object p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->parentActivity:Lcom/sprint/smps/activities/PaymentAccountDetail;

    .line 57
    const-string v0, "Payment Account Detail"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/PaymentAccountDetail;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/sprint/smps/activities/PaymentAccountDetail;->parentActivity:Lcom/sprint/smps/activities/PaymentAccountDetail;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/PaymentAccountDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/smps/activities/PaymentAccountDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/PaymentAccountDetail;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->successful:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/PaymentAccountDetail;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->successful:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/PaymentAccountDetail;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->deletePaymentAccount:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 143
    move-object v2, p2

    .line 144
    .local v2, message:Ljava/lang/String;
    move-object v0, p3

    .line 145
    .local v0, cntxt:Landroid/content/Context;
    move-object v1, p1

    .line 146
    .local v1, fTitle:Ljava/lang/String;
    new-instance v3, Lcom/sprint/smps/activities/PaymentAccountDetail$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail$2;-><init>(Lcom/sprint/smps/activities/PaymentAccountDetail;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v3, runnable:Ljava/lang/Runnable;
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/PaymentAccountDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method private showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 179
    const-string v1, "Cancel"

    new-instance v2, Lcom/sprint/smps/activities/PaymentAccountDetail$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/PaymentAccountDetail$3;-><init>(Lcom/sprint/smps/activities/PaymentAccountDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 183
    const-string v1, "Delete"

    new-instance v2, Lcom/sprint/smps/activities/PaymentAccountDetail$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/PaymentAccountDetail$4;-><init>(Lcom/sprint/smps/activities/PaymentAccountDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 192
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 120
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .line 139
    :cond_a
    :goto_a
    return-void

    .line 124
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 125
    .local v0, id:I
    iget-object v3, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 126
    .local v2, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v3, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    sget-object v3, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/PaymentAccount;->getCardAssociation()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Amazon"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 127
    const-class v2, Lcom/sprint/smps/activities/EditAmazonAccount;

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_3d
    invoke-static {p0, v0, v2}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_a

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/PaymentAccountDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 136
    .end local v0           #id:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :pswitch_47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Are your sure you want to delete this payment account?"

    invoke-direct {p0, v3, v4, p0}, Lcom/sprint/smps/activities/PaymentAccountDetail;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_a

    .line 121
    :pswitch_data_68
    .packed-switch 0x7f080032
        :pswitch_b
        :pswitch_47
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f080032

    const/4 v4, 0x7

    .line 63
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 65
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/PaymentAccountDetail;->requestWindowFeature(I)Z

    .line 66
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->setContentView(I)V

    .line 68
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Payment Account Detail"

    invoke-virtual {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sprint/smps/activities/PaymentAccountDetail;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 71
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/PaymentAccountDetail;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v2, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v2, :cond_ce

    sget-object v2, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getUserPayments()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_ce

    .line 76
    sget-object v2, Lcom/sprint/smps/activities/ViewPaymentOptions;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getUserPayments()Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/sprint/smps/activities/ViewPaymentOptions;->listPos:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/smps/pojo/PaymentAccount;

    sput-object v2, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    .line 77
    sget-object v2, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/PaymentAccount;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, nickName:Ljava/lang/String;
    if-eqz v1, :cond_71

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 79
    :cond_71
    const-string v1, "<no nickname>"

    .line 80
    :cond_73
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/sprint/smps/properties/Properties;->accountNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v2, 0x7f080030

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/PaymentAccount;->getMaskedAccountNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f080031

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryMonth()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/PaymentAccountDetail;->paymentAccount:Lcom/sprint/smps/pojo/PaymentAccount;

    invoke-virtual {v4}, Lcom/sprint/smps/pojo/PaymentAccount;->getExpiryYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v1           #nickName:Ljava/lang/String;
    :cond_ce
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/sprint/smps/activities/PaymentAccountDetail;->buttons:Ljava/util/Hashtable;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/sprint/smps/activities/EditPaymentAccount;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v2, 0x7f080033

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/PaymentAccountDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 91
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 94
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 198
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Deleting payment account..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 201
    move-object v0, v1

    .line 203
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 105
    const-string v0, "Payment Account Detail"

    invoke-static {v0}, Lcom/sprint/smps/activities/PaymentAccountDetail;->dismissActivity(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 99
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 100
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 111
    if-eqz p1, :cond_8

    .line 113
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 114
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 116
    :cond_8
    return-void
.end method
