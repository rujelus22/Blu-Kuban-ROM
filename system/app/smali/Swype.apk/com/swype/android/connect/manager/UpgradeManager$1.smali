.class Lcom/swype/android/connect/manager/UpgradeManager$1;
.super Ljava/lang/Object;
.source "UpgradeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/manager/UpgradeManager;->sendStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/manager/UpgradeManager;

.field final synthetic val$s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/manager/UpgradeManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/swype/android/connect/manager/UpgradeManager$1;->this$0:Lcom/swype/android/connect/manager/UpgradeManager;

    iput-object p2, p0, Lcom/swype/android/connect/manager/UpgradeManager$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/swype/android/connect/manager/UpgradeManager$1;->this$0:Lcom/swype/android/connect/manager/UpgradeManager;

    iget-object v1, p0, Lcom/swype/android/connect/manager/UpgradeManager$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/UpgradeManager;->sendStatus(Ljava/lang/String;)V

    .line 426
    return-void
.end method
