.class Lcom/sprint/w/installer/TermsAndConditions$LoadThread;
.super Landroid/os/AsyncTask;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/TermsAndConditions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadThread"
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
.field generalTC:Ljava/lang/String;

.field handler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

.field packTC:Ljava/lang/String;

.field final synthetic this$0:Lcom/sprint/w/installer/TermsAndConditions;


# direct methods
.method public constructor <init>(Lcom/sprint/w/installer/TermsAndConditions;Lcom/sprint/w/installer/TermsAndConditions$MyHandler;)V
    .registers 3
    .parameter
    .parameter "handler"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    .line 155
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 146
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 161
    :try_start_0
    const-string v0, "sprint"

    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadTermsAndConditions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->generalTC:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_16

    .line 167
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->this$0:Lcom/sprint/w/installer/TermsAndConditions;

    iget-object v0, v0, Lcom/sprint/w/installer/TermsAndConditions;->mPackId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sprint/w/installer/psi/PsiContentManager;->loadTermsAndConditions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->packTC:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_12} :catch_14

    .line 172
    :goto_12
    const/4 v0, 0x0

    return-object v0

    .line 168
    :catch_14
    move-exception v0

    goto :goto_12

    .line 162
    :catch_16
    move-exception v0

    goto :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->generalTC:Ljava/lang/String;

    iget-object v2, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->packTC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public setHandler(Lcom/sprint/w/installer/TermsAndConditions$MyHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->handler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    .line 182
    return-void
.end method
