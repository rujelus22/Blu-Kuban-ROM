.class final Lcom/google/android/talk/BuddyInfo$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BuddyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/BuddyInfo;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    .line 124
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 130
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_16

    .line 131
    const-string v0, "talk"

    const-string v1, "[BuddyInfo] QueryHandler: empty cursor, bail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyInfo;->finish()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_31

    .line 142
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 144
    :goto_15
    return-void

    .line 135
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyInfo;->isFinishing()Z
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_31

    move-result v0

    if-eqz v0, :cond_22

    .line 142
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_15

    .line 139
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    #calls: Lcom/google/android/talk/BuddyInfo;->update(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/google/android/talk/BuddyInfo;->access$100(Lcom/google/android/talk/BuddyInfo;Landroid/database/Cursor;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/talk/BuddyInfo;->mQueryCompleted:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/BuddyInfo;->access$202(Lcom/google/android/talk/BuddyInfo;Z)Z
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 142
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_15

    :catchall_31
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0
.end method
