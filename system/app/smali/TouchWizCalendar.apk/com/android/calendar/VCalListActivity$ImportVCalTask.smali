.class Lcom/android/calendar/VCalListActivity$ImportVCalTask;
.super Landroid/os/AsyncTask;
.source "VCalListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/VCalListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImportVCalTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private ret:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/VCalListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalListActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->this$0:Lcom/android/calendar/VCalListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->ret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 526
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "unused"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->this$0:Lcom/android/calendar/VCalListActivity;

    #calls: Lcom/android/calendar/VCalListActivity;->importCalendar()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/calendar/VCalListActivity;->access$300(Lcom/android/calendar/VCalListActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->ret:Ljava/lang/String;

    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 526
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "unused"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->this$0:Lcom/android/calendar/VCalListActivity;

    iget-object v1, p0, Lcom/android/calendar/VCalListActivity$ImportVCalTask;->ret:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    return-void
.end method
