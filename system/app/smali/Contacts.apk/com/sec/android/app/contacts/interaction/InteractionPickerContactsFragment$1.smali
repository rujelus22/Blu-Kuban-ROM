.class Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;
.super Ljava/lang/Object;
.source "InteractionPickerContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->mActionCode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_1a

    .line 208
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllVcard()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    .line 212
    :goto_19
    return-void

    .line 210
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->excuteSelectAllContacts()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;)V

    goto :goto_19
.end method
