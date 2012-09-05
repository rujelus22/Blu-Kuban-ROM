.class Lcom/sprint/smps/activities/ChangeQuestions$5;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangeQuestions;->onCreateDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 8
    .parameter "dialogInterface"

    .prologue
    const v5, 0x7f08002c

    .line 313
    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    #getter for: Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/ChangeQuestions;->access$9(Lcom/sprint/smps/activities/ChangeQuestions;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 315
    iget-object v1, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const-string v2, "PIN"

    const-string v3, "Question/answers were successfully changed."

    iget-object v4, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->access$10(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 325
    :goto_1e
    return-void

    .line 323
    :cond_1f
    iget-object v1, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    const-string v2, "PIN"

    const-string v3, "Unable to change the question/answers, PIN maybe invalid."

    iget-object v4, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions$5;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    invoke-virtual {v0, v5}, Lcom/sprint/smps/activities/ChangeQuestions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    #calls: Lcom/sprint/smps/activities/ChangeQuestions;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sprint/smps/activities/ChangeQuestions;->access$10(Lcom/sprint/smps/activities/ChangeQuestions;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_1e
.end method
