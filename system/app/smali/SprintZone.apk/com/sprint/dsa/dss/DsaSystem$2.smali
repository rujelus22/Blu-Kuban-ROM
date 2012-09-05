.class Lcom/sprint/dsa/dss/DsaSystem$2;
.super Landroid/os/AsyncTask;
.source "DsaSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/dss/DsaSystem;->sysPropWrite(Lcom/sprint/dsa/dss/DsaClient;)V
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
.field final synthetic this$0:Lcom/sprint/dsa/dss/DsaSystem;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/dss/DsaSystem;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaSystem$2;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    .line 398
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/dss/DsaSystem$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem$2;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #calls: Lcom/sprint/dsa/dss/DsaSystem;->writeInBackgroundPost()V
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaSystem;->access$2(Lcom/sprint/dsa/dss/DsaSystem;)V

    .line 403
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/dss/DsaSystem$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaSystem$2;->this$0:Lcom/sprint/dsa/dss/DsaSystem;

    #calls: Lcom/sprint/dsa/dss/DsaSystem;->writeDone()V
    invoke-static {v0}, Lcom/sprint/dsa/dss/DsaSystem;->access$3(Lcom/sprint/dsa/dss/DsaSystem;)V

    .line 411
    return-void
.end method
