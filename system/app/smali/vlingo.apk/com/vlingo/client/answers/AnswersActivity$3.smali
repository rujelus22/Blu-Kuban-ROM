.class Lcom/vlingo/client/answers/AnswersActivity$3;
.super Ljava/lang/Object;
.source "AnswersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/answers/AnswersActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/answers/AnswersActivity;

.field final synthetic val$question:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/answers/AnswersActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vlingo/client/answers/AnswersActivity$3;->this$0:Lcom/vlingo/client/answers/AnswersActivity;

    iput-object p2, p0, Lcom/vlingo/client/answers/AnswersActivity$3;->val$question:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vlingo/client/answers/AnswersActivity$3;->this$0:Lcom/vlingo/client/answers/AnswersActivity;

    iget-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity$3;->val$question:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vlingo/client/util/WebSearchUtil;->launchWebSearch(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    return-void
.end method
