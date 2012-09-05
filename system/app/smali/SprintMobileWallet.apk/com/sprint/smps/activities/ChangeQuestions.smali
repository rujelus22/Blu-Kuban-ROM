.class public Lcom/sprint/smps/activities/ChangeQuestions;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "ChangeQuestions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Change Questions"

.field private static parentActivity:Lcom/sprint/smps/activities/ChangeQuestions;

.field private static qResponse:Lcom/sprint/smps/service/ClientResponse;

.field public static questionList:[Ljava/lang/String;

.field public static questionsResponse:Lcom/sprint/smps/service/ClientResponse;

.field private static response:Lcom/sprint/smps/service/ClientResponse;

.field public static selectedQ:[Ljava/lang/String;


# instance fields
.field private showData:Ljava/lang/Runnable;

.field private successful:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const-class v0, Lcom/sprint/smps/activities/ChangeQuestions;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->TAG:Ljava/lang/String;

    .line 38
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->parentActivity:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 40
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 41
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 42
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 43
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    .line 44
    sput-object v1, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z

    .line 45
    new-instance v0, Lcom/sprint/smps/activities/ChangeQuestions$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ChangeQuestions$1;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;)V

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->showData:Ljava/lang/Runnable;

    .line 83
    sput-object p0, Lcom/sprint/smps/activities/ChangeQuestions;->parentActivity:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 84
    const-string v0, "Change Questions"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method static synthetic access$0()Lcom/sprint/smps/activities/ChangeQuestions;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->parentActivity:Lcom/sprint/smps/activities/ChangeQuestions;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/smps/activities/ChangeQuestions;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/sprint/smps/activities/ChangeQuestions;->getIndexForSelection([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sprint/smps/activities/ChangeQuestions;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/sprint/smps/activities/ChangeQuestions;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->response:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 40
    sput-object p0, Lcom/sprint/smps/activities/ChangeQuestions;->response:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/smps/activities/ChangeQuestions;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z

    return-void
.end method

.method static synthetic access$6()Lcom/sprint/smps/service/ClientResponse;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sprint/smps/service/ClientResponse;)V
    .registers 1
    .parameter

    .prologue
    .line 41
    sput-object p0, Lcom/sprint/smps/activities/ChangeQuestions;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    return-void
.end method

.method static synthetic access$8(Lcom/sprint/smps/activities/ChangeQuestions;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->showData:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sprint/smps/activities/ChangeQuestions;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z

    return v0
.end method

.method private changeQuestionsAndAnswers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .parameter "pin"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"
    .parameter "a1"
    .parameter "a2"
    .parameter "a3"

    .prologue
    .line 221
    move-object v8, p1

    .line 222
    .local v8, fPin:Ljava/lang/String;
    move-object v2, p2

    .local v2, fq1:Ljava/lang/String;
    move-object v4, p3

    .local v4, fq2:Ljava/lang/String;
    move-object v6, p4

    .line 223
    .local v6, fq3:Ljava/lang/String;
    move-object v3, p5

    .local v3, fa1:Ljava/lang/String;
    move-object v5, p6

    .local v5, fa2:Ljava/lang/String;
    move-object/from16 v7, p7

    .line 225
    .local v7, fa3:Ljava/lang/String;
    new-instance v0, Lcom/sprint/smps/activities/ChangeQuestions$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/sprint/smps/activities/ChangeQuestions$3;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 245
    return-void
.end method

.method private getIndexForSelection([Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "array"
    .parameter "selectedQ"

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, selectedItem:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_7

    if-nez p2, :cond_8

    .line 132
    :cond_7
    :goto_7
    return v1

    .line 125
    :cond_8
    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 127
    move v1, v0

    .line 128
    goto :goto_7

    .line 123
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "value"

    .prologue
    .line 249
    const-string v1, ""

    .line 250
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v3, :cond_1a

    .line 252
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 253
    .local v2, keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 264
    .end local v2           #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1a
    :goto_1a
    return-object v1

    .line 255
    .restart local v2       #keySet:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, kVal:Ljava/lang/String;
    sget-object v3, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v3}, Lcom/sprint/smps/service/ClientResponse;->getQuestions()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 258
    move-object v1, v0

    .line 259
    goto :goto_1a
.end method

.method private retrieveData()V
    .registers 3

    .prologue
    .line 269
    new-instance v0, Lcom/sprint/smps/activities/ChangeQuestions$4;

    invoke-direct {v0, p0}, Lcom/sprint/smps/activities/ChangeQuestions$4;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;)V

    .line 296
    .local v0, runnable:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 297
    return-void
.end method

.method private showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 8
    .parameter "title"
    .parameter "msg"
    .parameter "context"
    .parameter "view"

    .prologue
    .line 343
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    const-string v1, "Change Security Questions"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    const-string v1, "OK"

    new-instance v2, Lcom/sprint/smps/activities/ChangeQuestions$6;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/ChangeQuestions$6;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 356
    return-void
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "pin"
    .parameter "q1"
    .parameter "q2"
    .parameter "q3"
    .parameter "ans1"
    .parameter "ans2"
    .parameter "ans3"

    .prologue
    const/4 v0, 0x0

    const v2, 0x7f08002c

    .line 188
    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    .line 191
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_23

    .line 192
    :cond_11
    const-string v0, "PIN must be 4 or more digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 193
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    .line 216
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_ad

    const/4 v0, 0x1

    :goto_22
    return v0

    .line 195
    :cond_23
    invoke-static {p1}, Lcom/sprint/smps/util/Utilities;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 196
    const-string v0, "PIN must be all digits."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 197
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1d

    .line 199
    :cond_36
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 200
    :cond_48
    const-string v0, "Cannot have duplicate questions."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 201
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1d

    .line 203
    :cond_58
    if-eqz p5, :cond_64

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_74

    .line 204
    :cond_64
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 205
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1d

    .line 207
    :cond_74
    if-eqz p6, :cond_80

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_90

    .line 208
    :cond_80
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 209
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    goto :goto_1d

    .line 211
    :cond_90
    if-eqz p7, :cond_9c

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 212
    :cond_9c
    const-string v0, "Must have an answer to the question."

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    .line 213
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    goto/16 :goto_1d

    .line 216
    :cond_ad
    const/4 v0, 0x0

    goto/16 :goto_22
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 171
    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->qResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 172
    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 173
    const-string v0, "Change Questions"

    invoke-static {v0}, Lcom/sprint/smps/activities/ChangeQuestions;->dismissActivity(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    .line 143
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_a2

    .line 166
    :goto_a
    return-void

    .line 147
    :pswitch_b
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, pin:Ljava/lang/String;
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, q1:Ljava/lang/String;
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, q2:Ljava/lang/String;
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, q3:Ljava/lang/String;
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 152
    .local v5, ans1:Ljava/lang/String;
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, ans2:Ljava/lang/String;
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, ans3:Ljava/lang/String;
    move-object v0, p0

    .line 154
    invoke-direct/range {v0 .. v7}, Lcom/sprint/smps/activities/ChangeQuestions;->validateData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 155
    .local v8, valid:Z
    if-eqz v8, :cond_96

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->showDialog(I)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z

    move-object v0, p0

    .line 159
    invoke-direct/range {v0 .. v7}, Lcom/sprint/smps/activities/ChangeQuestions;->changeQuestionsAndAnswers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 162
    :cond_96
    const-string v0, "Change Security Questions"

    iget-object v9, p0, Lcom/sprint/smps/activities/ChangeQuestions;->errorMessage:Ljava/lang/String;

    iget-object v10, p0, Lcom/sprint/smps/activities/ChangeQuestions;->viewToHaveFocus:Landroid/view/View;

    invoke-static {v0, v9, p0, v10}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_a

    .line 144
    nop

    :pswitch_data_a2
    .packed-switch 0x7f080042
        :pswitch_b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x7

    .line 90
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 92
    invoke-virtual {p0, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->requestWindowFeature(I)Z

    .line 93
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->setContentView(I)V

    .line 95
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Change Questions"

    invoke-virtual {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/sprint/smps/activities/ChangeQuestions;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03001c

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 98
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f060025

    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/ChangeQuestions;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    new-instance v1, Lcom/sprint/smps/activities/ChangeQuestions$2;

    invoke-direct {v1, p0}, Lcom/sprint/smps/activities/ChangeQuestions$2;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;)V

    .line 106
    .local v1, textWatcher:Landroid/text/TextWatcher;
    const v2, 0x7f08002c

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    const v2, 0x7f08003d

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 108
    const v2, 0x7f08003f

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 111
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/ChangeQuestions;->showDialog(I)V

    .line 115
    invoke-direct {p0}, Lcom/sprint/smps/activities/ChangeQuestions;->retrieveData()V

    .line 117
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 118
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1f

    .line 304
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, changing question/answers..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 307
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 309
    new-instance v2, Lcom/sprint/smps/activities/ChangeQuestions$5;

    invoke-direct {v2, p0}, Lcom/sprint/smps/activities/ChangeQuestions$5;-><init>(Lcom/sprint/smps/activities/ChangeQuestions;)V

    .line 308
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    move-object v0, v1

    .line 338
    .end local v1           #progDialog:Landroid/app/ProgressDialog;
    :cond_1e
    :goto_1e
    return-object v0

    .line 329
    :cond_1f
    if-ne p1, v3, :cond_1e

    .line 331
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v1       #progDialog:Landroid/app/ProgressDialog;
    const-string v2, "Please wait, retrieving security questions..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 333
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 334
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 335
    move-object v0, v1

    goto :goto_1e
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 137
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 138
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 139
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 179
    if-eqz p1, :cond_8

    .line 181
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 182
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 184
    :cond_8
    return-void
.end method
