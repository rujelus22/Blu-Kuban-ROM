.class Lcom/android/email/activity/ContactPreviewPopup$1;
.super Landroid/os/AsyncTask;
.source "ContactPreviewPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ContactPreviewPopup;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ContactPreviewPopup;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ContactPreviewPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 265
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/ContactPreviewPopup$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 269
    const-wide/16 v0, 0xa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_7

    .line 272
    :goto_5
    const/4 v0, 0x0

    return-object v0

    .line 270
    :catch_7
    move-exception v0

    goto :goto_5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 265
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/ContactPreviewPopup$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x2

    .line 277
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/ContactPreviewPopup;->access$000(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLineCount()I

    move-result v0

    if-ne v0, v2, :cond_20

    .line 278
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/ContactPreviewPopup;->access$100(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/email/activity/ContactPreviewPopup;->access$000(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 280
    :cond_20
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/ContactPreviewPopup;->access$100(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getLineCount()I

    move-result v0

    if-ne v0, v2, :cond_3f

    .line 281
    iget-object v0, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnCompose:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/email/activity/ContactPreviewPopup;->access$000(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/ContactPreviewPopup$1;->this$0:Lcom/android/email/activity/ContactPreviewPopup;

    #getter for: Lcom/android/email/activity/ContactPreviewPopup;->btnContact:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/email/activity/ContactPreviewPopup;->access$100(Lcom/android/email/activity/ContactPreviewPopup;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHeight(I)V

    .line 283
    :cond_3f
    return-void
.end method
