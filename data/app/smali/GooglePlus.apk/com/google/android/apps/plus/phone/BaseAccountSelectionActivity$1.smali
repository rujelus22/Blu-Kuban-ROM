.class Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;
.super Ljava/lang/Object;
.source "BaseAccountSelectionActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$AccountsAdder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;)V
    .registers 10
    .parameter "accountName"

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-static {v7, v0}, Lcom/google/android/apps/plus/service/EsService;->addAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #setter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mAddAccountPendingRequestId:Ljava/lang/Integer;
    invoke-static {v6, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$102(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->showDialog(I)V

    .line 83
    return-void
.end method
