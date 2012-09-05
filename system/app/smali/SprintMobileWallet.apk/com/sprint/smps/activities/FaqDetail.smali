.class public Lcom/sprint/smps/activities/FaqDetail;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "FaqDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field public static faqs:Lcom/sprint/smps/pojo/QuestionAnswer; = null

.field public static final name:Ljava/lang/String; = "Faqs Detail"

.field private static parentActivity:Lcom/sprint/smps/activities/FaqDetail;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/sprint/smps/activities/FaqDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/FaqDetail;->TAG:Ljava/lang/String;

    .line 21
    sput-object v1, Lcom/sprint/smps/activities/FaqDetail;->parentActivity:Lcom/sprint/smps/activities/FaqDetail;

    .line 22
    sput-object v1, Lcom/sprint/smps/activities/FaqDetail;->faqs:Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 26
    sput-object p0, Lcom/sprint/smps/activities/FaqDetail;->parentActivity:Lcom/sprint/smps/activities/FaqDetail;

    .line 27
    const-string v0, "Faqs Detail"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 28
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x7

    .line 39
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 41
    invoke-virtual {p0, v2}, Lcom/sprint/smps/activities/FaqDetail;->requestWindowFeature(I)Z

    .line 42
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/FaqDetail;->setContentView(I)V

    .line 44
    sget-object v0, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v1, "Faqs Detail"

    invoke-virtual {v0, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/sprint/smps/activities/FaqDetail;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f03001c

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 47
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/FaqDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060032

    invoke-virtual {p0, v1}, Lcom/sprint/smps/activities/FaqDetail;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/FaqDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_8c

    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 51
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/sprint/smps/activities/ViewFAQs;->listPos:I

    if-le v0, v1, :cond_8c

    .line 53
    sget-object v0, Lcom/sprint/smps/activities/ViewFAQs;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getFAQQuestions()Ljava/util/List;

    move-result-object v0

    sget v1, Lcom/sprint/smps/activities/ViewFAQs;->listPos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/smps/pojo/QuestionAnswer;

    sput-object v0, Lcom/sprint/smps/activities/FaqDetail;->faqs:Lcom/sprint/smps/pojo/QuestionAnswer;

    .line 54
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/FaqDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sprint/smps/activities/FaqDetail;->faqs:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v1, v1, Lcom/sprint/smps/pojo/QuestionAnswer;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/sprint/smps/activities/FaqDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/sprint/smps/activities/FaqDetail;->faqs:Lcom/sprint/smps/pojo/QuestionAnswer;

    iget-object v1, v1, Lcom/sprint/smps/pojo/QuestionAnswer;->answer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_8c
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onDestroy()V

    .line 64
    const-string v0, "Faqs Detail"

    invoke-static {v0}, Lcom/sprint/smps/activities/FaqDetail;->dismissActivity(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 33
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 34
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 70
    if-eqz p1, :cond_8

    .line 72
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 73
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 75
    :cond_8
    return-void
.end method
