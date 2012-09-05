.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment$InteractionPickContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->configureFragments(Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;)V
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
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .registers 7
    .parameter "count"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mIsRecreatedInstance:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$100(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v1

    :goto_b
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v3, v3, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v4, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v3, v4, :cond_2c

    move v3, v1

    :goto_14
    or-int/2addr v0, v3

    if-eqz v0, :cond_29

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    if-lez p1, :cond_2e

    :goto_1b
    #setter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$002(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;Z)Z

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$2;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDoneButtonClickable:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->setDoneButtonClickable(Z)V

    .line 345
    :cond_29
    return-void

    :cond_2a
    move v0, v2

    .line 341
    goto :goto_b

    :cond_2c
    move v3, v2

    goto :goto_14

    :cond_2e
    move v1, v2

    .line 342
    goto :goto_1b
.end method
