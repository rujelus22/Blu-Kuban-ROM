.class public Lcom/android/inputmethod/latin/CustomDitctionaryEditor;
.super Landroid/app/ListActivity;
.source "CustomDitctionaryEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;
    }
.end annotation


# static fields
.field private static final ADD_ID:I = 0x2

.field private static final DELETE_ID:I = 0x4

.field private static final EDIT_ID:I = 0x3

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private constantsCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 50
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 51
    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 52
    const-string v2, "locale"

    aput-object v2, v0, v1

    .line 49
    sput-object v0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->PROJECTION:[Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    return-void
.end method

.method private add()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 137
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 138
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, addView:Landroid/view/View;
    new-instance v4, Lcom/android/inputmethod/latin/CustomDialogWrapper;

    invoke-direct {v4, v0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;-><init>(Landroid/view/View;)V

    .line 140
    .local v4, wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 141
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "input_language"

    const-string v6, "en"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, mSelectedLanguages:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_28

    .line 143
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 145
    :cond_28
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0103

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 146
    const v6, 0x7f0c00e4

    .line 147
    new-instance v7, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;

    invoke-direct {v7, p0, v4}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$1;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;)V

    .line 146
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 151
    const v6, 0x7f0c00e3

    .line 152
    new-instance v7, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$2;

    invoke-direct {v7, p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$2;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;)V

    .line 151
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    iget-object v5, v4, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method private delete(J)V
    .registers 5
    .parameter "rowId"

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->processDelete(J)V

    .line 226
    :cond_9
    return-void
.end method

.method private edit(J)V
    .registers 13
    .parameter "rowId"

    .prologue
    .line 162
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 163
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, editView:Landroid/view/View;
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "word"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, keyCol:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    const-string v8, "locale"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 166
    .local v4, valueCol:I
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, word:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, locale:Ljava/lang/String;
    new-instance v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;

    invoke-direct {v6, v0}, Lcom/android/inputmethod/latin/CustomDialogWrapper;-><init>(Landroid/view/View;)V

    .line 170
    .local v6, wrapper:Lcom/android/inputmethod/latin/CustomDialogWrapper;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0104

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 171
    const v8, 0x7f0c00e4

    .line 172
    new-instance v9, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;

    invoke-direct {v9, p0, v6, p1, p2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$3;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V

    .line 171
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 176
    const v8, 0x7f0c00e3

    .line 177
    new-instance v9, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$4;

    invoke-direct {v9, p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$4;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;)V

    .line 176
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 181
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 182
    iget-object v7, v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;->wordField:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v7, v6, Lcom/android/inputmethod/latin/CustomDialogWrapper;->localeField:Landroid/widget/EditText;

    invoke-virtual {v7, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method private processAdd(Lcom/android/inputmethod/latin/CustomDialogWrapper;)V
    .registers 6
    .parameter "wrapper"

    .prologue
    .line 231
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 254
    :goto_c
    return-void

    .line 235
    :cond_d
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 236
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "word"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "frequency"

    const/16 v3, 0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 240
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 246
    :goto_38
    const-string v2, "appid"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;

    const-string v3, "addWord"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 253
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$6;->start()V

    goto :goto_c

    .line 244
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    :cond_51
    const-string v2, "locale"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private processDelete(J)V
    .registers 7
    .parameter "rowId"

    .prologue
    .line 257
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 259
    .local v0, args:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 260
    .local v1, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;

    const-string v3, "deleteWord"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;[Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$7;->start()V

    .line 266
    return-void
.end method

.method private processEdit(Lcom/android/inputmethod/latin/CustomDialogWrapper;J)V
    .registers 10
    .parameter "wrapper"
    .parameter "rowId"

    .prologue
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 188
    .local v5, args:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 211
    :goto_16
    return-void

    .line 193
    :cond_17
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x5

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 194
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "word"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "frequency"

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 198
    const-string v0, "locale"

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 203
    :goto_42
    const-string v0, "appid"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 206
    .local v3, contentResolver:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;

    const-string v2, "editWord"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$5;->start()V

    goto :goto_16

    .line 202
    .end local v3           #contentResolver:Landroid/content/ContentResolver;
    :cond_5b
    const-string v0, "locale"

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/CustomDialogWrapper;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 133
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 121
    :pswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 120
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 123
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->delete(J)V

    goto :goto_c

    .line 128
    .end local v0           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :pswitch_19
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 129
    .restart local v0       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;,"Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->edit(J)V

    goto :goto_c

    .line 118
    nop

    :pswitch_data_26
    .packed-switch 0x3
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    .line 61
    new-instance v1, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;

    const v4, 0x7f030008

    .line 62
    iget-object v5, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "word"

    aput-object v3, v6, v2

    const/4 v2, 0x1

    .line 63
    const-string v3, "locale"

    aput-object v3, v6, v2

    new-array v7, v7, [I

    fill-array-data v7, :array_44

    move-object v2, p0

    move-object v3, p0

    .line 61
    invoke-direct/range {v1 .. v7}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor$AutoTextCursorAdapter;-><init>(Lcom/android/inputmethod/latin/CustomDitctionaryEditor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 65
    .local v1, adapter:Landroid/widget/ListAdapter;
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->setContentView(I)V

    .line 66
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->registerForContextMenu(Landroid/view/View;)V

    .line 69
    return-void

    .line 63
    nop

    :array_44
    .array-data 0x4
        0x39t 0x0t 0x7t 0x7ft
        0x3at 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 110
    const/4 v0, 0x4

    const-string v1, "Delete"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 111
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 112
    const/4 v0, 0x3

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 113
    const/16 v1, 0x65

    .line 112
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 114
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v0, 0x2

    const-string v1, "Add"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    const v1, 0x1080033

    .line 90
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 91
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 104
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 100
    :pswitch_c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->add()V

    .line 101
    const/4 v0, 0x1

    goto :goto_b

    .line 98
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 74
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;->constantsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 80
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 81
    return-void
.end method
