.class Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "clickView"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    #calls: Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->dispatchSendMessageEvent()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->access$200(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;)V

    .line 133
    return-void
.end method
