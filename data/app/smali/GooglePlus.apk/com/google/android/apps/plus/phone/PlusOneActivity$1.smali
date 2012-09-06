.class Lcom/google/android/apps/plus/phone/PlusOneActivity$1;
.super Ljava/lang/Object;
.source "PlusOneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/PlusOneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/PlusOneActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;

    #calls: Lcom/google/android/apps/plus/phone/PlusOneActivity;->recordExitedAction()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->access$000(Lcom/google/android/apps/plus/phone/PlusOneActivity;)V

    .line 134
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;

    #getter for: Lcom/google/android/apps/plus/phone/PlusOneActivity;->mInsert:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->access$100(Lcom/google/android/apps/plus/phone/PlusOneActivity;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, -0x1

    :goto_10
    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->setResult(I)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PlusOneActivity$1;->this$0:Lcom/google/android/apps/plus/phone/PlusOneActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/PlusOneActivity;->finish()V

    .line 136
    return-void

    .line 134
    :cond_19
    const/4 v0, 0x0

    goto :goto_10
.end method
