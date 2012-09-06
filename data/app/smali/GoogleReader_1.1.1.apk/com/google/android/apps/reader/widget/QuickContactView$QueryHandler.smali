.class Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/widget/QuickContactView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/widget/QuickContactView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;->this$0:Lcom/google/android/apps/reader/widget/QuickContactView;

    .line 98
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 103
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 105
    .local v3, email:Ljava/lang/String;
    if-nez p3, :cond_11

    .line 108
    :try_start_6
    iget-object v6, p0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;->this$0:Lcom/google/android/apps/reader/widget/QuickContactView;

    #calls: Lcom/google/android/apps/reader/widget/QuickContactView;->showOrCreateContact(Ljava/lang/String;)V
    invoke-static {v6, v3}, Lcom/google/android/apps/reader/widget/QuickContactView;->access$000(Lcom/google/android/apps/reader/widget/QuickContactView;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_2b

    .line 119
    :goto_b
    if-eqz p3, :cond_10

    .line 120
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_10
    return-void

    .line 109
    :cond_11
    :try_start_11
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 110
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 111
    .local v1, contactId:J
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v1, v2, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 113
    .local v5, lookupUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;->this$0:Lcom/google/android/apps/reader/widget/QuickContactView;

    #calls: Lcom/google/android/apps/reader/widget/QuickContactView;->showQuickContact(Landroid/net/Uri;)V
    invoke-static {v6, v5}, Lcom/google/android/apps/reader/widget/QuickContactView;->access$100(Lcom/google/android/apps/reader/widget/QuickContactView;Landroid/net/Uri;)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2b

    goto :goto_b

    .line 119
    .end local v1           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local v5           #lookupUri:Landroid/net/Uri;
    :catchall_2b
    move-exception v6

    if-eqz p3, :cond_31

    .line 120
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v6

    .line 116
    :cond_32
    :try_start_32
    iget-object v6, p0, Lcom/google/android/apps/reader/widget/QuickContactView$QueryHandler;->this$0:Lcom/google/android/apps/reader/widget/QuickContactView;

    #calls: Lcom/google/android/apps/reader/widget/QuickContactView;->showOrCreateContact(Ljava/lang/String;)V
    invoke-static {v6, v3}, Lcom/google/android/apps/reader/widget/QuickContactView;->access$000(Lcom/google/android/apps/reader/widget/QuickContactView;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_2b

    goto :goto_b
.end method
