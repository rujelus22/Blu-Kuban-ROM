.class Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;
.super Landroid/content/BroadcastReceiver;
.source "NandFlashHeaderRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, action:Ljava/lang/String;
    const-string v1, "NandFlashHeaderRead"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v1, "com.android.samsungtest.DGS_UniqueNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    #calls: Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->stringReset()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$100(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V

    .line 160
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$200()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UniqueNumberKey"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    #calls: Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->parseUniqueNumber()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$300(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V

    .line 162
    const-string v1, "NandFlashHeaderRead"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print_originalString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$200()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "NandFlashHeaderRead"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "print_parsedString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$400()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead$2;->this$0:Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;

    #calls: Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->printUniqueNumber()V
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;->access$500(Lcom/sec/android/app/servicemodeapp/NandFlashHeaderRead;)V

    .line 167
    :cond_69
    return-void
.end method
