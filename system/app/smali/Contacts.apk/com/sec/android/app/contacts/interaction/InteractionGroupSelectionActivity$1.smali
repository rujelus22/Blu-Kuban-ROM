.class Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;
.super Ljava/lang/Object;
.source "InteractionGroupSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity$1;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;

    #getter for: Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->mInteractionGroupMemberPickerFragment:Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;->access$000(Lcom/sec/android/app/contacts/interaction/InteractionGroupSelectionActivity;)Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionGroupMemberPickerFragment;->onPickerResult()V

    .line 147
    return-void
.end method
