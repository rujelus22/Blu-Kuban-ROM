.class Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;
.super Ljava/lang/Object;
.source "PeopleSearchAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

.field final synthetic val$circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

.field final synthetic val$circleId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$circleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    iput-object p4, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    iget-object v0, v0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mListener:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$circleId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$circle:Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Data$Circle$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Circle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchListAdapterListener;->onCircleSelected(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Circle;)V

    .line 1035
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$4;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveMinorPublicExtendedDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 1037
    return-void
.end method
