.class Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;
.super Ljava/lang/Object;
.source "DefaultContactBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/DefaultContactBrowseListFragment;->setSearchListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

.field final synthetic val$findContacts:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/DefaultContactBrowseListFragment;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->this$0:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    iput-object p2, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->val$findContacts:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment$10;->val$findContacts:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1467
    const/4 v0, 0x0

    return v0
.end method
