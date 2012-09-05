.class Lcom/google/android/finsky/activities/ReviewDialog$2;
.super Ljava/lang/Object;
.source "ReviewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewDialog;

.field final synthetic val$docId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewDialog;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->val$docId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getListener()Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewDialog;->access$100(Lcom/google/android/finsky/activities/ReviewDialog;)Lcom/google/android/finsky/activities/ReviewDialog$Listener;

    move-result-object v0

    .line 155
    .local v0, l:Lcom/google/android/finsky/activities/ReviewDialog$Listener;
    if-eqz v0, :cond_1f

    .line 156
    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserRating()I
    invoke-static {v2}, Lcom/google/android/finsky/activities/ReviewDialog;->access$200(Lcom/google/android/finsky/activities/ReviewDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserTitle()Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/activities/ReviewDialog;->access$300(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialog$2;->this$0:Lcom/google/android/finsky/activities/ReviewDialog;

    #calls: Lcom/google/android/finsky/activities/ReviewDialog;->getUserComment()Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/finsky/activities/ReviewDialog;->access$400(Lcom/google/android/finsky/activities/ReviewDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/ReviewDialog$Listener;->onPositiveClick(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1f
    return-void
.end method
