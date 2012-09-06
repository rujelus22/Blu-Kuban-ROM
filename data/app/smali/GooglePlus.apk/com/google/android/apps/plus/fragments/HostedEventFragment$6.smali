.class Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;
.super Ljava/lang/Object;
.source "HostedEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedEventFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

.field final synthetic val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 918
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;->this$0:Lcom/google/android/apps/plus/fragments/HostedEventFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedEventFragment$6;->val$audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    #calls: Lcom/google/android/apps/plus/fragments/HostedEventFragment;->doInviteMore(Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedEventFragment;->access$1400(Lcom/google/android/apps/plus/fragments/HostedEventFragment;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 923
    return-void
.end method
