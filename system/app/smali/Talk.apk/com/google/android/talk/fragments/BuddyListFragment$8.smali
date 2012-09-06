.class Lcom/google/android/talk/fragments/BuddyListFragment$8;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->showSortChoicesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

.field final synthetic val$rg:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/widget/RadioGroup;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1407
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->val$rg:Landroid/widget/RadioGroup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 7
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v3, 0x0

    .line 1409
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1427
    :goto_9
    return-void

    .line 1414
    :cond_a
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_34

    .line 1415
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_STATUS_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    .line 1421
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->forceLoad()V

    .line 1422
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1423
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    #setter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0, v3}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$902(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1426
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->val$rg:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    goto :goto_9

    .line 1416
    :cond_34
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_46

    .line 1417
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->ALL_MINUS_HIDDEN:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ACTIVE_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    goto :goto_1b

    .line 1418
    :cond_46
    sget-object v0, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0}, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1b

    .line 1419
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$8;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    sget-object v1, Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;->QUICK_CONTACTS:Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;

    sget-object v2, Lcom/google/android/talk/loaders/RosterListLoader$SortMode;->RECENCY_ALPHABETICAL:Lcom/google/android/talk/loaders/RosterListLoader$SortMode;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->setFilterMode(Lcom/google/android/talk/loaders/RosterListLoader$FilterMode;Lcom/google/android/talk/loaders/RosterListLoader$SortMode;)V

    goto :goto_1b
.end method
