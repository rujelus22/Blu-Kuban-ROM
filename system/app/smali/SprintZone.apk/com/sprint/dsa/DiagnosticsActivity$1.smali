.class Lcom/sprint/dsa/DiagnosticsActivity$1;
.super Landroid/os/AsyncTask;
.source "DiagnosticsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DiagnosticsActivity;->onStart()V
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
.field final synthetic this$0:Lcom/sprint/dsa/DiagnosticsActivity;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DiagnosticsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DiagnosticsActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsActivity;

    .line 71
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

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/DiagnosticsActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sprint/dsa/DiagnosticsActivity$1;->this$0:Lcom/sprint/dsa/DiagnosticsActivity;

    #getter for: Lcom/sprint/dsa/DiagnosticsActivity;->mDiagnostics:Lcom/sprint/dsa/diagnostics/Diagnostics;
    invoke-static {v0}, Lcom/sprint/dsa/DiagnosticsActivity;->access$0(Lcom/sprint/dsa/DiagnosticsActivity;)Lcom/sprint/dsa/diagnostics/Diagnostics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/Diagnostics;->runTests()V

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sprint/dsa/DiagnosticsActivity$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 78
    return-void
.end method
