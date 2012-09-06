.class Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;
.super Ljava/lang/Object;
.source "EditAudienceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->onItemCheckedChanged(Lcom/google/android/apps/plus/views/CheckableListItemView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

.field final synthetic val$view:Lcom/google/android/apps/plus/views/CheckableListItemView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CheckableListItemView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;->val$view:Lcom/google/android/apps/plus/views/CheckableListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$4;->val$view:Lcom/google/android/apps/plus/views/CheckableListItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/CheckableListItemView;->setChecked(Z)V

    .line 591
    return-void
.end method
