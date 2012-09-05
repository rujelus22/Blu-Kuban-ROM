.class Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity$1;
.super Ljava/lang/Object;
.source "CommonThreeButtonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity$1;->this$0:Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity$1;->this$0:Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/CommonThreeButtonActivity;->onMiddleButtonClicked()V

    .line 62
    return-void
.end method
