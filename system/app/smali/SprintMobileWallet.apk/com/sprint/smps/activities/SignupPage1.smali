.class public Lcom/sprint/smps/activities/SignupPage1;
.super Lcom/sprint/smps/activities/SignupAbstract;
.source "SignupPage1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Signup Page 1"

.field private static parentActivity:Lcom/sprint/smps/activities/SignupPage1;

.field public static questionList:[Ljava/lang/String;

.field public static questionsResponse:Lcom/sprint/smps/service/ClientResponse;

.field private static response:Lcom/sprint/smps/service/ClientResponse;

.field public static user:Lcom/sprint/smps/pojo/User;


# instance fields
.field private buttons:Ljava/util/Hashtable;
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

.field private showData:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lcom/sprint/smps/activities/SignupPage1;->parentActivity:Lcom/sprint/smps/activities/SignupPage1;

    .line 33
    const-class v0, Lcom/sprint/smps/activities/SignupPage1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->TAG:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/sprint/smps/activities/SignupPage1;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 36
    sput-object v1, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 37
    sput-object v1, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    .line 38
    sput-object v1, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupAbstract;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->buttons:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Lcom/sprint/smps/activities/SignupPage1$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/SignupPage1$1;-><init>(Lcom/sprint/smps/activities/SignupPage1;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->showData:Ljava/lang/Runnable;

    .line 124
    sput-object p0, Lcom/sprint/smps/activities/SignupPage1;->parentActivity:Lcom/sprint/smps/activities/SignupPage1;

    .line 125
    const-string v0, "Signup Page 1"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/SignupPage1;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->parentActivity:Lcom/sprint/smps/activities/SignupPage1;

    return-object v0
.end method

.method static synthetic access$1()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->response:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    sput-object p0, Lcom/sprint/smps/activities/SignupPage1;->response:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/smps/activities/SignupPage1;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->showData:Ljava/lang/Runnable;

    return-object v0
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 333
    new-instance v0, Lcom/sprint/smps/activities/SignupPage1$3;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/SignupPage1$3;-><init>(Lcom/sprint/smps/activities/SignupPage1;)V

    .line 352
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 353
    return-void
.end method

.method private saveData()V
    .registers 7

    .prologue
    const v5, 0x7f080040

    const v4, 0x7f08003e

    const v3, 0x7f08003c

    .line 225
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "mdn"

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "firstName"

    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "lastName"

    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "email"

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "pin1"

    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "pin2"

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion1"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion1Index"

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityAnswer1"

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion2"

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion2Index"

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityAnswer2"

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion3"

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityQuestion3Index"

    invoke-virtual {p0, v5}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/sprint/smps/activities/SignupPage1;->entryValues:Ljava/util/Hashtable;

    const-string v2, "securityAnswer3"

    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .parameter "mdn"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "email"
    .parameter "pin1"
    .parameter "pin2"
    .parameter "question1"
    .parameter "answer1"
    .parameter "question2"
    .parameter "answer2"
    .parameter "question3"
    .parameter "answer3"

    .prologue
    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    .line 267
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_25

    .line 268
    :cond_10
    const-string v0, "Phone number must be 10 digits long."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 269
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    .line 328
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_18c

    const/4 v0, 0x1

    :goto_24
    return v0

    .line 271
    :cond_25
    invoke-static {p1}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 272
    const-string v0, "Phone number must contain only digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 273
    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 275
    :cond_3b
    if-eqz p2, :cond_43

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_53

    .line 276
    :cond_43
    const-string v0, "First name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 277
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 279
    :cond_53
    if-eqz p3, :cond_5b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6b

    .line 280
    :cond_5b
    const-string v0, "Last name must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 281
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 283
    :cond_6b
    if-eqz p4, :cond_73

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_83

    .line 284
    :cond_73
    const-string v0, "Email must be entered."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 285
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 287
    :cond_83
    invoke-virtual {p0, p4}, Lcom/sprint/smps/activities/SignupPage1;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 288
    const-string v0, "Email must be valid."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 289
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1f

    .line 291
    :cond_99
    if-eqz p5, :cond_a2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b3

    .line 292
    :cond_a2
    const-string v0, "PIN must be 4 or more digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 293
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 295
    :cond_b3
    if-eqz p6, :cond_bc

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_cd

    .line 296
    :cond_bc
    const-string v0, "PIN must be 4 or more digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 297
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 299
    :cond_cd
    invoke-static {p5}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 300
    const-string v0, "PIN must be all digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 301
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 303
    :cond_e4
    invoke-static {p6}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 304
    const-string v0, "PIN must be all digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 305
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 307
    :cond_fb
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 308
    const-string v0, "PIN numbers do not match, please re-enter."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 309
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 311
    :cond_112
    invoke-virtual {p7, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    invoke-virtual {p9, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_124

    invoke-virtual {p7, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    .line 312
    :cond_124
    const-string v0, "Cannot have duplicate questions."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 313
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 315
    :cond_135
    if-eqz p8, :cond_141

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_152

    .line 316
    :cond_141
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 317
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 319
    :cond_152
    if-eqz p10, :cond_15e

    invoke-virtual {p10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_16f

    .line 320
    :cond_15e
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 321
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 323
    :cond_16f
    if-eqz p12, :cond_17b

    invoke-virtual {p12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 324
    :cond_17b
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    .line 325
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1f

    .line 328
    :cond_18c
    const/4 v0, 0x0

    goto/16 :goto_24
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->finish()V

    .line 245
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage1;->saveData()V

    .line 246
    const-string v0, "Signup Page 1"

    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage1;->dismissActivity(Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 248
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 22
    .parameter "v"

    .prologue
    .line 180
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_142

    .line 221
    :cond_a
    :goto_a
    return-void

    .line 187
    :pswitch_b
    const v3, 0x7f080043

    :try_start_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, mdn:Ljava/lang/String;
    const v3, 0x7f080001

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, firstName:Ljava/lang/String;
    const v3, 0x7f080002

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    .local v6, lastName:Ljava/lang/String;
    const v3, 0x7f080037

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, email:Ljava/lang/String;
    const v3, 0x7f080019

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, pin1:Ljava/lang/String;
    const v3, 0x7f08001a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, pin2:Ljava/lang/String;
    const v3, 0x7f08003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 194
    .local v10, question1:Ljava/lang/String;
    const v3, 0x7f08003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 195
    .local v11, answer1:Ljava/lang/String;
    const v3, 0x7f08003e

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 196
    .local v12, question2:Ljava/lang/String;
    const v3, 0x7f08003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 197
    .local v13, answer2:Ljava/lang/String;
    const v3, 0x7f080040

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 198
    .local v14, question3:Ljava/lang/String;
    const v3, 0x7f080041

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, answer3:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 200
    invoke-direct/range {v3 .. v15}, Lcom/sprint/smps/activities/SignupPage1;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 202
    .local v17, valid:Z
    if-eqz v17, :cond_128

    .line 205
    invoke-direct/range {p0 .. p0}, Lcom/sprint/smps/activities/SignupPage1;->saveData()V

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/smps/activities/SignupPage1;->buttons:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1, v3}, Lcom/sprint/smps/activities/ActivityHelper;->getIntent(Landroid/app/Activity;ILjava/lang/Class;)Landroid/content/Intent;

    move-result-object v16

    .line 208
    .local v16, intent:Landroid/content/Intent;
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/SignupPage1;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 214
    .end local v4           #mdn:Ljava/lang/String;
    .end local v5           #firstName:Ljava/lang/String;
    .end local v6           #lastName:Ljava/lang/String;
    .end local v7           #email:Ljava/lang/String;
    .end local v8           #pin1:Ljava/lang/String;
    .end local v9           #pin2:Ljava/lang/String;
    .end local v10           #question1:Ljava/lang/String;
    .end local v11           #answer1:Ljava/lang/String;
    .end local v12           #question2:Ljava/lang/String;
    .end local v13           #answer2:Ljava/lang/String;
    .end local v14           #question3:Ljava/lang/String;
    .end local v15           #answer3:Ljava/lang/String;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #valid:Z
    :catch_125
    move-exception v3

    goto/16 :goto_a

    .line 212
    .restart local v4       #mdn:Ljava/lang/String;
    .restart local v5       #firstName:Ljava/lang/String;
    .restart local v6       #lastName:Ljava/lang/String;
    .restart local v7       #email:Ljava/lang/String;
    .restart local v8       #pin1:Ljava/lang/String;
    .restart local v9       #pin2:Ljava/lang/String;
    .restart local v10       #question1:Ljava/lang/String;
    .restart local v11       #answer1:Ljava/lang/String;
    .restart local v12       #question2:Ljava/lang/String;
    .restart local v13       #answer2:Ljava/lang/String;
    .restart local v14       #question3:Ljava/lang/String;
    .restart local v15       #answer3:Ljava/lang/String;
    .restart local v17       #valid:Z
    :cond_128
    const-string v3, "Signup"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/smps/activities/SignupPage1;->errorMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/smps/activities/SignupPage1;->viewToHaveFocus:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-static {v3, v0, v1, v2}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13f} :catch_125

    goto/16 :goto_a

    .line 181
    nop

    :pswitch_data_142
    .packed-switch 0x7f080044
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 133
    :try_start_1
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/SignupAbstract;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 135
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->requestWindowFeature(I)Z

    .line 136
    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->setContentView(I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_ea

    .line 138
    :try_start_11
    sget-object v3, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v4, "Signup Page 1"

    invoke-virtual {v3, v4}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_18} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_18} :catch_ea

    .line 140
    :goto_18
    :try_start_18
    invoke-virtual {p0}, Lcom/sprint/smps/activities/SignupPage1;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x7

    const v5, 0x7f03001c

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 141
    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f060020

    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/SignupPage1;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v3, 0x7f080043

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p0}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    new-instance v2, Lcom/sprint/smps/activities/SignupPage1$2;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/SignupPage1$2;-><init>(Lcom/sprint/smps/activities/SignupPage1;)V

    .line 151
    .local v2, textWatcher:Landroid/text/TextWatcher;
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    const v3, 0x7f080037

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    const v3, 0x7f080019

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    const v3, 0x7f08001a

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    const v3, 0x7f08003d

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 157
    const v3, 0x7f08003f

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 158
    const v3, 0x7f080041

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 160
    const v3, 0x7f080044

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 161
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v3, p0, Lcom/sprint/smps/activities/SignupPage1;->buttons:Ljava/util/Hashtable;

    const v4, 0x7f080044

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/sprint/smps/activities/SignupPage2;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->showDialog(I)V

    .line 165
    invoke-direct {p0}, Lcom/sprint/smps/activities/SignupPage1;->retrieveData()V

    .line 167
    const v3, 0x7f080001

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/SignupPage1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 169
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_e9} :catch_ea

    .line 176
    .end local v0           #button:Landroid/widget/Button;
    .end local v2           #textWatcher:Landroid/text/TextWatcher;
    :goto_e9
    return-void

    .line 171
    :catch_ea
    move-exception v1

    .line 174
    .local v1, t:Ljava/lang/Throwable;
    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    goto :goto_e9

    .line 138
    .end local v1           #t:Ljava/lang/Throwable;
    :catch_ef
    move-exception v3

    goto/16 :goto_18
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 359
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_16

    .line 361
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving customer data..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 363
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 365
    move-object v0, v1

    .line 368
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_16
    return-object v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 118
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 119
    invoke-super {p0}, Lcom/sprint/smps/activities/SignupAbstract;->onPause()V

    .line 120
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 253
    if-eqz p1, :cond_8

    .line 255
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 256
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 258
    :cond_8
    return-void
.end method
