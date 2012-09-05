.class public Lcom/locationlabs/v3client/feature/contact/ContactManager;
.super Landroid/app/IntentService;
.source "a"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbv;",
            ">;"
        }
    .end annotation
.end field

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "ContactManager"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Ldy;
    .registers 3

    .prologue
    .line 93
    sget-object v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 102
    :goto_5
    return-object v0

    .line 95
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lam;->a(J)Lcg;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcg;->setContact(Ljava/util/List;)V

    .line 98
    invoke-static {}, Lal;->a()Ljava/lang/String;

    move-result-object v1

    .line 99
    new-instance v2, Ldy;

    invoke-direct {v2, v1, v0}, Ldy;-><init>(Ljava/lang/String;Lcg;)V

    move-object v0, v2

    .line 102
    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 247
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ne v1, v6, :cond_51

    move v1, v6

    :goto_24
    const-string v2, "Expect one and only one column for phone number to display name lookup"

    invoke-static {v1, v2}, Lj;->a(ZLjava/lang/String;)V

    move-object v1, v3

    .line 257
    :cond_2a
    :goto_2a
    if-nez v1, :cond_55

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 258
    const-string v2, "display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 259
    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    move v3, v6

    :goto_3c
    const-string v4, "Display name column not found"

    invoke-static {v3, v4}, Lj;->a(ZLjava/lang/String;)V

    .line 262
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    if-eqz v2, :cond_2a

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    move-object v1, v2

    .line 265
    goto :goto_2a

    :cond_51
    move v1, v7

    .line 253
    goto :goto_24

    :cond_53
    move v3, v7

    .line 259
    goto :goto_3c

    .line 268
    :cond_55
    if-eqz v0, :cond_5a

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_5a
    return-object v1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 57
    sget-object v1, Ldg;->o:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 64
    :goto_10
    return-void

    .line 62
    :cond_11
    invoke-static {p0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_10
.end method

.method public static a(Landroid/content/Context;Lcg;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-virtual {p1}, Lcg;->getContact()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    if-ne v0, v1, :cond_18

    .line 155
    sget v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b:I

    .line 161
    :goto_a
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    .line 162
    invoke-interface {v1, v0}, Lw;->c(I)V

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    .line 165
    const/4 v0, 0x0

    sput v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b:I

    .line 166
    return-void

    .line 158
    :cond_18
    invoke-virtual {p1}, Lcg;->getContact()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.locationlabs.v3client.action.CHECK_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-class v1, Lcom/locationlabs/v3client/feature/contact/ContactManager;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 80
    const-string v0, "com.locationlabs.v3client.action.CHECK_CONTACTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 82
    invoke-static {p0}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v6

    invoke-interface {v6}, Lw;->F()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v5, "MIN_CONTACT_CHECK_INTERVAL_SEC"

    invoke-static {v5}, Ln;->c(Ljava/lang/String;)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    add-long v9, v3, v7

    cmp-long v0, v0, v9

    if-gez v0, :cond_44

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0}, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v12, v1, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    add-long v2, v3, v7

    invoke-virtual {v0, v12, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 87
    :cond_43
    :goto_43
    return-void

    .line 82
    :cond_44
    const-string v0, "begin contacts"

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_5b
    :goto_5b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "display_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lbv;

    invoke-direct {v10}, Lbv;-><init>()V

    iput-object v0, v10, Lbv;->name:Ljava/lang/String;

    const-string v0, "has_phone_number"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v13, :cond_19d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move v3, v12

    :cond_ad
    :goto_ad
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_e7

    new-instance v4, Lch;

    invoke-direct {v4}, Lch;-><init>()V

    const-string v5, "data1"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lch;->number:Ljava/lang/String;

    const-string v11, "data2"

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v11

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v4, Lch;->type:Ljava/lang/String;

    invoke-static {v5}, Ls;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v13

    goto :goto_ad

    :cond_e7
    iput-object v1, v10, Lbv;->numbers:Ljava/util/List;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v11, v3

    :goto_ed
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v2

    :cond_10d
    :goto_10d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14d

    const-string v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10d

    if-nez v1, :cond_12a

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :cond_12a
    new-instance v4, Lby;

    invoke-direct {v4}, Lby;-><init>()V

    iput-object v3, v4, Lby;->email:Ljava/lang/String;

    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lby;->type:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10d

    :cond_14d
    if-eqz v1, :cond_151

    iput-object v1, v10, Lbv;->emails:Ljava/util/List;

    :cond_151
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_5b

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    :cond_15b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-interface {v6}, Lw;->E()I

    move-result v1

    if-eq v0, v1, :cond_18f

    const-string v1, "end contacts"

    invoke-static {v1}, Li;->c(Ljava/lang/String;)V

    sput-object v7, Lcom/locationlabs/v3client/feature/contact/ContactManager;->a:Ljava/util/List;

    sput v0, Lcom/locationlabs/v3client/feature/contact/ContactManager;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v6, v0, v1}, Lw;->g(J)V

    new-instance v0, Lz;

    const-string v1, "com.locationlabs.v3client.action.SEND_CONTACT_LIST"

    invoke-direct {v0, v1}, Lz;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lz;->b(Landroid/content/Context;)V

    const-string v0, "com.locationlabs.v3client.action.SEND_CONTACT_LIST"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, La;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_43

    :cond_18f
    const-string v0, "end contacts =="

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v6, v0, v1}, Lw;->g(J)V

    goto/16 :goto_43

    :cond_19d
    move v11, v12

    goto/16 :goto_ed
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
