.class public Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;
.super Landroid/widget/CursorAdapter;
.source "ConvNameEditText.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/ConvNameEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoCompleteContactAdapter"
.end annotation


# static fields
.field public static final CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final PROJECTION_PHONE:[Ljava/lang/String;

.field public static final SELECTION:Ljava/lang/String;


# instance fields
.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mContent:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 925
    const-string v0, "( %s = ? OR %s = ? )"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "mimetype"

    aput-object v2, v1, v3

    const-string v2, "mimetype"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    .line 945
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    .line 955
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    .line 965
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/AutoCompleteTextView;)V
    .registers 5
    .parameter "context"
    .parameter "c"
    .parameter "autoText"

    .prologue
    const/4 v0, 0x0

    .line 1009
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 863
    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    .line 873
    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 1011
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    .line 1023
    iput-object p3, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 1025
    return-void
.end method

.method private usefulAsDigits(Ljava/lang/CharSequence;)I
    .registers 9
    .parameter "cons"

    .prologue
    .line 1749
    const/4 v4, 0x0

    .line 1751
    .local v4, retVal:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 1753
    .local v3, len:I
    const-string v5, "@%&/!?,\"\':;~=_<>{}[]|$\ufffd\ufffd\uff22\u0392\ufffd\uc5e1\uc9e0^\uc9f8\uca0c\uca54\uc9d5\uc9da\uc9ec\uca29\uc9e4\uc9f0"

    .line 1757
    .local v5, specialChar:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v3, :cond_5c

    .line 1759
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1761
    .local v0, c:C
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p1, v2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1765
    .local v1, cs:Ljava/lang/CharSequence;
    const/16 v6, 0x30

    if-lt v0, v6, :cond_1f

    const/16 v6, 0x39

    if-gt v0, v6, :cond_1f

    .line 1757
    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1771
    :cond_1f
    const/16 v6, 0x20

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x28

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x29

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2e

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2b

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x23

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2a

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x9

    if-eq v0, v6, :cond_1c

    .line 1779
    const/16 v6, 0x41

    if-lt v0, v6, :cond_4b

    const/16 v6, 0x5a

    if-le v0, v6, :cond_1c

    .line 1785
    :cond_4b
    const/16 v6, 0x61

    if-lt v0, v6, :cond_53

    const/16 v6, 0x7a

    if-le v0, v6, :cond_1c

    .line 1793
    :cond_53
    const-string v6, "@%&/!?,\"\':;~=_<>{}[]|$\ufffd\ufffd\uff22\u0392\ufffd\uc5e1\uc9e0^\uc9f8\uca0c\uca54\uc9d5\uc9da\uc9ec\uca29\uc9e4\uc9f0"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1795
    const/4 v4, 0x1

    .line 1805
    .end local v0           #c:C
    .end local v1           #cs:Ljava/lang/CharSequence;
    .end local v4           #retVal:I
    :cond_5c
    return v4

    .line 1799
    .restart local v0       #c:C
    .restart local v1       #cs:Ljava/lang/CharSequence;
    .restart local v4       #retVal:I
    :cond_5d
    const/4 v4, 0x2

    goto :goto_1c
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1045
    const-string v1, "display_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1047
    .local v7, displayName:Ljava/lang/String;
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1051
    .local v8, displayNumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1053
    .local v13, writtenString:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 1057
    .local v9, index:[I
    invoke-static {v13}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 1061
    const-string v1, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1063
    .local v11, reversePhoneNumberIndex:I
    if-ltz v11, :cond_54

    .line 1067
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "data4"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1073
    :cond_54
    invoke-virtual {p0, v8, v13, v9}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->findPos(Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v1

    if-nez v1, :cond_76

    .line 1075
    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    :cond_76
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1095
    .local v12, span:Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const-string v2, "sans"

    const/4 v3, 0x0

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/16 v4, 0x21

    invoke-interface {v12, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1121
    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    .end local v11           #reversePhoneNumberIndex:I
    .end local v12           #span:Landroid/text/Spannable;
    :goto_b6
    const-string v1, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1237
    .local v10, phoneTypeIndex:I
    const v1, 0x7f0f0019

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v10}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1253
    return-void

    .line 1127
    .end local v10           #phoneTypeIndex:I
    :cond_d5
    invoke-virtual {p0, v7, v13, v9}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->findPos(Ljava/lang/String;Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_120

    .line 1129
    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1139
    .restart local v12       #span:Landroid/text/Spannable;
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const-string v2, "sans"

    const/4 v3, 0x0

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v2, 0x0

    aget v2, v9, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    const/16 v4, 0x21

    invoke-interface {v12, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1149
    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b6

    .line 1215
    .end local v12           #span:Landroid/text/Spannable;
    :cond_120
    const v1, 0x7f0f0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    const v1, 0x7f0f0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b6
.end method

.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"

    .prologue
    .line 853
    invoke-virtual {p0, p1}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 1357
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findPos(Ljava/lang/String;Ljava/lang/String;[I)Z
    .registers 11
    .parameter "target"
    .parameter "reg"
    .parameter "indexes"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1265
    invoke-static {p2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1267
    invoke-static {p2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1273
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1275
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 1279
    const-string v5, "\\"

    const-string v6, "\\\\"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1281
    const-string v5, "*"

    const-string v6, ".*"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1283
    const-string v5, "?"

    const-string v6, ".?"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1291
    const-string v5, "+"

    const-string v6, ".+"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1299
    const-string v5, "("

    const-string v6, "\\("

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1301
    const-string v5, ")"

    const-string v6, "\\)"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1309
    const-string v5, "["

    const-string v6, "\\["

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1317
    const-string v5, "{"

    const-string v6, "\\{"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1319
    const-string v5, "}"

    const-string v6, "\\}"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1325
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1329
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1331
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1333
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 1337
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aput v5, p3, v4

    .line 1339
    aget v4, p3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, p3, v3

    .line 1349
    .end local v2           #temp:Ljava/lang/String;
    :goto_96
    return v3

    :cond_97
    move v3, v4

    goto :goto_96
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 1365
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 1373
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1681
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "display_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1699
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)Ljava/lang/String;
    .registers 5
    .parameter "position"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1717
    iget-object v0, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mCursor:Landroid/database/Cursor;

    const-string v2, "data2"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1031
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1033
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1037
    .local v1, view:Landroid/widget/LinearLayout;
    return-object v1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 22
    .parameter "constraint"

    .prologue
    .line 1387
    if-eqz p1, :cond_8

    invoke-static {}, Lcom/android/calendar/ConvNameEditText;->allowQuery()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1389
    :cond_8
    const/16 v16, 0x0

    .line 1617
    :cond_a
    :goto_a
    return-object v16

    .line 1395
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1397
    const/16 v16, 0x0

    goto :goto_a

    .line 1401
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->getFilterQueryProvider()Landroid/widget/FilterQueryProvider;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    goto :goto_a

    .line 1409
    :cond_2b
    const-string v15, ""

    .line 1411
    .local v15, phone:Ljava/lang/String;
    const-string v13, ""

    .line 1417
    .local v13, cons:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1421
    .local v6, args:[Ljava/lang/String;
    if-eqz p1, :cond_58

    .line 1423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_185

    .line 1425
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/calendar/Utils;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1435
    :goto_44
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->usefulAsDigits(Ljava/lang/CharSequence;)I

    move-result v18

    .line 1437
    .local v18, ret:I
    if-nez v18, :cond_191

    .line 1439
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1441
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18b

    .line 1443
    const-string v15, ""

    .line 1463
    .end local v18           #ret:I
    :cond_58
    :goto_58
    const/16 v16, 0x0

    .line 1469
    .local v16, phoneCursor:Landroid/database/Cursor;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a2

    .line 1479
    const-string v2, "( %s GLOB ? OR UPPER(%s) GLOB ? OR LOWER(%s) GLOB ? OR UPPER(%s) GLOB ? ) AND %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "display_name"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    const-string v8, "data1"

    aput-object v8, v4, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1489
    .local v5, matching_selection:Ljava/lang/String;
    const/4 v2, 0x6

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #args:[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v6, v2

    const/4 v2, 0x5

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v6, v2

    .line 1507
    .restart local v6       #args:[Ljava/lang/String;
    if-nez p1, :cond_199

    const-string v14, ""

    .line 1509
    .local v14, filter:Ljava/lang/String;
    :goto_10b
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1513
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19f

    sget-object v4, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    :goto_121
    const-string v7, "display_name, is_primary DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1559
    .end local v3           #uri:Landroid/net/Uri;
    .end local v14           #filter:Ljava/lang/String;
    :goto_127
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    .line 1563
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1565
    .local v17, result:Ljava/util/ArrayList;
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1567
    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1569
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1571
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    const-string v2, "\u00a0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    new-instance v19, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 1605
    .local v19, translated:Landroid/database/MatrixCursor;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 1609
    new-instance v2, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object v19, v4, v7

    const/4 v7, 0x1

    aput-object v16, v4, v7

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object/from16 v16, v2

    goto/16 :goto_a

    .line 1429
    .end local v5           #matching_selection:Ljava/lang/String;
    .end local v16           #phoneCursor:Landroid/database/Cursor;
    .end local v17           #result:Ljava/util/ArrayList;
    .end local v19           #translated:Landroid/database/MatrixCursor;
    :cond_185
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_44

    .line 1447
    .restart local v18       #ret:I
    :cond_18b
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_58

    .line 1451
    :cond_191
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_58

    .line 1453
    move-object v15, v13

    goto/16 :goto_58

    .line 1507
    .end local v18           #ret:I
    .restart local v5       #matching_selection:Ljava/lang/String;
    .restart local v16       #phoneCursor:Landroid/database/Cursor;
    :cond_199
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_10b

    .line 1513
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v14       #filter:Ljava/lang/String;
    :cond_19f
    sget-object v4, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    goto :goto_121

    .line 1529
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #matching_selection:Ljava/lang/String;
    .end local v14           #filter:Ljava/lang/String;
    :cond_1a2
    const-string v2, "( UPPER(%s) GLOB ? ) AND %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "data4"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->SELECTION:Ljava/lang/String;

    aput-object v8, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1535
    .restart local v5       #matching_selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .end local v6           #args:[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7, v13}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "*"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x1

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v6, v2

    const/4 v2, 0x2

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v6, v2

    .line 1547
    .restart local v6       #args:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->mContent:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->CONTENT_URI_AUTO_COMPLETE:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_203

    sget-object v9, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION:[Ljava/lang/String;

    :goto_1f9
    const-string v12, "display_name, is_primary DESC"

    move-object v10, v5

    move-object v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto/16 :goto_127

    :cond_203
    sget-object v9, Lcom/android/calendar/ConvNameEditText$AutoCompleteContactAdapter;->PROJECTION_PHONE:[Ljava/lang/String;

    goto :goto_1f9
.end method
