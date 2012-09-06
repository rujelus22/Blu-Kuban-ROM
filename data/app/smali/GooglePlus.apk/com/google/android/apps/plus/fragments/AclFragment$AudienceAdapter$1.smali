.class Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter$1;
.super Ljava/lang/Object;
.source "AclFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/AudienceData;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter$1;->this$0:Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;

    #getter for: Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->mViews:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;->access$000(Lcom/google/android/apps/plus/fragments/AclFragment$AudienceAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
