.class Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;
.super Ljava/lang/Object;
.source "MainActivityTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    #getter for: Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->mRefreshButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->access$200(Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet$2;->this$0:Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/MainActivityTablet;->refreshList()V

    .line 127
    return-void
.end method
