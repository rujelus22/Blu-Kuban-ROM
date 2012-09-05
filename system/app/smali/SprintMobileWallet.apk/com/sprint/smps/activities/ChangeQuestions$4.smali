.class Lcom/sprint/smps/activities/ChangeQuestions$4;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangeQuestions;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ChangeQuestions;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ChangeQuestions;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$4;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    if-nez v0, :cond_e

    .line 275
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const-string v1, "en-us"

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    .line 276
    :cond_e
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionsResponse:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getQuestionList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->questionList:[Ljava/lang/String;

    .line 278
    :cond_1f
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 281
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$6()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    if-nez v0, :cond_39

    .line 282
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getUserSecurityQuestions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/smps/activities/ChangeQuestions;->access$7(Lcom/sprint/smps/service/ClientResponse;)V

    .line 283
    :cond_39
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 286
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$6()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getQuestionList()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    .line 287
    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_54

    :cond_4f
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sprint/smps/activities/ChangeQuestions;->selectedQ:[Ljava/lang/String;

    .line 288
    :cond_54
    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions$4;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v1, p0, Lcom/sprint/smps/activities/ChangeQuestions$4;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    #getter for: Lcom/sprint/smps/activities/ChangeQuestions;->showData:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/ChangeQuestions;->access$8(Lcom/sprint/smps/activities/ChangeQuestions;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ChangeQuestions;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method
