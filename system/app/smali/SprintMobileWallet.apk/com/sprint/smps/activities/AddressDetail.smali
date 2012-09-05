.class public Lcom/sprint/smps/activities/AddressDetail;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "AddressDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static address:Lcom/sprint/smps/pojo/Address; = null

.field public static final name:Ljava/lang/String; = "Address Detail"

.field private static parentActivity:Lcom/sprint/smps/activities/AddressDetail;


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

.field private deleteAddress:Ljava/lang/Runnable;

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-class v0, Lcom/sprint/smps/activities/AddressDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/AddressDetail;->TAG:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/sprint/smps/activities/AddressDetail;->parentActivity:Lcom/sprint/smps/activities/AddressDetail;

    .line 33
    sput-object v1, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/AddressDetail;->buttons:Ljava/util/Hashtable;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/AddressDetail;->successful:Z

    .line 36
    new-instance v0, Lcom/sprint/smps/activities/AddressDetail$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/AddressDetail$1;-><init>(Lcom/sprint/smps/activities/AddressDetail;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/AddressDetail;->deleteAddress:Ljava/lang/Runnable;

    .line 57
    sput-object p0, Lcom/sprint/smps/activities/AddressDetail;->parentActivity:Lcom/sprint/smps/activities/AddressDetail;

    .line 58
    const-string v0, "Address Detail"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/AddressDetail;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprint/smps/activities/AddressDetail;->parentActivity:Lcom/sprint/smps/activities/AddressDetail;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/AddressDetail;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/smps/activities/AddressDetail;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/AddressDetail;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sprint/smps/activities/AddressDetail;->successful:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/AddressDetail;)Z
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sprint/smps/activities/AddressDetail;->successful:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/AddressDetail;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sprint/smps/activities/AddressDetail;->deleteAddress:Ljava/lang/Runnable;

    return-object v0
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 132
    move-object v2, p2

    .line 133
    .local v2, message:Ljava/lang/String;
    move-object v0, p3

    .line 134
    .local v0, cntxt:Landroid/content/Context;
    move-object v1, p1

    .line 135
    .local v1, fTitle:Ljava/lang/String;
    new-instance v3, Lcom/sprint/smps/activities/AddressDetail$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sprint/smps/activities/AddressDetail$2;-><init>(Lcom/sprint/smps/activities/AddressDetail;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v3, runnable:Ljava/lang/Runnable;
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddressDetail;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method private showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7
    .parameter "title"
    .parameter "msg"
    .parameter "context"

    .prologue
    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 167
    const-string v1, "Cancel"

    new-instance v2, Lcom/sprint/smps/activities/AddressDetail$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AddressDetail$3;-><init>(Lcom/sprint/smps/activities/AddressDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    const-string v1, "Delete"

    new-instance v2, Lcom/sprint/smps/activities/AddressDetail$4;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AddressDetail$4;-><init>(Lcom/sprint/smps/activities/AddressDetail;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 117
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_32

    .line 128
    :cond_a
    :goto_a
    return-void

    .line 121
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail;->buttons:Ljava/util/Hashtable;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddressDetail;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 125
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_29
    const-string v1, "Delete"

    const-string v2, "Are your sure you want to delete this address?"

    invoke-direct {p0, v1, v2, p0}, Lcom/sprint/smps/activities/AddressDetail;->showOkCancelAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_a

    .line 118
    nop

    :pswitch_data_32
    .packed-switch 0x7f080013
        :pswitch_b
        :pswitch_29
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f080013

    const/4 v3, 0x7

    .line 70
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 72
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/AddressDetail;->requestWindowFeature(I)Z

    .line 73
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->setContentView(I)V

    .line 75
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "Address Detail"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/sprint/smps/activities/AddressDetail;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f03001c

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 78
    const v1, 0x7f08004a

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f06002a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/AddressDetail;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v1, :cond_e1

    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e1

    .line 83
    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v1

    sget v2, Lcom/sprint/smps/activities/ViewAddressBook;->listPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/smps/pojo/Address;

    sput-object v1, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    .line 84
    const v1, 0x7f080010

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Address;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Address;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v1, 0x7f080011

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v2}, Lcom/sprint/smps/pojo/Address;->getStreet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Address;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Address;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sprint/smps/activities/AddressDetail;->address:Lcom/sprint/smps/pojo/Address;

    invoke-virtual {v3}, Lcom/sprint/smps/pojo/Address;->getZipcode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_e1
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/sprint/smps/activities/AddressDetail;->buttons:Ljava/util/Hashtable;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Lcom/sprint/smps/activities/EditAddress;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const v1, 0x7f080014

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/AddressDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 94
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 97
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Deleting address..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 198
    move-object v0, v1

    .line 200
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 102
    const-string v0, "Address Detail"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddressDetail;->dismissActivity(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 63
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 64
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 65
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 108
    if-eqz p1, :cond_8

    .line 110
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 111
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 113
    :cond_8
    return-void
.end method
