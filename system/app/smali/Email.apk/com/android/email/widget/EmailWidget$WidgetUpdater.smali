.class Lcom/android/email/widget/EmailWidget$WidgetUpdater;
.super Landroid/os/AsyncTask;
.source "EmailWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/email/widget/WidgetView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCurrentView:Lcom/android/email/widget/WidgetView;

.field private final mSwitchToNextView:Z

.field final synthetic this$0:Lcom/android/email/widget/EmailWidget;


# direct methods
.method public constructor <init>(Lcom/android/email/widget/EmailWidget;Z)V
    .registers 4
    .parameter
    .parameter "switchToNextView"

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1109
    iget-object v0, p1, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    .line 1110
    iput-boolean p2, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mSwitchToNextView:Z

    .line 1111
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/email/widget/WidgetView;
    .registers 4
    .parameter "params"

    .prologue
    .line 1116
    const-string v0, "EmailWidget"

    const-string v1, "called switchView doInBackground 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-boolean v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mSwitchToNextView:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #getter for: Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/widget/EmailWidget;->access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetView;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1118
    :cond_19
    const-string v0, "EmailWidget"

    const-string v1, "called switchView doInBackground 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #getter for: Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/widget/EmailWidget;->access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetView;->getNext(Landroid/content/Context;)Lcom/android/email/widget/WidgetView;

    move-result-object v0

    .line 1122
    :goto_2c
    return-object v0

    .line 1121
    :cond_2d
    const-string v0, "EmailWidget"

    const-string v1, "called switchView doInBackground 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    goto :goto_2c
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1103
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/email/widget/WidgetView;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/widget/WidgetView;)V
    .registers 4
    .parameter "nextView"

    .prologue
    .line 1128
    if-eqz p1, :cond_e

    .line 1129
    const-string v0, "EmailWidget"

    const-string v1, "called switchView onPostExecute 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #calls: Lcom/android/email/widget/EmailWidget;->loadView(Lcom/android/email/widget/WidgetView;)V
    invoke-static {v0, p1}, Lcom/android/email/widget/EmailWidget;->access$100(Lcom/android/email/widget/EmailWidget;Lcom/android/email/widget/WidgetView;)V

    .line 1132
    :cond_e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1103
    check-cast p1, Lcom/android/email/widget/WidgetView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->onPostExecute(Lcom/android/email/widget/WidgetView;)V

    return-void
.end method
