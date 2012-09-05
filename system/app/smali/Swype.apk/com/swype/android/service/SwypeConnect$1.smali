.class Lcom/swype/android/service/SwypeConnect$1;
.super Ljava/lang/Object;
.source "SwypeConnect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/service/SwypeConnect;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/service/SwypeConnect;

.field final synthetic val$app:Lcom/swype/android/inputmethod/SwypeApplication;

.field final synthetic val$languagesBeingRemoved:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/swype/android/service/SwypeConnect;[Ljava/lang/String;Lcom/swype/android/inputmethod/SwypeApplication;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect$1;->this$0:Lcom/swype/android/service/SwypeConnect;

    iput-object p2, p0, Lcom/swype/android/service/SwypeConnect$1;->val$languagesBeingRemoved:[Ljava/lang/String;

    iput-object p3, p0, Lcom/swype/android/service/SwypeConnect$1;->val$app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 472
    .line 475
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect$1;->val$languagesBeingRemoved:[Ljava/lang/String;

    array-length v1, v0

    move v3, v2

    :goto_5
    if-ge v2, v1, :cond_15

    aget-object v4, v0, v2

    .line 476
    iget-object v5, p0, Lcom/swype/android/service/SwypeConnect$1;->this$0:Lcom/swype/android/service/SwypeConnect;

    #calls: Lcom/swype/android/service/SwypeConnect;->removeLang(Ljava/lang/String;)Z
    invoke-static {v5, v4}, Lcom/swype/android/service/SwypeConnect;->access$000(Lcom/swype/android/service/SwypeConnect;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v3, 0x1

    .line 475
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 481
    :cond_15
    new-instance v0, Lcom/swype/android/service/SwypeConnect$1$1;

    invoke-direct {v0, p0, v3}, Lcom/swype/android/service/SwypeConnect$1$1;-><init>(Lcom/swype/android/service/SwypeConnect$1;Z)V

    .line 493
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect$1;->val$app:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 494
    return-void
.end method
