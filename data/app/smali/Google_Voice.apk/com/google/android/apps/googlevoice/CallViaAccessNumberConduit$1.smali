.class Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;
.super Landroid/os/AsyncTask;
.source "CallViaAccessNumberConduit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->completeCall(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$Call;)V
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
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    check-cast p1, [Lcom/google/android/apps/googlevoice/CallRecord;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;->doInBackground([Lcom/google/android/apps/googlevoice/CallRecord;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/android/apps/googlevoice/CallRecord;)Ljava/lang/Void;
    .registers 4
    .parameter "params"

    .prologue
    .line 106
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit$1;->this$0:Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;

    #getter for: Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;->access$000(Lcom/google/android/apps/googlevoice/CallViaAccessNumberConduit;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->renameBackendNumToCallee(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)V

    .line 107
    const/4 v0, 0x0

    return-object v0
.end method
