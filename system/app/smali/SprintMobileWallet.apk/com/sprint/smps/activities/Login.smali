.class public Lcom/sprint/smps/activities/Login;
.super Landroid/app/ListActivity;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/smps/activities/Login$MerchantListAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static errorMsg:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Login"

.field private static parentActivity:Lcom/sprint/smps/activities/Login;


# instance fields
.field protected errorMessage:Ljava/lang/String;

.field loginButton:Landroid/widget/Button;

.field protected viewToHaveFocus:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 40
    const-class v0, Lcom/sprint/smps/activities/Login;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/Login;->TAG:Ljava/lang/String;

    .line 42
    sput-object v1, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    .line 43
    sput-object v1, Lcom/sprint/smps/activities/Login;->errorMsg:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->loginButton:Landroid/widget/Button;

    .line 45
    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    .line 132
    sput-object p0, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    .line 133
    const-string v0, "Login"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/Login;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/sprint/smps/activities/Login;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .registers 1
    .parameter

    .prologue
    .line 43
    sput-object p0, Lcom/sprint/smps/activities/Login;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method private login()V
    .registers 3

    .prologue
    .line 273
    new-instance v0, Lcom/sprint/smps/activities/Login$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/Login$2;-><init>(Lcom/sprint/smps/activities/Login;)V

    .line 314
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 315
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "account"
    .parameter "pin"

    .prologue
    const/4 v0, 0x0

    const v3, 0x7f080024

    const v2, 0x7f08002c

    .line 240
    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    .line 243
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 244
    :cond_13
    const-string v0, "Account must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 245
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    .line 268
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_90

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 247
    :cond_25
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3c

    .line 248
    :cond_2f
    const-string v0, "Account must be at least 10 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 251
    :cond_3c
    invoke-static {p1}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 252
    const-string v0, "Account number must contain only digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 253
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 255
    :cond_52
    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_67

    .line 256
    :cond_5a
    const-string v0, "PIN must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 259
    :cond_67
    if-eqz p2, :cond_70

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_7d

    .line 260
    :cond_70
    const-string v0, "PIN must be at least 4 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 261
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 263
    :cond_7d
    invoke-static {p2}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 264
    const-string v0, "PIN number must contain only digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    .line 265
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 268
    :cond_90
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 194
    const-string v0, "Welcome"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->doesBookMarkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/sprint/smps/activities/Welcome;->instance:Lcom/sprint/smps/activities/Welcome;

    if-eqz v0, :cond_12

    .line 195
    sget-object v0, Lcom/sprint/smps/activities/Welcome;->instance:Lcom/sprint/smps/activities/Welcome;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/Welcome;->setVisible(Z)V

    .line 197
    :cond_12
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 198
    const-string v0, "Login"

    invoke-static {v0}, Lcom/sprint/smps/activities/ActivityHelper;->dismissActivity(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 213
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_5a

    .line 236
    :cond_b
    :goto_b
    return-void

    .line 217
    :pswitch_c
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, account:Ljava/lang/String;
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, pin:Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/sprint/smps/activities/Login;->validateData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 221
    .local v3, valid:Z
    if-eqz v3, :cond_3d

    .line 223
    sput-boolean v5, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    .line 224
    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Login;->showDialog(I)V

    .line 225
    invoke-direct {p0}, Lcom/sprint/smps/activities/Login;->login()V

    goto :goto_b

    .line 228
    :cond_3d
    const-string v4, "Login"

    iget-object v5, p0, Lcom/sprint/smps/activities/Login;->errorMessage:Ljava/lang/String;

    iget-object v6, p0, Lcom/sprint/smps/activities/Login;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v4, v5, p0, v6}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_b

    .line 232
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #pin:Ljava/lang/String;
    .end local v3           #valid:Z
    :pswitch_47
    sget-object v4, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    const v5, 0x7f03000d

    const-class v6, Lcom/sprint/smps/activities/ForgotPassword;

    invoke-static {v4, v5, v6}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 233
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_b

    sget-object v4, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    invoke-virtual {v4, v1}, Lcom/sprint/smps/activities/Login;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 214
    :pswitch_data_5a
    .packed-switch 0x7f08002d
        :pswitch_c
        :pswitch_47
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 141
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 143
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->requestWindowFeature(I)Z

    .line 144
    const v4, 0x7f03000f

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->setContentView(I)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_ea

    .line 146
    :try_start_10
    sget-object v4, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v5, "Login"

    invoke-virtual {v4, v5}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_f0
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_17} :catch_ea

    .line 148
    :goto_17
    :try_start_17
    invoke-virtual {p0}, Lcom/sprint/smps/activities/Login;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x7

    const v6, 0x7f03001c

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFeatureInt(II)V

    .line 149
    const v4, 0x7f08004a

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f06001f

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v4, 0x7f08004b

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 154
    .local v1, merchantList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/sprint/smps/pojo/Merchant;>;"
    new-instance v4, Lcom/sprint/smps/pojo/Merchant;

    const v5, 0x7f06000d

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sprint/smps/pojo/Merchant;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v4, Lcom/sprint/smps/pojo/Merchant;

    const v5, 0x7f06000e

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sprint/smps/pojo/Merchant;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v4, Lcom/sprint/smps/pojo/Merchant;

    const v5, 0x7f06000f

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/Login;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sprint/smps/pojo/Merchant;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 157
    const v4, 0x7f08001f

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    new-instance v4, Lcom/sprint/smps/activities/Login$MerchantListAdapter;

    sget-object v5, Lcom/sprint/smps/activities/Login;->parentActivity:Lcom/sprint/smps/activities/Login;

    invoke-direct {v4, p0, v5, v1}, Lcom/sprint/smps/activities/Login$MerchantListAdapter;-><init>(Lcom/sprint/smps/activities/Login;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    new-instance v3, Lcom/sprint/smps/activities/Login$1;

    invoke-direct {v3, p0}, Lcom/sprint/smps/activities/Login$1;-><init>(Lcom/sprint/smps/activities/Login;)V

    .line 165
    .local v3, textWatcher:Landroid/text/TextWatcher;
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    const v4, 0x7f080024

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v4, 0x7f08002d

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v4, 0x7f08002e

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 173
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    const v4, 0x7f08002c

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 177
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_e9} :catch_ea

    .line 184
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #merchantList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/sprint/smps/pojo/Merchant;>;"
    .end local v3           #textWatcher:Landroid/text/TextWatcher;
    :goto_e9
    return-void

    .line 179
    :catch_ea
    move-exception v2

    .line 182
    .local v2, t:Ljava/lang/Throwable;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_e9

    .line 146
    .end local v2           #t:Ljava/lang/Throwable;
    :catch_f0
    move-exception v4

    goto/16 :goto_17
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 321
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 323
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 324
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, logging in..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 325
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 326
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 328
    new-instance v2, Lcom/sprint/smps/activities/Login$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/Login$3;-><init>(Lcom/sprint/smps/activities/Login;)V

    .line 327
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 339
    move-object v0, v1

    .line 342
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 188
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 189
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 190
    return-void
.end method

.method public onTimingOut(Ljava/lang/String;)V
    .registers 4
    .parameter "timeoutMsg"

    .prologue
    .line 347
    const v1, 0x7f08004b

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    .local v0, timeoutTextView:Landroid/widget/TextView;
    if-eqz v0, :cond_e

    .line 349
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_e
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 359
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 360
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 353
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 354
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 204
    if-eqz p1, :cond_8

    .line 206
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 207
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 209
    :cond_8
    return-void
.end method
