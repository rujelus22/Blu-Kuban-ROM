.class Lcom/google/android/apps/plus/phone/SignOnManager$1$1;
.super Ljava/lang/Object;
.source "SignOnManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/SignOnManager$1;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/phone/SignOnManager$1;

.field final synthetic val$pendingInstantUploadCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SignOnManager$1;Ljava/lang/Integer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;->this$1:Lcom/google/android/apps/plus/phone/SignOnManager$1;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;->val$pendingInstantUploadCount:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;->this$1:Lcom/google/android/apps/plus/phone/SignOnManager$1;

    iget-object v0, v0, Lcom/google/android/apps/plus/phone/SignOnManager$1;->this$0:Lcom/google/android/apps/plus/phone/SignOnManager;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/SignOnManager$1$1;->val$pendingInstantUploadCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/SignOnManager;->continueSignOut(I)V

    .line 235
    return-void
.end method
