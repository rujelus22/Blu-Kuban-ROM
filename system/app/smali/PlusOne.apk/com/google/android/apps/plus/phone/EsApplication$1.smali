.class Lcom/google/android/apps/plus/phone/EsApplication$1;
.super Landroid/os/AsyncTask;
.source "EsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/EsApplication;->onCreate()V
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
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/EsApplication;

.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/EsApplication;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/EsApplication$1;->this$0:Lcom/google/android/apps/plus/phone/EsApplication;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/EsApplication$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/EsApplication$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter "params"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsApplication$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/InstantUpload;->startMonitoring(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/EsApplication$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/plus/phone/HangoutRingtoneUtils;->registerHangoutRingTone(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
