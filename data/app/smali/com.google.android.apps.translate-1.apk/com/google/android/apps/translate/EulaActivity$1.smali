.class Lcom/google/android/apps/translate/EulaActivity$1;
.super Ljava/lang/Object;
.source "EulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/EulaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/EulaActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/EulaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/android/apps/translate/EulaActivity$1;->this$0:Lcom/google/android/apps/translate/EulaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/translate/EulaActivity$1;->this$0:Lcom/google/android/apps/translate/EulaActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Profile;->setEulaAccepted(Landroid/content/Context;Z)V

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/translate/EulaActivity$1;->this$0:Lcom/google/android/apps/translate/EulaActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/EulaActivity;->setResult(I)V

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translate/EulaActivity$1;->this$0:Lcom/google/android/apps/translate/EulaActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/EulaActivity;->finish()V

    .line 39
    return-void
.end method
