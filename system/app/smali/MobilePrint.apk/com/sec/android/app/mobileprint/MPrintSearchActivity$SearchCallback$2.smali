.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->responseSearchCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanning:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$2102(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;Z)Z

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$2;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mScanProgress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 790
    return-void
.end method
