.class public Lcom/sprint/smps/activities/ForgotPassword;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "ForgotPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Forgot Password"

.field private static parentActivity:Lcom/sprint/smps/activities/ForgotPassword;

.field private static qResponse:Lcom/sprint/smps/service/ClientResponse;


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private questionsSet:Z

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/sprint/smps/activities/ForgotPassword;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ForgotPassword;->TAG:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/sprint/smps/activities/ForgotPassword;->parentActivity:Lcom/sprint/smps/activities/ForgotPassword;

    .line 36
    sput-object v1, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/sprint/smps/activities/ForgotPassword;->successful:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/sprint/smps/activities/ForgotPassword;->questionsSet:Z

    .line 40
    sput-object p0, Lcom/sprint/smps/activities/ForgotPassword;->parentActivity:Lcom/sprint/smps/activities/ForgotPassword;

    .line 41
    const-string v0, "Forgot Password"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/ForgotPassword;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Lcom/sprint/smps/activities/ForgotPassword;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/sprint/smps/activities/ForgotPassword;->parentActivity:Lcom/sprint/smps/activities/ForgotPassword;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/ForgotPassword;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/sprint/smps/activities/ForgotPassword;->successful:Z

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/ForgotPassword;)Z
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->successful:Z

    return v0
.end method

