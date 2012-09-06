.class public Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SingleContactAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListAdapter"
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;)V
    .registers 4
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 108
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 109
    return-void
.end method

.method private nameAndNumberString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ") <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nameString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 142
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->nameString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "cursor"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 148
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->nameAndNumberString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 149
    .local v1, spannable:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 150
    .local v0, len:I
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "original"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 152
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "name"

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 154
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 156
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "person_id"

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/apps/googlevoice/R$layout;->contact_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 12
    .parameter "constraint"

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 164
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_14

    .line 165
    const-string v0, "runQueryInBackgroundThread(\'%s\')"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 167
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 168
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_23

    .line 169
    const-string v0, "running filterQueryProvider\'s runQuery()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 171
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v7

    .line 209
    :cond_2b
    :goto_2b
    return-object v7

    .line 174
    :cond_2c
    const/4 v3, 0x0

    .line 175
    .local v3, clause:Ljava/lang/String;
    const/4 v4, 0x0

    .line 176
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_f1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, numberKey:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->getThreshold()I

    move-result v1

    if-lt v0, v1, :cond_b9

    .line 179
    const-string v0, "UPPER(%s) GLOB ? OR %s GLOB ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "name"

    aput-object v2, v1, v8

    const-string v2, "number_key"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 181
    new-array v4, v5, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const-string v0, "*%s*"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "*%s*"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v6, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 185
    .restart local v4       #args:[Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 186
    const-string v0, "querying with clause \'%s\', args \'%s\', \'%s\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v8

    aget-object v2, v4, v8

    aput-object v2, v1, v9

    aget-object v2, v4, v9

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 204
    .end local v6           #numberKey:Ljava/lang/String;
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView$ContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/googlevoice/SingleContactAutoCompleteTextView;->access$100()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 206
    .local v7, result:Landroid/database/Cursor;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_2b

    .line 207
    const-string v0, "result has %d rows"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 190
    .end local v7           #result:Landroid/database/Cursor;
    .restart local v6       #numberKey:Ljava/lang/String;
    :cond_b9
    const-string v0, "UPPER(%s) GLOB ?"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "name"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    new-array v4, v9, [Ljava/lang/String;

    .end local v4           #args:[Ljava/lang/String;
    const-string v0, "*%s*"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 194
    .restart local v4       #args:[Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 195
    const-string v0, "querying with clause \'%s\', arg \'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    aget-object v2, v4, v8

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_90

    .line 199
    .end local v6           #numberKey:Ljava/lang/String;
    :cond_f1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 200
    const-string v0, "querying without clause"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_90
.end method
