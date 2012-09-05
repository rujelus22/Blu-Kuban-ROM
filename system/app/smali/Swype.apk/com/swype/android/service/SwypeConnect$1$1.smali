.class Lcom/swype/android/service/SwypeConnect$1$1;
.super Ljava/lang/Object;
.source "SwypeConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/service/SwypeConnect$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/swype/android/service/SwypeConnect$1;

.field final synthetic val$changeLocale:Z


# direct methods
.method constructor <init>(Lcom/swype/android/service/SwypeConnect$1;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$1$1;->this$1:Lcom/swype/android/service/SwypeConnect$1;

    iput-boolean p2, p0, Lcom/swype/android/service/SwypeConnect$1$1;->val$changeLocale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 484
    iget-boolean v1, p0, Lcom/swype/android/service/SwypeConnect$1$1;->val$changeLocale:Z

    if-eqz v1, :cond_c

    .line 485
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$1$1;->this$1:Lcom/swype/android/service/SwypeConnect$1;

    iget-object v1, v1, Lcom/swype/android/service/SwypeConnect$1;->val$app:Lcom/swype/android/inputmethod/SwypeApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange(Z)V

    .line 488
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.Refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$1$1;->this$1:Lcom/swype/android/service/SwypeConnect$1;

    iget-object v1, v1, Lcom/swype/android/service/SwypeConnect$1;->this$0:Lcom/swype/android/service/SwypeConnect;

    iget-object v1, v1, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    return-void
.end method
