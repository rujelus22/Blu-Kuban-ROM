.class public Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "CustomDitctionaryEditor.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/CustomDitctionaryEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoTextCursorAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private layout:I

.field final synthetic this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 13
    .parameter
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->this$0:Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 277
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 278
    iput-object p2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->context:Landroid/content/Context;

    .line 279
    iput p3, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->layout:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "v"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 309
    const-string v4, "word"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 311
    .local v0, keyCol:I
    const-string v4, "locale"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 313
    .local v3, valueCol:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, string:Ljava/lang/String;
    const v4, 0x7f07004b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 319
    .local v1, name_text:Landroid/widget/TextView;
    if-eqz v1, :cond_3f

    .line 320
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    :cond_3f
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 287
    .local v0, c:Landroid/database/Cursor;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 288
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->layout:I

    const/4 v8, 0x0

    invoke-virtual {v1, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 290
    .local v5, v:Landroid/view/View;
    const-string v7, "word"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 291
    .local v2, keyCol:I
    const-string v7, "locale"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 293
    .local v6, valueCol:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, string:Ljava/lang/String;
    const v7, 0x7f070039

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 299
    .local v3, name_text:Landroid/widget/TextView;
    if-eqz v3, :cond_48

    .line 300
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :cond_48
    return-object v5
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 9
    .parameter "constraint"

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 327
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 339
    :goto_f
    return-object v0

    .line 330
    :cond_10
    const/4 v6, 0x0

    .local v6, buffer:Ljava/lang/StringBuilder;
    move-object v4, v2

    .line 331
    check-cast v4, [Ljava/lang/String;

    .line 332
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_4b

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #buffer:Ljava/lang/StringBuilder;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .restart local v6       #buffer:Ljava/lang/StringBuilder;
    const-string v0, "UPPER("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v0, "locale"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v0, ") GLOB ?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 339
    .restart local v4       #args:[Ljava/lang/String;
    :cond_4b
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    .line 340
    if-nez v6, :cond_5d

    move-object v3, v2

    .line 341
    :goto_56
    const-string v5, "word ASC"

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_f

    .line 340
    :cond_5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_56
.end method
