.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->createViewsAndSingleFragments(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 326
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-lez p1, :cond_14

    const/4 v0, 0x1

    :goto_5
    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$002(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 328
    return-void

    .line 326
    :cond_14
    const/4 v0, 0x0

    goto :goto_5
.end method
