.class Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ItemTagEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/ItemTagEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TagQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;->this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;

    .line 246
    invoke-virtual {p1}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;->this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->isFinishing()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2b

    move-result v0

    if-eqz v0, :cond_f

    .line 253
    if-eqz p3, :cond_e

    .line 288
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_e
    :goto_e
    return-void

    .line 256
    :cond_f
    const/4 v0, 0x1

    if-eq p1, v0, :cond_32

    .line 257
    :try_start_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_2b

    .line 287
    :catchall_2b
    move-exception v0

    if-eqz p3, :cond_31

    .line 288
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_31
    throw v0

    .line 259
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;->this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;

    #getter for: Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTarget:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->access$000(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2b

    move-result v0

    if-nez v0, :cond_44

    .line 260
    if-eqz p3, :cond_e

    .line 288
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 263
    :cond_44
    if-nez p3, :cond_53

    .line 264
    :try_start_46
    const-string v0, "ItemTagEditor"

    const-string v1, "Query result is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_2b

    .line 287
    if-eqz p3, :cond_e

    .line 288
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 267
    :cond_53
    :try_start_53
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 268
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;->this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #setter for: Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mInitial:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->access$102(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemTagEditorActivity$TagQueryHandler;->this$0:Lcom/google/android/apps/reader/app/ItemTagEditorActivity;

    #getter for: Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->mTagEditor:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v1}, Lcom/google/android/apps/reader/app/ItemTagEditorActivity;->access$200(Lcom/google/android/apps/reader/app/ItemTagEditorActivity;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 275
    :goto_73
    invoke-interface {p3, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 276
    const/4 v4, 0x0

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 279
    const-string v4, ", "

    invoke-interface {v1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 285
    :cond_8c
    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_8f
    .catchall {:try_start_53 .. :try_end_8f} :catchall_2b

    .line 287
    if-eqz p3, :cond_e

    .line 288
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e
.end method
