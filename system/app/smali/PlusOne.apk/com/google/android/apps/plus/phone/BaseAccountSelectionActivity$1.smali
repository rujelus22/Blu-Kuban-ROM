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
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;)V
    .registers 11
    .parameter "accountName"

    .prologue
    .line 73
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity$1;->this$0:Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;

    new-instance v0, Lcom/google/android/apps/plus/content/EsAccount;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAccount;-><init>(Ljava/lang/String;JLjava/lang/String;ZI)V

    invoke-static {v8, v0}, Lcom/google/android/apps/plus/service/EsService;->addAccount(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #setter for: Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->mPendingRequestId:Ljava/lang/Integer;
    invoke-static {v7, v0}, Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;->access$102(Lcom/google/android/apps/plus/phone/BaseAccountSelectionActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 75
    return-void
.end method
