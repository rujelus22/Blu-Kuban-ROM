.class Lcom/android/email/activity/MessageFileView$LoadFilenameTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageFileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageFileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFilenameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/email/activity/MessageFileView;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageFileView;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter "contentUri"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    .line 106
    #getter for: Lcom/android/email/activity/MessageFileView;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageFileView;->access$000(Lcom/android/email/activity/MessageFileView;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 107
    iput-object p2, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->mContentUri:Landroid/net/Uri;

    .line 108
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .parameter "params"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    iget-object v1, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->mContentUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"

    .prologue
    .line 117
    if-nez p1, :cond_3

    .line 121
    :goto_2
    return-void

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageFileView$LoadFilenameTask;->this$0:Lcom/android/email/activity/MessageFileView;

    #calls: Lcom/android/email/activity/MessageFileView;->setTitle(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageFileView;->access$100(Lcom/android/email/activity/MessageFileView;Ljava/lang/String;)V

    goto :goto_2
.end method
