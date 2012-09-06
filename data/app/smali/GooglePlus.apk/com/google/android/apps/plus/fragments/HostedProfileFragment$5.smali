.class Lcom/google/android/apps/plus/fragments/HostedProfileFragment$5;
.super Landroid/database/DataSetObserver;
.source "HostedProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedProfileFragment$5;->this$0:Lcom/google/android/apps/plus/fragments/HostedProfileFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->mProfileAdapter:Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedProfileFragment;->access$600(Lcom/google/android/apps/plus/fragments/HostedProfileFragment;)Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ProfileStreamAdapter;->updateCircleList()V

    .line 511
    return-void
.end method
