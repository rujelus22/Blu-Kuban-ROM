.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->gotoMainActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1600(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 712
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$15;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->showDialog(I)V

    .line 713
    return-void
.end method
