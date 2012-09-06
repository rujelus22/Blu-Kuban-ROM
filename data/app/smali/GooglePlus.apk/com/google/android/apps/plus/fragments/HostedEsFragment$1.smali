.class Lcom/google/android/apps/plus/fragments/HostedEsFragment$1;
.super Landroid/os/Handler;
.source "HostedEsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedEsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEsFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/HostedEsFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/HostedEsFragment;->doShowEmptyViewProgressDelayed()V

    .line 54
    :cond_9
    return-void
.end method
