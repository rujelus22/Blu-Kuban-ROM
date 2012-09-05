.class Lcom/vlingo/client/answers/AnswersActivity$2;
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

.field final synthetic val$answer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/answers/AnswersActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vlingo/client/answers/AnswersActivity$2;->this$0:Lcom/vlingo/client/answers/AnswersActivity;

    iput-object p2, p0, Lcom/vlingo/client/answers/AnswersActivity$2;->val$answer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 80
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity$2;->val$answer:Ljava/lang/String;

    invoke-static {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->genAnswer(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 81
    return-void
.end method
