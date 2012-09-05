.class Lcom/sec/android/app/kieswifi/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setClickable(Z)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivity;->mRefreshButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivity;)Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivity$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivity;->refreshList()V

    .line 158
    return-void
.end method
