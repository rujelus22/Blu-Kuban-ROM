.class Lcom/swype/android/service/SwypeConnect$3;
.super Ljava/lang/Object;
.source "SwypeConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/service/SwypeConnect;->sendLanguageAvailableIntent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/service/SwypeConnect;


# direct methods
.method constructor <init>(Lcom/swype/android/service/SwypeConnect;)V
    .registers 2
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$3;->this$0:Lcom/swype/android/service/SwypeConnect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.inputmethod.SwypeSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$3;->this$0:Lcom/swype/android/service/SwypeConnect;

    iget-object v1, v1, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void
.end method
