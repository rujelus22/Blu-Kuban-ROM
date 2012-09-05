.class Lcom/google/android/gsf/loginservice/TestActivity$1;
.super Ljava/lang/Object;
.source "TestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/TestActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/TestActivity;

.field final synthetic val$icicle:Landroid/os/Bundle;

.field final synthetic val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/TestActivity;Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;Landroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->this$0:Lcom/google/android/gsf/loginservice/TestActivity;

    iput-object p2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    iput-object p3, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$icicle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 113
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    if-eqz v2, :cond_f

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, res:Ljava/lang/Object;
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$runner:Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;

    iget-object v3, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->this$0:Lcom/google/android/gsf/loginservice/TestActivity;

    iget-object v4, p0, Lcom/google/android/gsf/loginservice/TestActivity$1;->val$icicle:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->runInBackground(Lcom/google/android/gsf/loginservice/TestActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_10

    move-result-object v0

    .line 121
    .end local v0           #res:Ljava/lang/Object;
    :cond_f
    :goto_f
    return-void

    .line 117
    .restart local v0       #res:Ljava/lang/Object;
    :catch_10
    move-exception v1

    .line 118
    .local v1, t:Ljava/lang/Throwable;
    goto :goto_f
.end method
