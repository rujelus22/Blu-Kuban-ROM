.class Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$1;
.super Ljava/lang/Object;
.source "CommonTwoButtonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$1;->this$0:Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity$1;->this$0:Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/CommonTwoButtonActivity;->onLeftButtonClicked()V

    .line 219
    return-void
.end method
