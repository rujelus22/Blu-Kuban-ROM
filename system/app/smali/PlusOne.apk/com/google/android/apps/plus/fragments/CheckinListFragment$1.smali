.class Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;
.super Ljava/lang/Object;
.source "CheckinListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/CheckinListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CheckinListFragment$1;->this$0:Lcom/google/android/apps/plus/fragments/CheckinListFragment;

    #calls: Lcom/google/android/apps/plus/fragments/CheckinListFragment;->doSearch()V
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/CheckinListFragment;->access$600(Lcom/google/android/apps/plus/fragments/CheckinListFragment;)V

    .line 258
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 250
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 243
    return-void
.end method
