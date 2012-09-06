.class Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$2;
.super Ljava/lang/Object;
.source "OobContactsSyncFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$2;->this$0:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mArrowContactsSync:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->access$100(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    return-void

    .line 97
    :cond_d
    const/4 v0, 0x4

    goto :goto_9
.end method
