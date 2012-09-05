.class Lcom/sprint/smps/activities/ChangeQuestions$3;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangeQuestions;->changeQuestionsAndAnswers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ChangeQuestions;

.field private final synthetic val$fPin:Ljava/lang/String;

.field private final synthetic val$fa1:Ljava/lang/String;

.field private final synthetic val$fa2:Ljava/lang/String;

.field private final synthetic val$fa3:Ljava/lang/String;

.field private final synthetic val$fq1:Ljava/lang/String;

.field private final synthetic val$fq2:Ljava/lang/String;

.field private final synthetic val$fq3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iput-object p2, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq1:Ljava/lang/String;

    iput-object p3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa1:Ljava/lang/String;

    iput-object p4, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq2:Ljava/lang/String;

    iput-object p5, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa2:Ljava/lang/String;

    iput-object p6, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq3:Ljava/lang/String;

    iput-object p7, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa3:Ljava/lang/String;

    iput-object p8, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fPin:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 229
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, mdn:Ljava/lang/String;
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 231
    .local v1, questionAnswers:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq1:Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/smps/activities/ChangeQuestions;->access$2(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq2:Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/smps/activities/ChangeQuestions;->access$2(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fq3:Ljava/lang/String;

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->getQuestionKeyFor(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sprint/smps/activities/ChangeQuestions;->access$2(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fa3:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    iget-object v3, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->val$fPin:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lcom/sprint/smps/service/SMPSService;->createSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-static {v2}, Lcom/sprint/smps/activities/ChangeQuestions;->access$4(Lcom/sprint/smps/service/ClientResponse;)V

    .line 236
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    if-eqz v2, :cond_56

    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$3()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 238
    :cond_56
    iget-object v2, p0, Lcom/sprint/smps/activities/ChangeQuestions$3;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    #setter for: Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z
    invoke-static {v2, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->access$5(Lcom/sprint/smps/activities/ChangeQuestions;Z)V

    .line 241
    :cond_5b
    invoke-static {}, Lcom/sprint/smps/activities/ChangeQuestions;->access$0()Lcom/sprint/smps/activities/ChangeQuestions;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/ChangeQuestions;->removeDialog(I)V

    .line 242
    return-void
.end method
