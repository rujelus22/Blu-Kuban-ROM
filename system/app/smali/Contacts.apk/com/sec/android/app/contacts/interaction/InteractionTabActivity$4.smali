.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;
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
    .line 410
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mDisplayTab:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$200(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 414
    const-string v0, "InteractionTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->LOGS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_36

    .line 416
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$300(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/InteractionRecentFragment;->sendNum()V

    .line 425
    :cond_35
    :goto_35
    return-void

    .line 417
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->FAVORITES:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_48

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mFavoritesFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$400(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->onPickerResult()V

    goto :goto_35

    .line 419
    :cond_48
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mTabState:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    sget-object v1, Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;->CONTACTS:Lcom/sec/android/app/contacts/interaction/InteractionActionBarAdapter$TabState;

    if-ne v0, v1, :cond_35

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_35

    .line 423
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$4;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->mContactsFragment:Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerContactsFragment;->onPickerResult()V

    goto :goto_35
.end method
