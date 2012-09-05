.class public Lcom/sprint/smps/activities/SignupPage3;
.super Lcom/sprint/smps/activities/SignupAbstract;
.source "SignupPage3.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Signup Page 3"

.field private static parentActivity:Lcom/sprint/smps/activities/SignupPage3;


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private signedup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/sprint/smps/activities/SignupPage3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage3;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage3;->parentActivity:Lcom/sprint/smps/activities/SignupPage3;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupAbstract;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/smps/activities/SignupPage3;->signedup:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMsg:Ljava/lang/String;

    .line 43
    sput-object p0, Lcom/sprint/smps/activities/SignupPage3;->parentActivity:Lcom/sprint/smps/activities/SignupPage3;

    .line 44
    const-string v0, "Signup Page 3"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/SignupPage3;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Lcom/sprint/smps/activities/SignupPage3;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/sprint/smps/activities/SignupPage3;->parentActivity:Lcom/sprint/smps/activities/SignupPage3;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/SignupPage3;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/sprint/smps/activities/SignupPage3;->signedup:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/SignupPage3;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/smps/activities/SignupPage3;)Z
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/sprint/smps/activities/SignupPage3;->signedup:Z

    return v0
.end method

.method static synthetic access$5(Lcom/sprint/smps/activities/SignupPage3;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method private getPosition(Ljava/lang/String;)I
    .registers 7
    .parameter "state"

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, pos:I
    const v4, 0x7f080005

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 124
    .local v3, statesSpinner:Landroid/widget/Spinner;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    invoke-virtual {v3}, Landroid/widget/Spinner;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_12

    .line 134
    :goto_11
    return v1

    .line 126
    :cond_12
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 127
    .local v2, stateVal:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 129
    move v1, v0

    .line 130
    goto :goto_11

    .line 124
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 283
    const-string v1, ""

    .line 284
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v3, :cond_1a

    .line 286
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 287
    .local v2, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 298
    .end local v2           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    :goto_1a
    return-object v1

    .line 289
    .restart local v2       #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 290
    .local v0, kVal:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 292
    move-object v1, v0

    .line 293
    goto :goto_1a
.end method

.method private saveData()V
    .registers 5

    .prologue
    const v3, 0x7f080005

    .line 166
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "nameOnCard"

    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "street"

    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "city"

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "state"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "stateIndex"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v2, "zipCode"

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method private signup()V
    .registers 3

    .prologue
    .line 223
    new-instance v0, Lcom/sprint/smps/activities/SignupPage3$2;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/SignupPage3$2;-><init>(Lcom/sprint/smps/activities/SignupPage3;)V

    .line 278
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 279
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "nameOnCard"
    .parameter "street"
    .parameter "city"
    .parameter "zipCode"

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f080006

    .line 194
    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    .line 197
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_25

    .line 198
    :cond_10
    const-string v0, "Name on card must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 199
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    .line 218
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_7e

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 201
    :cond_25
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3d

    .line 202
    :cond_2d
    const-string v0, "Billing street name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 203
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 205
    :cond_3d
    if-eqz p3, :cond_45

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_55

    .line 206
    :cond_45
    const-string v0, "Billing city must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 207
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 209
    :cond_55
    if-eqz p4, :cond_5e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6b

    .line 210
    :cond_5e
    const-string v0, "Billing zip code must be 5 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 211
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 213
    :cond_6b
    invoke-static {p4}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 214
    const-string v0, "Zip code must contain only digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    .line 215
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 218
    :cond_7e
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method public finish()V
    .registers 3

    .prologue
    .line 176
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->finish()V

    .line 177
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage3;->saveData()V

    .line 178
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "====> SignupPage3.finsh()"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    const-string v0, "Signup Page 3"

    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage3;->dismissActivity(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    .line 139
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_6a

    .line 162
    :goto_a
    return-void

    .line 144
    :pswitch_b
    const v5, 0x7f08000e

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, nameOnCard:Ljava/lang/String;
    const v5, 0x7f080003

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, street:Ljava/lang/String;
    const v5, 0x7f080004

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, city:Ljava/lang/String;
    const v5, 0x7f080006

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, zipCode:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage3;->saveData()V

    .line 149
    invoke-direct {p0, v1, v2, v0, v4}, Lcom/sprint/smps/activities/SignupPage3;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 151
    .local v3, valid:Z
    if-eqz v3, :cond_60

    .line 153
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->showDialog(I)V

    .line 154
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage3;->signup()V

    goto :goto_a

    .line 158
    :cond_60
    const-string v5, "Signup"

    iget-object v6, p0, Lcom/sprint/smps/activities/SignupPage3;->errorMessage:Ljava/lang/String;

    iget-object v7, p0, Lcom/sprint/smps/activities/SignupPage3;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v5, v6, p0, v7}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_a

    .line 140
    :pswitch_data_6a
    .packed-switch 0x7f080047
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f08000e

    const v11, 0x7f080006

    const v10, 0x7f080005

    const v9, 0x7f080004

    const v8, 0x7f080003

    .line 50
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/SignupAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 52
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->requestWindowFeature(I)Z

    .line 53
    const v5, 0x7f030019

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->setContentView(I)V

    .line 55
    sget-object v5, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v6, "Signup Page 3"

    invoke-virtual {v5, v6}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/sprint/smps/activities/SignupPage3;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x7

    const v7, 0x7f03001c

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFeatureInt(II)V

    .line 58
    const v5, 0x7f08004a

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f060022

    invoke-virtual {p0, v6}, Lcom/sprint/smps/activities/SignupPage3;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v5, 0x7f08004b

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v4, Lcom/sprint/smps/activities/SignupPage3$1;

    invoke-direct {v4, p0}, Lcom/sprint/smps/activities/SignupPage3$1;-><init>(Lcom/sprint/smps/activities/SignupPage3;)V

    .line 66
    .local v4, textWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 67
    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 68
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 72
    .local v3, s:Landroid/widget/Spinner;
    const v5, 0x7f050001

    const v6, 0x7f03001b

    invoke-static {p0, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 73
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 74
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    if-eqz v5, :cond_18a

    .line 78
    const-string v2, ""

    .line 79
    .local v2, name:Ljava/lang/String;
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f2

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f2

    .line 81
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 82
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e9

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e9

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getLastName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    :cond_e9
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_f2
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getStreet1()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_117

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getStreet1()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_117

    .line 89
    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getStreet1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_117
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getCity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13c

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getCity()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13c

    .line 91
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_13c
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getState()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_165

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_165

    .line 93
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sprint/smps/activities/SignupPage3;->getPosition(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 94
    :cond_165
    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getZip()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18a

    sget-object v5, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v5}, Lcom/sprint/smps/pojo/User;->getZip()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18a

    .line 95
    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    invoke-virtual {v6}, Lcom/sprint/smps/pojo/User;->getZip()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .end local v2           #name:Ljava/lang/String;
    :cond_18a
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "nameOnCard"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    .line 98
    invoke-virtual {p0, v12}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "nameOnCard"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_1a7
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "street"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c4

    .line 100
    invoke-virtual {p0, v8}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "street"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_1c4
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "city"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e1

    .line 102
    invoke-virtual {p0, v9}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "city"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1e1
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "stateIndex"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_202

    .line 104
    invoke-virtual {p0, v10}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "stateIndex"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    :cond_202
    sget-object v5, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v6, "zipCode"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 106
    invoke-virtual {p0, v11}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    sget-object v6, Lcom/sprint/smps/activities/SignupPage3;->entryValues:Ljava/util/Hashtable;

    const-string v7, "zipCode"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_21f
    const v5, 0x7f080047

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage3;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 109
    .local v1, button:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 112
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1e

    .line 306
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 307
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Completing signup..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 311
    new-instance v2, Lcom/sprint/smps/activities/SignupPage3$3;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/SignupPage3$3;-><init>(Lcom/sprint/smps/activities/SignupPage3;)V

    .line 310
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 319
    move-object v0, v1

    .line 322
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 116
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 117
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->onPause()V

    .line 118
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 185
    if-eqz p1, :cond_8

    .line 187
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 188
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 190
    :cond_8
    return-void
.end method
