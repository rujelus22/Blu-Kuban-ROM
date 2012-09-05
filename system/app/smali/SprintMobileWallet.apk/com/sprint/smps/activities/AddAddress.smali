.class public Lcom/sprint/smps/activities/AddAddress;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "AddAddress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Add Address"

.field private static parentActivity:Lcom/sprint/smps/activities/AddAddress;


# instance fields
.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sprint/smps/activities/AddAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/AddAddress;->TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/AddAddress;->parentActivity:Lcom/sprint/smps/activities/AddAddress;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/AddAddress;->successful:Z

    .line 39
    sput-object p0, Lcom/sprint/smps/activities/AddAddress;->parentActivity:Lcom/sprint/smps/activities/AddAddress;

    .line 40
    const-string v0, "Add Address"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/AddAddress;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sprint/smps/activities/AddAddress;->successful:Z

    return-void
.end method

.method static synthetic access$1()Lcom/sprint/smps/activities/AddAddress;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sprint/smps/activities/AddAddress;->parentActivity:Lcom/sprint/smps/activities/AddAddress;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/AddAddress;)Z
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sprint/smps/activities/AddAddress;->successful:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/AddAddress;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/AddAddress;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method private addAddress()V
    .registers 3

    .prologue
    .line 166
    new-instance v0, Lcom/sprint/smps/activities/AddAddress$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/AddAddress$2;-><init>(Lcom/sprint/smps/activities/AddAddress;)V

    .line 192
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 193
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 7
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 227
    new-instance v0, Lcom/sprint/smps/activities/AddAddress$4;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/AddAddress$4;-><init>(Lcom/sprint/smps/activities/AddAddress;)V

    .line 235
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    const-string v1, "Add"

    invoke-static {v1, p2, p3, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    .line 236
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "firstName"
    .parameter "lastName"
    .parameter "street"
    .parameter "city"
    .parameter "state"
    .parameter "zipcode"

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f080006

    .line 129
    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    .line 132
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 133
    :cond_10
    const-string v0, "First Name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 134
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    .line 161
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_aa

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 136
    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 137
    :cond_2d
    const-string v0, "Last Name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 138
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 140
    :cond_3d
    if-eqz p3, :cond_45

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    .line 141
    :cond_45
    const-string v0, "Street must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 142
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 144
    :cond_55
    if-eqz p4, :cond_5d

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6d

    .line 145
    :cond_5d
    const-string v0, "City must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 146
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 148
    :cond_6d
    if-eqz p6, :cond_75

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_82

    .line 149
    :cond_75
    const-string v0, "Zipcode must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 152
    :cond_82
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_96

    .line 153
    const-string v0, "Zipcode must be 5 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 154
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 156
    :cond_96
    invoke-static {p6}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 157
    const-string v0, "Zipcode must be numeric."

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 161
    :cond_aa
    const/4 v0, 0x0

    goto/16 :goto_24
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "v"

    .prologue
    .line 103
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    .line 125
    :goto_a
    return-void

    .line 107
    :pswitch_b
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, firstName:Ljava/lang/String;
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, lastName:Ljava/lang/String;
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, street:Ljava/lang/String;
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, city:Ljava/lang/String;
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, state:Ljava/lang/String;
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, zipcode:Ljava/lang/String;
    move-object v0, p0

    .line 113
    invoke-direct/range {v0 .. v6}, Lcom/sprint/smps/activities/AddAddress;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 114
    .local v7, valid:Z
    if-eqz v7, :cond_83

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/AddAddress;->showDialog(I)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/AddAddress;->successful:Z

    .line 118
    invoke-direct {p0}, Lcom/sprint/smps/activities/AddAddress;->addAddress()V

    goto :goto_a

    .line 121
    :cond_83
    const-string v0, "Add"

    iget-object v8, p0, Lcom/sprint/smps/activities/AddAddress;->errorMessage:Ljava/lang/String;

    iget-object v9, p0, Lcom/sprint/smps/activities/AddAddress;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v8, p0, v9}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_a

    .line 104
    :pswitch_data_8e
    .packed-switch 0x7f080007
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x7

    .line 46
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 48
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/AddAddress;->requestWindowFeature(I)Z

    .line 49
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->setContentView(I)V

    .line 51
    sget-object v4, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v5, "Add Address"

    invoke-virtual {v4, v5}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/sprint/smps/activities/AddAddress;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f03001c

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 54
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f06002b

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/AddAddress;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v3, Lcom/sprint/smps/activities/AddAddress$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/AddAddress$1;-><init>(Lcom/sprint/smps/activities/AddAddress;)V

    .line 62
    .local v3, textWatcher:Landroid/text/TextWatcher;
    const v4, 0x7f080001

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    const v4, 0x7f080002

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    const v4, 0x7f080003

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    const v4, 0x7f080004

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    const v4, 0x7f080006

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 69
    .local v2, s:Landroid/widget/Spinner;
    const v4, 0x7f050001

    const v5, 0x7f03001b

    invoke-static {p0, v4, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 70
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 73
    const v4, 0x7f080007

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/AddAddress;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 74
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 77
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 201
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 202
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, adding address..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 204
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 206
    new-instance v2, Lcom/sprint/smps/activities/AddAddress$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/AddAddress$3;-><init>(Lcom/sprint/smps/activities/AddAddress;)V

    .line 205
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    move-object v0, v1

    .line 221
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 88
    const-string v0, "Add Address"

    invoke-static {v0}, Lcom/sprint/smps/activities/AddAddress;->dismissActivity(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 81
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 82
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 83
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 94
    if-eqz p1, :cond_8

    .line 96
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 97
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 99
    :cond_8
    return-void
.end method
