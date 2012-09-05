.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;
.super Ljava/lang/Object;
.source "ConfirmAddDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #getter for: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->mIsReadyOnly:Z
    invoke-static {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->onSaveCompleted(Z)V
    invoke-static {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Z)V

    .line 188
    :goto_e
    return-void

    .line 186
    :cond_f
    iget-object v0, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$1;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    #calls: Lcom/android/contacts/activities/ConfirmAddDetailActivity;->doSaveAction()V
    invoke-static {v0}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto :goto_e
.end method
