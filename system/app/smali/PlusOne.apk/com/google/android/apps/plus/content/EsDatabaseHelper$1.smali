.class Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;
.super Landroid/os/AsyncTask;
.source "EsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsDatabaseHelper;->deleteDatabase()V
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
.field final synthetic this$0:Lcom/google/android/apps/plus/content/EsDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;->this$0:Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 315
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsDatabaseHelper$1;->this$0:Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    #calls: Lcom/google/android/apps/plus/content/EsDatabaseHelper;->doDeleteDatabase()V
    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->access$000(Lcom/google/android/apps/plus/content/EsDatabaseHelper;)V

    .line 320
    const/4 v0, 0x0

    return-object v0
.end method
