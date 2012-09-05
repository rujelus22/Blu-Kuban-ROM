.class Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;
.super Ljava/lang/Object;
.source "MPrintProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3a

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentPage:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$500(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v1

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTotalPage:I
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$400(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mCurrentValue:I
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$600(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v0

    if-eqz v0, :cond_3b

    .line 144
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->finish()V

    .line 153
    :cond_3a
    return-void

    .line 147
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$000(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintProgressActivity$3;->this$0:Lcom/sec/android/app/mobileprint/MPrintProgressActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->mTransactionID:I
    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintProgressActivity;->access$100(Lcom/sec/android/app/mobileprint/MPrintProgressActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->requestCancel(I)V

    goto :goto_35
.end method
