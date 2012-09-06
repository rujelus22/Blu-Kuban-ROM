.class Lcom/google/android/apps/reader/app/FriendListActivity$FriendListObserver;
.super Landroid/database/DataSetObserver;
.source "FriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/FriendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/FriendListActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/app/FriendListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/android/apps/reader/app/FriendListActivity$FriendListObserver;->this$0:Lcom/google/android/apps/reader/app/FriendListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/app/FriendListActivity;Lcom/google/android/apps/reader/app/FriendListActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/FriendListActivity$FriendListObserver;-><init>(Lcom/google/android/apps/reader/app/FriendListActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/apps/reader/app/FriendListActivity$FriendListObserver;->this$0:Lcom/google/android/apps/reader/app/FriendListActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/FriendListActivity;->syncFragments()V

    .line 233
    return-void
.end method
