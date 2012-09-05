.class Lcom/android/MtpApplication/MtpApplication$2;
.super Landroid/os/Handler;
.source "MtpApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/MtpApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/MtpApplication/MtpApplication$2;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 167
    const-string v0, "MTPAPP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleMessage, noti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/16 v0, 0xb

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2f

    .line 169
    const-string v0, "MTPAPP"

    const-string v1, "Going to finish the MTP application"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/MtpApplication/MtpApplication$2;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-virtual {v0}, Lcom/android/MtpApplication/MtpApplication;->finish()V

    .line 172
    :cond_2f
    return-void
.end method
