.class Lcom/google/android/apps/unveil/BaseApplication$1;
.super Landroid/os/AsyncTask;
.source "BaseApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/BaseApplication;->onCreate()V
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
.field final synthetic this$0:Lcom/google/android/apps/unveil/BaseApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/BaseApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication$1;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 143
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/BaseApplication$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method
