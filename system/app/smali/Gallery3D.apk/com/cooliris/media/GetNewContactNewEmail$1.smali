.class Lcom/cooliris/media/GetNewContactNewEmail$1;
.super Ljava/util/TimerTask;
.source "GetNewContactNewEmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GetNewContactNewEmail;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GetNewContactNewEmail;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GetNewContactNewEmail;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/cooliris/media/GetNewContactNewEmail$1;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/cooliris/media/GetNewContactNewEmail$1;->this$0:Lcom/cooliris/media/GetNewContactNewEmail;

    #getter for: Lcom/cooliris/media/GetNewContactNewEmail;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/cooliris/media/GetNewContactNewEmail;->access$000(Lcom/cooliris/media/GetNewContactNewEmail;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 108
    .local v0, m:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 109
    return-void
.end method
