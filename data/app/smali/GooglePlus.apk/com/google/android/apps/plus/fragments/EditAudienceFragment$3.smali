.class Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;
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

.field final synthetic val$account:Lcom/google/android/apps/plus/content/EsAccount;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$item:Lcom/google/android/apps/plus/views/CircleListItemView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CircleListItemView;Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$item:Lcom/google/android/apps/plus/views/CircleListItemView;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/EditAudienceFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$item:Lcom/google/android/apps/plus/views/CircleListItemView;

    #calls: Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->addToSelectedCircles(Lcom/google/android/apps/plus/views/CircleListItemView;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/EditAudienceFragment;->access$700(Lcom/google/android/apps/plus/fragments/EditAudienceFragment;Lcom/google/android/apps/plus/views/CircleListItemView;)V

    .line 581
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EditAudienceFragment$3;->val$account:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveMinorPublicExtendedDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 583
    return-void
.end method
