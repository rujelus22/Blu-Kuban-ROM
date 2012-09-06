.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;
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

.field final synthetic val$imageBytes:[B


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;->val$imageBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$8;->val$imageBytes:[B

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->setProfilePhoto([B)V

    .line 1715
    return-void
.end method
