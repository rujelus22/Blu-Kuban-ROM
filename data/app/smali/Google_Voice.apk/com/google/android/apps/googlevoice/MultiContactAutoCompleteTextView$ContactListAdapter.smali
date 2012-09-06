.class public Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MultiContactAutoCompleteTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListAdapter"
.end annotation


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;)V
    .registers 4
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 68
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    .line 69
    return-void
.end method

.method private nameAndNumberString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getContext()Landroid/content/Context;

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

    .line 94
    const-string v1, ") <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nameString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .parameter "cursor"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getContext()Landroid/content/Context;

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

    .line 83
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
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
    .line 102
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->main:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->nameString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget v0, Lcom/google/android/apps/googlevoice/R$id;->secondary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 10
    .parameter "cursor"

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 108
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->nameAndNumberString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 109
    .local v1, spannable:Landroid/text/SpannableString;
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 110
    .local v0, len:I
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "original"

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 112
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "name"

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 114
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "number"

    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    new-instance v2, Landroid/text/Annotation;

    const-string v3, "person_id"

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    return-object v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 73
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

    .line 124
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_14

    .line 125
    const-string v0, "runQueryInBackgroundThread(\'%s\')"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 127
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 128
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_23

    .line 129
    const-string v0, "running filterQueryProvider\'s runQuery()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 131
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    :cond_2b
    :goto_2b
    return-object v7

    .line 134
    :cond_2c
    const/4 v3, 0x0

    .line 135
    .local v3, clause:Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, args:[Ljava/lang/String;
    if-eqz p1, :cond_f1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, numberKey:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->this$0:Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->getThreshold()I

    move-result v1

    if-lt v0, v1, :cond_b9

    .line 139
    const-string v0, "UPPER(%s) GLOB ? OR %s GLOB ?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "name"

    aput-object v2, v1, v8

    const-string v2, "number_key"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 141
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

    .line 145
    .restart local v4       #args:[Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 146
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

    .line 164
    .end local v6           #numberKey:Ljava/lang/String;
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView$ContactListAdapter;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/google/android/apps/googlevoice/MultiContactAutoCompleteTextView;->access$000()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 166
    .local v7, result:Landroid/database/Cursor;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_2b

    .line 167
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

    .line 150
    .end local v7           #result:Landroid/database/Cursor;
    .restart local v6       #numberKey:Ljava/lang/String;
    :cond_b9
    const-string v0, "UPPER(%s) GLOB ?"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "name"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 151
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

    .line 154
    .restart local v4       #args:[Ljava/lang/String;
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 155
    const-string v0, "querying with clause \'%s\', arg \'%s\'"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v8

    aget-object v2, v4, v8

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_90

    .line 159
    .end local v6           #numberKey:Ljava/lang/String;
    :cond_f1
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_90

    .line 160
    const-string v0, "querying without clause"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    goto :goto_90
.end method
