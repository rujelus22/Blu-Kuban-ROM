.class Lcom/cooliris/app/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/app/App;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/app/App;

.field final synthetic val$duration:I

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cooliris/app/App;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    iput-object p2, p0, Lcom/cooliris/app/App$1;->val$string:Ljava/lang/String;

    iput p3, p0, Lcom/cooliris/app/App$1;->val$duration:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    #getter for: Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/cooliris/app/App;->access$000(Lcom/cooliris/app/App;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 151
    :goto_8
    iget-object v1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    #getter for: Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/cooliris/app/App;->access$000(Lcom/cooliris/app/App;)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/app/App$1;->val$string:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    #getter for: Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/cooliris/app/App;->access$000(Lcom/cooliris/app/App;)Landroid/widget/Toast;

    move-result-object v1

    iget v2, p0, Lcom/cooliris/app/App$1;->val$duration:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 153
    iget-object v1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    #getter for: Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/cooliris/app/App;->access$000(Lcom/cooliris/app/App;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_27
    return-void

    .line 149
    :cond_28
    iget-object v1, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    iget-object v2, p0, Lcom/cooliris/app/App$1;->this$0:Lcom/cooliris/app/App;

    #getter for: Lcom/cooliris/app/App;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cooliris/app/App;->access$100(Lcom/cooliris/app/App;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/cooliris/app/App;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/cooliris/app/App;->access$002(Lcom/cooliris/app/App;Landroid/widget/Toast;)Landroid/widget/Toast;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    goto :goto_8

    .line 154
    :catch_3b
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
