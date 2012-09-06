.class Lcom/google/android/apps/plus/fragments/EditEventFragment$1;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EditEventFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditEventFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/EditEventFragment;

    #calls: Lcom/google/android/apps/plus/fragments/EditEventFragment;->onAudienceChanged()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/EditEventFragment;->access$000(Lcom/google/android/apps/plus/fragments/EditEventFragment;)V

    .line 344
    return-void
.end method
