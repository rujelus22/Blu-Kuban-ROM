.class Lcom/sprint/smps/activities/ChangeQuestions$6;
.super Ljava/lang/Object;
.source "ChangeQuestions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ChangeQuestions;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/widget/TextView;)V
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
    iput-object p1, p0, Lcom/sprint/smps/activities/ChangeQuestions$6;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sprint/smps/activities/ChangeQuestions$6;->this$0:Lcom/sprint/smps/activities/ChangeQuestions;

    #getter for: Lcom/sprint/smps/activities/ChangeQuestions;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/ChangeQuestions;->access$9(Lcom/sprint/smps/activities/ChangeQuestions;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 351
    const-string v0, "Main Menu"

    invoke-static {v0}, Lcom/sprint/smps/activities/ChangeQuestions;->dismissActivities(Ljava/lang/String;)V

    .line 352
    :cond_d
    return-void
.end method
