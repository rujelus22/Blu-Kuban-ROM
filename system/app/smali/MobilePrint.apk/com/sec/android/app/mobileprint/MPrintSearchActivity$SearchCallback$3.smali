.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->responseGetAttr(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iput p2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->val$errorCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 820
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 823
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    iget v1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$3;->val$errorCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showDialog(I)V

    .line 824
    return-void
.end method
