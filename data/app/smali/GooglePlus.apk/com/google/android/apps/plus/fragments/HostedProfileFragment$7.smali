.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;
.super Ljava/lang/Object;
.source "HostedProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

.field final synthetic val$originalCircleIds:Ljava/util/ArrayList;

.field final synthetic val$selectedCircleIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->val$originalCircleIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->val$originalCircleIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$7;->val$selectedCircleIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setCircleMembership(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1690
    return-void
.end method
