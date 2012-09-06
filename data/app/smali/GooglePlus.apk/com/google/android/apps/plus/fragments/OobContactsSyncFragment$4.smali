.class Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$4;
.super Ljava/lang/Object;
.source "OobContactsSyncFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->mContactsStatsSyncChoice:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;->access$300(Lcom/google/android/apps/plus/fragments/OobContactsSyncFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 117
    return-void
.end method
