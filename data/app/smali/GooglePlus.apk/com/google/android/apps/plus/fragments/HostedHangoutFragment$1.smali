.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;
.super Ljava/lang/Object;
.source "HostedHangoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->toggleHangoutRing()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$500(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    .line 527
    return-void
.end method
