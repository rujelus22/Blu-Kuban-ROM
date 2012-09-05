.class public Lcom/vlingo/client/invite/InviteAdaptor;
.super Landroid/widget/BaseAdapter;
.source "InviteAdaptor.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/invite/InviteAdaptor$1;,
        Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;,
        Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    }
.end annotation


# static fields
.field private static alphaPattern:Ljava/util/regex/Pattern;


# instance fields
.field private allContactItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private countAllContacts:I

.field private countRecentlyTextedContacts:I

.field private hasAllContacts:Z

.field private hasRecentContacts:Z

.field private final parentActivity:Landroid/app/Activity;

.field private recentContactItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sectionInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedContactInfo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "\\w"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/invite/InviteAdaptor;->alphaPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5
    .parameter "parentActivity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    .line 43
    iput v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    .line 44
    iput-boolean v1, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    .line 45
    iput-boolean v1, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasAllContacts:Z

    .line 47
    iput-object v2, p0, Lcom/vlingo/client/invite/InviteAdaptor;->recentContactItems:Ljava/util/Vector;

    .line 48
    iput-object v2, p0, Lcom/vlingo/client/invite/InviteAdaptor;->allContactItems:Ljava/util/Vector;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->selectedContactInfo:Ljava/util/HashSet;

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    .line 56
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    .line 57
    return-void
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/vlingo/client/invite/InviteAdaptor;->alphaPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private cleanNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "number"

    .prologue
    .line 60
    invoke-static {p1}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, numberCleaned:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_11
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 26

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    const/4 v8, -0x1

    if-eq v2, v8, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_18f

    .line 90
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 91
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->selectedContactInfo:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 92
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->hasAllContacts:Z

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    .line 94
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v23, seenNumbers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v2, "content://sms/sent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 99
    .local v3, uriSms:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 100
    .local v18, c:Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    .line 101
    const/16 v24, 0x0

    .line 103
    .local v24, totalCellCount:I
    invoke-static/range {v18 .. v18}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 104
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 105
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->recentContactItems:Ljava/util/Vector;

    .line 107
    :cond_5e
    const-string v2, "address"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    .line 108
    .local v20, number:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 109
    .local v21, numberCleaned:Ljava/lang/String;
    const-string v2, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 110
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 113
    :cond_85
    if-eqz v21, :cond_d1

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    .line 115
    .local v5, contactID:J
    const-wide/16 v8, -0x1

    cmp-long v2, v5, v8

    if-eqz v2, :cond_d1

    .line 116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    invoke-static {v5, v6, v2}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d1

    .line 118
    new-instance v4, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/vlingo/client/invite/InviteAdaptor$1;)V

    .line 119
    .local v4, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->recentContactItems:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    .line 125
    .end local v4           #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    .end local v5           #contactID:J
    .end local v7           #name:Ljava/lang/String;
    :cond_d1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_df

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    const/16 v8, 0xa

    if-lt v2, v8, :cond_5e

    .line 127
    .end local v20           #number:Ljava/lang/String;
    .end local v21           #numberCleaned:Ljava/lang/String;
    :cond_df
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_e2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    if-lez v2, :cond_100

    .line 131
    new-instance v4, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;

    const-string v2, "Recent"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v2, v8, v9}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;-><init>(Ljava/lang/String;ILcom/vlingo/client/invite/InviteAdaptor$1;)V

    .line 132
    .local v4, info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    add-int/lit8 v2, v2, 0x1

    #setter for: Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionCount:I
    invoke-static {v4, v2}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->access$302(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;I)I

    .line 133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    add-int/lit8 v24, v2, 0x1

    .line 137
    .end local v4           #info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    :cond_100
    add-int/lit8 v24, v24, 0x1

    .line 138
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    .line 139
    const/4 v2, 0x3

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v8, "contact_id"

    aput-object v8, v10, v2

    const/4 v2, 0x1

    const-string v8, "display_name"

    aput-object v8, v10, v2

    const/4 v2, 0x2

    const-string v8, "data1"

    aput-object v8, v10, v2

    .line 140
    .local v10, projection:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v11, "data1 is not NULL AND (data2=2 OR data2=17)"

    const/4 v12, 0x0

    const-string v13, "lower(display_name) ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 142
    invoke-static/range {v18 .. v18}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 143
    const/16 v22, 0x0

    .line 144
    .local v22, sInfo:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 145
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->allContactItems:Ljava/util/Vector;

    .line 147
    :cond_143
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 148
    .restart local v20       #number:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/vlingo/client/invite/InviteAdaptor;->cleanNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 149
    .restart local v21       #numberCleaned:Ljava/lang/String;
    if-eqz v21, :cond_189

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_189

    .line 150
    const-string v2, "contact_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 151
    .restart local v5       #contactID:J
    const-string v2, "display_name"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    .restart local v7       #name:Ljava/lang/String;
    if-eqz v7, :cond_189

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1bc

    .line 166
    .end local v5           #contactID:J
    .end local v7           #name:Ljava/lang/String;
    :cond_189
    :goto_189
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_143

    .line 171
    .end local v3           #uriSms:Landroid/net/Uri;
    .end local v10           #projection:[Ljava/lang/String;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v20           #number:Ljava/lang/String;
    .end local v21           #numberCleaned:Ljava/lang/String;
    .end local v22           #sInfo:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    .end local v23           #seenNumbers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v24           #totalCellCount:I
    :cond_18f
    const/16 v19, 0x0

    .line 172
    .local v19, num:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    if-lez v2, :cond_1a4

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    add-int/lit8 v2, v2, 0x1

    add-int v19, v19, v2

    .line 174
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    .line 176
    :cond_1a4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    if-lez v2, :cond_1b7

    .line 177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    add-int/lit8 v2, v2, 0x1

    add-int v19, v19, v2

    .line 178
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->hasAllContacts:Z

    .line 180
    :cond_1b7
    if-nez v19, :cond_1bb

    .line 181
    const/16 v19, 0x1

    .line 183
    :cond_1bb
    return v19

    .line 155
    .end local v19           #num:I
    .restart local v3       #uriSms:Landroid/net/Uri;
    .restart local v5       #contactID:J
    .restart local v7       #name:Ljava/lang/String;
    .restart local v10       #projection:[Ljava/lang/String;
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v20       #number:Ljava/lang/String;
    .restart local v21       #numberCleaned:Ljava/lang/String;
    .restart local v22       #sInfo:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    .restart local v23       #seenNumbers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v24       #totalCellCount:I
    :cond_1bc
    if-eqz v22, :cond_1c8

    #getter for: Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionChar:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->access$400(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->isNewSection(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v7}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->access$500(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 156
    :cond_1c8
    new-instance v22, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;

    .end local v22           #sInfo:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-direct {v0, v7, v1, v2}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;-><init>(Ljava/lang/String;ILcom/vlingo/client/invite/InviteAdaptor$1;)V

    .line 157
    .restart local v22       #sInfo:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_1db
    new-instance v4, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const/16 v17, 0x0

    move-object v11, v4

    move-wide v12, v5

    move-object v14, v7

    invoke-direct/range {v11 .. v17}, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/invite/InviteAdaptor$1;)V

    .line 161
    .local v4, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->allContactItems:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    .line 164
    add-int/lit8 v24, v24, 0x1

    goto :goto_189
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 191
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "section"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;

    #getter for: Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionPos:I
    invoke-static {v0}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->access$000(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 5
    .parameter "position"

    .prologue
    .line 72
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1c

    .line 73
    iget-object v2, p0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;

    .line 74
    .local v1, info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    #getter for: Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->sectionPos:I
    invoke-static {v1}, Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;->access$000(Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;)I

    move-result v2

    if-lt p1, v2, :cond_19

    .line 78
    .end local v0           #i:I
    .end local v1           #info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    :goto_18
    return v0

    .line 72
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 78
    .end local v1           #info:Lcom/vlingo/client/invite/InviteAdaptor$SectionInfo;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vlingo/client/invite/InviteAdaptor;->sectionInfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v5, 0x64

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 195
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 196
    .local v1, res:Landroid/content/res/Resources;
    iget-boolean v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasAllContacts:Z

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    if-nez v3, :cond_26

    const/4 v3, 0x1

    if-ne p1, v3, :cond_26

    .line 198
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f0902ea

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v2

    .line 231
    :cond_25
    :goto_25
    return-object v2

    .line 200
    :cond_26
    iget-boolean v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    if-eqz v3, :cond_61

    iget v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    if-gt p1, v3, :cond_61

    .line 201
    if-nez p1, :cond_3e

    .line 203
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f0902ef

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v5}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemHeaderView;

    move-result-object v2

    goto :goto_25

    .line 206
    :cond_3e
    add-int/lit8 p1, p1, -0x1

    .line 207
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->recentContactItems:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 208
    .local v0, info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->type:Ljava/lang/String;

    iget-object v6, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    invoke-static {v3, v4, v5, v6, v7}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v2

    .line 209
    .local v2, v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v2}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactBadgeImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    invoke-virtual {v2, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->setInfo(Ljava/lang/Object;)V

    goto :goto_25

    .line 215
    .end local v0           #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    .end local v2           #v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    :cond_61
    iget-boolean v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasRecentContacts:Z

    if-eqz v3, :cond_6a

    .line 216
    iget v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->countRecentlyTextedContacts:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v3

    .line 217
    :cond_6a
    iget-boolean v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->hasAllContacts:Z

    if-eqz v3, :cond_25

    iget v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->countAllContacts:I

    if-gt p1, v3, :cond_25

    .line 218
    if-nez p1, :cond_82

    .line 220
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f0902e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v5}, Lcom/vlingo/client/superdialer/items/SDItemHeaderView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/vlingo/client/superdialer/items/SDItemHeaderView;

    move-result-object v2

    goto :goto_25

    .line 223
    :cond_82
    add-int/lit8 p1, p1, -0x1

    .line 224
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->allContactItems:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;

    .line 225
    .restart local v0       #info:Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;
    iget-object v3, p0, Lcom/vlingo/client/invite/InviteAdaptor;->parentActivity:Landroid/app/Activity;

    iget-object v4, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->type:Ljava/lang/String;

    iget-object v6, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->number:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/vlingo/client/invite/InviteAdaptor$ContactInfo;->cheched:Z

    invoke-static {v3, v4, v5, v6, v7}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/vlingo/client/superdialer/items/SDItemContactView;

    move-result-object v2

    .line 226
    .restart local v2       #v:Lcom/vlingo/client/superdialer/items/SDItemContactView;
    invoke-virtual {v2}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->getContactBadgeImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    invoke-virtual {v2, v0}, Lcom/vlingo/client/superdialer/items/SDItemContactView;->setInfo(Ljava/lang/Object;)V

    goto :goto_25
.end method
