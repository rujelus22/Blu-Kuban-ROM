.class Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$1;
.super Ljava/lang/Object;
.source "SuggestedPeopleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    iput p2, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment$1;->val$count:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/SuggestedPeopleFragment;->showToast(I)V

    .line 350
    return-void
.end method
