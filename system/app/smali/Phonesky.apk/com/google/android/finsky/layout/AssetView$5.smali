.class Lcom/google/android/finsky/layout/AssetView$5;
.super Ljava/lang/Object;
.source "AssetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AssetView;->bindUninstallButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AssetView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AssetView;)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/finsky/layout/AssetView$5;->this$0:Lcom/google/android/finsky/layout/AssetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/finsky/layout/AssetView$5;->this$0:Lcom/google/android/finsky/layout/AssetView;

    #getter for: Lcom/google/android/finsky/layout/AssetView;->mHandler:Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AssetView;->access$000(Lcom/google/android/finsky/layout/AssetView;)Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/layout/AssetView$AssetActionHandler;->uninstall()V

    .line 132
    return-void
.end method
