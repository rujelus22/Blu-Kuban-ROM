.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Lcom/android/contacts/list/DefaultContactBrowseListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_24

    .line 167
    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v1

    if-nez v1, :cond_25

    .line 170
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$FilterHeaderClickListener;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/DefaultContactBrowseListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a00ff

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/SimInitializingDialogFragment;->show(Landroid/app/FragmentManager;I)V

    .line 179
    :cond_24
    :goto_24
    return-void

    .line 176
    :cond_25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    const/16 v2, 0x2711

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_24
.end method