.class Lcom/google/android/gm/WaitActivity$3;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/WaitActivity$AccountValidityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForAccounts(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;

.field final synthetic val$firstLaunch:Z


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$3;->this$0:Lcom/google/android/gm/WaitActivity;

    iput-boolean p2, p0, Lcom/google/android/gm/WaitActivity$3;->val$firstLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Z)V
    .registers 4
    .parameter "account"
    .parameter "valid"

    .prologue
    .line 266
    if-eqz p2, :cond_8

    .line 267
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$3;->this$0:Lcom/google/android/gm/WaitActivity;

    #calls: Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/gm/WaitActivity;->access$100(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V

    .line 274
    :cond_7
    :goto_7
    return-void

    .line 271
    :cond_8
    iget-boolean v0, p0, Lcom/google/android/gm/WaitActivity$3;->val$firstLaunch:Z

    if-eqz v0, :cond_7

    .line 272
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$3;->this$0:Lcom/google/android/gm/WaitActivity;

    #calls: Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V
    invoke-static {v0}, Lcom/google/android/gm/WaitActivity;->access$200(Lcom/google/android/gm/WaitActivity;)V

    goto :goto_7
.end method
