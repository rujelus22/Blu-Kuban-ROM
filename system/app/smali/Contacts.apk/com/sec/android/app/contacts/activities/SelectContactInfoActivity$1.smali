.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_19

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    #calls: Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startEntityQuery()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->access$100(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    .line 246
    :cond_19
    return-void
.end method
