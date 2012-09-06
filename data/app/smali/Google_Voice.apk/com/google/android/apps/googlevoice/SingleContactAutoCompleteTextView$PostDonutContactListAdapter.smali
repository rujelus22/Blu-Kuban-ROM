.class public Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;
.super Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;
.source "SingleContactAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PostDonutContactListAdapter"
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V
    .registers 3
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    .line 231
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;-><init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V

    .line 232
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_e

    .line 233
    const-string v0, "PostDonutContactListAdapter()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 235
    :cond_e
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 236
    return-void
.end method


# virtual methods
.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .parameter "constraint"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_13

    .line 241
    const-string v1, "runQueryInBackgroundThread(\'%s\')"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 243
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 244
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_22

    .line 245
    const-string v1, "running filterQueryProvider\'s runQuery()"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 247
    :cond_22
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    :cond_2a
    :goto_2a
    return-object v0

    .line 250
    :cond_2b
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getContactApiHelper()Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$PostDonutContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    if-nez p1, :cond_56

    const/4 v1, 0x0

    :goto_38
    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->cursorForFilter(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    .local v0, result:Landroid/database/Cursor;
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_2a

    .line 254
    const-string v1, "result has %d rows"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_2a

    .line 250
    .end local v0           #result:Landroid/database/Cursor;
    :cond_56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_38
.end method
