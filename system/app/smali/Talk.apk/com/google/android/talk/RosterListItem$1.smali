.class Lcom/google/android/talk/RosterListItem$1;
.super Ljava/lang/Object;
.source "RosterListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/RosterListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/RosterListItem;


# direct methods
.method constructor <init>(Lcom/google/android/talk/RosterListItem;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 114
    iget-object v0, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    #getter for: Lcom/google/android/talk/RosterListItem;->mVideoButtonClickedHandler:Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;
    invoke-static {v0}, Lcom/google/android/talk/RosterListItem;->access$000(Lcom/google/android/talk/RosterListItem;)Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/RosterListItem$1;->this$0:Lcom/google/android/talk/RosterListItem;

    invoke-interface {v0, v1}, Lcom/google/android/talk/IRosterListAdapter$VideoButtonClickHandler;->onVideoButtonClicked(Lcom/google/android/talk/RosterListItem;)V

    .line 116
    :cond_13
    return-void
.end method
