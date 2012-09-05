.class Lcom/sprint/smps/activities/SignupPage1$3;
.super Ljava/lang/Object;
.source "SignupPage1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/SignupPage1;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/SignupPage1;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/SignupPage1;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/SignupPage1$3;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 337
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    if-nez v0, :cond_e

    .line 338
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v1, "en-us"

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 339
    :cond_e
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getQuestionList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    .line 340
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->questionList:[Ljava/lang/String;

    .line 341
    :cond_1f
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 343
    sget-object v0, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 344
    :cond_2c
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$0()Lcom/sprint/smps/activities/SignupPage1;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getSprintUserInfo(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/smps/activities/SignupPage1;->access$2(Lcom/sprint/smps/service/ClientResponse;)V

    .line 345
    :cond_3d
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 346
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getErrorNo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 347
    :cond_60
    invoke-static {}, Lcom/sprint/smps/activities/SignupPage1;->access$1()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getEndUser()Lcom/sprint/smps/pojo/User;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/SignupPage1;->user:Lcom/sprint/smps/pojo/User;

    .line 349
    :cond_6a
    iget-object v0, p0, Lcom/sprint/smps/activities/SignupPage1$3;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    iget-object v1, p0, Lcom/sprint/smps/activities/SignupPage1$3;->this$0:Lcom/sprint/smps/activities/SignupPage1;

    #getter for: Lcom/sprint/smps/activities/SignupPage1;->showData:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/SignupPage1;->access$3(Lcom/sprint/smps/activities/SignupPage1;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/SignupPage1;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method
