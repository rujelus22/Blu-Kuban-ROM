.class Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;
.super Landroid/os/AsyncTask;
.source "DictionaryLookupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/DictionaryLookupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DictionaryLookupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;-><init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 4
    .parameter "params"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    iget-object v1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    #getter for: Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mQuery:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->access$200(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/apps/books/app/DictionaryLookupActivity;->generateHtml(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->access$300(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    #setter for: Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->access$402(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->this$0:Lcom/google/android/apps/books/app/DictionaryLookupActivity;

    #calls: Lcom/google/android/apps/books/app/DictionaryLookupActivity;->displayHtmlResult()V
    invoke-static {v0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->access$500(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V

    .line 122
    return-void
.end method
