.class Lcom/google/android/apps/googlevoice/CallLogObserver$1;
.super Landroid/os/AsyncTask;
.source "CallLogObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallLogObserver;->deleteContact(Lcom/google/android/apps/googlevoice/CallRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/apps/googlevoice/CallRecord;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallLogObserver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallLogObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogObserver$1;->this$0:Lcom/google/android/apps/googlevoice/CallLogObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 183
    check-cast p1, [Lcom/google/android/apps/googlevoice/CallRecord;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallLogObserver$1;->doInBackground([Lcom/google/android/apps/googlevoice/CallRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/apps/googlevoice/CallRecord;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 186
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallLogObserver$1;->this$0:Lcom/google/android/apps/googlevoice/CallLogObserver;

    #getter for: Lcom/google/android/apps/googlevoice/CallLogObserver;->callLogService:Lcom/google/android/apps/googlevoice/CallLogService;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/CallLogObserver;->access$000(Lcom/google/android/apps/googlevoice/CallLogObserver;)Lcom/google/android/apps/googlevoice/CallLogService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->deleteOrRenameBackendContact(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)Z

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