.method static synthetic access$5(Lcom/sprint/smps/activities/ForgotPassword;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1, p2, p3}, Lcom/sprint/smps/activities/ForgotPassword;->showAlert(Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/smps/activities/ForgotPassword;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method private changePin()V
    .registers 3

    .prologue
    .line 204
    new-instance v0, Lcom/sprint/smps/activities/ForgotPassword$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ForgotPassword$2;-><init>(Lcom/sprint/smps/activities/ForgotPassword;)V

    .line 229
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method private getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 234
    const-string v1, ""

    .line 235
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v3, :cond_22

    sget-object v3, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 237
    sget-object v3, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 238
    .local v2, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_23

    .line 249
    .end local v2           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_22
    :goto_22
    return-object v1

    .line 240
    .restart local v2       #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, kVal:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 243
    move-object v1, v0

    .line 244
    goto :goto_22
.end method

.method private showAlert(Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 7
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 301
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/ForgotPassword$5;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/ForgotPassword$5;-><init>(Lcom/sprint/smps/activities/ForgotPassword;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 314
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "account"
    .parameter "securityAnswer"
    .parameter "pin1"
    .parameter "pin2"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x4

    const v4, 0x7f080024

    const v3, 0x7f08001a

    const v2, 0x7f080019

    .line 151
    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    .line 154
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    .line 155
    :cond_17
    const-string v0, "Account must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 156
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    .line 199
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_f6

    const/4 v0, 0x1

    :goto_28
    return v0

    .line 158
    :cond_29
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_3e

    .line 159
    const-string v0, "Account must be at least 10 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 160
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 162
    :cond_3e
    invoke-static {p1}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 163
    const-string v0, "Account must be numeric."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 164
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 166
    :cond_51
    if-eqz p2, :cond_59

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_69

    .line 167
    :cond_59
    const-string v0, "Security answer must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 168
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 170
    :cond_69
    if-eqz p3, :cond_71

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7e

    .line 171
    :cond_71
    const-string v0, "PIN must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 172
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 174
    :cond_7e
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_91

    .line 175
    const-string v0, "PIN must be at least 4 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 178
    :cond_91
    invoke-static {p3}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a4

    .line 179
    const-string v0, "PIN must be numeric."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto :goto_23

    .line 182
    :cond_a4
    if-eqz p4, :cond_ac

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ba

    .line 183
    :cond_ac
    const-string v0, "PIN must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_23

    .line 186
    :cond_ba
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_ce

    .line 187
    const-string v0, "PIN must be at least 4 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 188
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_23

    .line 190
    :cond_ce
    invoke-static {p4}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e2

    .line 191
    const-string v0, "PIN must be numeric."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 192
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_23

    .line 194
    :cond_e2
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 195
    const-string v0, "PIN 1 and PIN 2 must equal."

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_23

    .line 199
    :cond_f6
    const/4 v0, 0x0

    goto/16 :goto_28
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 99
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "====> ForgotPassword.finsh()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "Forgot Password"

    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage3;->dismissActivity(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 122
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_72

    .line 147
    :goto_b
    return-void

    .line 126
    :pswitch_c
    iget-boolean v5, p0, Lcom/sprint/smps/activities/ForgotPassword;->questionsSet:Z

    if-eqz v5, :cond_6e

    .line 128
    const v5, 0x7f080024

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, account:Ljava/lang/String;
    const v5, 0x7f080019

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, pin1:Ljava/lang/String;
    const v5, 0x7f08001a

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, pin2:Ljava/lang/String;
    const v5, 0x7f080026

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, securityAnswer:Ljava/lang/String;
    invoke-direct {p0, v0, v3, v1, v2}, Lcom/sprint/smps/activities/ForgotPassword;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 133
    .local v4, valid:Z
    if-eqz v4, :cond_64

    .line 135
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/ForgotPassword;->showDialog(I)V

    .line 136
    iput-boolean v6, p0, Lcom/sprint/smps/activities/ForgotPassword;->successful:Z

    .line 137
    invoke-direct {p0}, Lcom/sprint/smps/activities/ForgotPassword;->changePin()V

    goto :goto_b

    .line 140
    :cond_64
    const-string v5, "Forgot Password"

    iget-object v6, p0, Lcom/sprint/smps/activities/ForgotPassword;->errorMessage:Ljava/lang/String;

    iget-object v7, p0, Lcom/sprint/smps/activities/ForgotPassword;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v5, v6, p0, v7}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_b

    .line 143
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #pin1:Ljava/lang/String;
    .end local v2           #pin2:Ljava/lang/String;
    .end local v3           #securityAnswer:Ljava/lang/String;
    .end local v4           #valid:Z
    :cond_6e
    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/ForgotPassword;->showDialog(I)V

    goto :goto_b

    .line 123
    :pswitch_data_72
    .packed-switch 0x7f080027
        :pswitch_c
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f080026

    const v12, 0x7f080024

    const/4 v10, 0x7

    .line 47
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 49
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/ForgotPassword;->requestWindowFeature(I)Z

    .line 50
    const v8, 0x7f03000d

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->setContentView(I)V

    .line 52
    sget-object v8, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v9, "Forgot Password"

    invoke-virtual {v8, v9}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ForgotPassword;->getWindow()Landroid/view/Window;

    move-result-object v8

    const v9, 0x7f03001c

    invoke-virtual {v8, v10, v9}, Landroid/view/Window;->setFeatureInt(II)V

    .line 55
    const v8, 0x7f08004a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f060026

    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/ForgotPassword;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const v8, 0x7f08004b

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v5, Lcom/sprint/smps/activities/ForgotPassword$1;

    invoke-direct {v5, p0}, Lcom/sprint/smps/activities/ForgotPassword$1;-><init>(Lcom/sprint/smps/activities/ForgotPassword;)V

    .line 63
    .local v5, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 64
    const v8, 0x7f080019

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    const v8, 0x7f08001a

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    invoke-virtual {p0, v13}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, question:Ljava/lang/String;
    sget-object v8, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    if-nez v8, :cond_88

    sget-object v8, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-static {p0}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/sprint/smps/service/SMPSService;->getUserSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v8

    sput-object v8, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 70
    :cond_88
    sget-object v8, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v8, :cond_b2

    sget-object v8, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b2

    .line 72
    const-wide/16 v1, 0x0

    .line 73
    .local v1, lowerBound:D
    const-wide v6, 0x4007eb851eb851ecL

    .line 74
    .local v6, upperBound:D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double v10, v6, v1

    mul-double/2addr v8, v10

    add-double/2addr v8, v1

    double-to-int v4, v8

    .line 75
    .local v4, randNum:I
    sget-object v8, Lcom/sprint/smps/activities/ForgotPassword;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v8}, Lcom/sprint/smps/service/ClientResponse;->getQuestionList()[Ljava/lang/String;

    move-result-object v8

    aget-object v3, v8, v4

    .line 77
    .end local v1           #lowerBound:D
    .end local v4           #randNum:I
    .end local v6           #upperBound:D
    :cond_b2
    if-nez v3, :cond_b9

    .line 79
    const-string v3, "<Security Question not Set>"

    .line 80
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sprint/smps/activities/ForgotPassword;->questionsSet:Z

    .line 82
    :cond_b9
    const v8, 0x7f080025

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v8, 0x7f080027

    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0, v13}, Lcom/sprint/smps/activities/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->requestFocus()Z

    .line 91
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 93
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 94
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 254
    const/4 v0, 0x0

    .line 256
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1f

    .line 258
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 259
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, reseting password..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 261
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 263
    new-instance v2, Lcom/sprint/smps/activities/ForgotPassword$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/ForgotPassword$3;-><init>(Lcom/sprint/smps/activities/ForgotPassword;)V

    .line 262
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 280
    move-object v0, v1

    .line 296
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    :goto_1e
    return-object v0

    .line 282
    :cond_1f
    if-ne p1, v3, :cond_1e

    .line 284
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 285
    const-string v3, "Need security questions to reset."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 286
    const-string v3, "OK"

    new-instance v4, Lcom/sprint/smps/activities/ForgotPassword$4;

    invoke-direct {v4, p0}, Lcom/sprint/smps/activities/ForgotPassword$4;-><init>(Lcom/sprint/smps/activities/ForgotPassword;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 293
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    goto :goto_1e
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 117
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 118
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 107
    if-eqz p1, :cond_8

    .line 109
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 110
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 112
    :cond_8
    return-void
.end method
