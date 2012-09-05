.class Lcom/sec/android/socialhub/parent/TitleActivity$2;
.super Ljava/lang/Object;
.source "TitleActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/parent/TitleActivity;->showDiscardPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

.field final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/TitleActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iput-boolean p2, p0, Lcom/sec/android/socialhub/parent/TitleActivity$2;->val$showToast:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/socialhub/parent/TitleActivity;->bIsShowingPopup:Z

    .line 589
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity$2;->this$0:Lcom/sec/android/socialhub/parent/TitleActivity;

    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity$2;->val$showToast:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/parent/TitleActivity;->onDiscard(Z)V

    .line 590
    return-void
.end method
