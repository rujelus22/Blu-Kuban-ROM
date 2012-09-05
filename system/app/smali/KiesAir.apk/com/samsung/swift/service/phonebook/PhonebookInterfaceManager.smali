.class public Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;
.super Ljava/lang/Object;
.source "PhonebookInterfaceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SIM_URI:Landroid/net/Uri;

.field public static simDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    .line 115
    const-class v0, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    .line 118
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLogoRemoval(Lcom/samsung/swift/service/phonebook/Contact;)Z
    .registers 3
    .parameter "contact"

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getLogo()Lcom/samsung/swift/util/Resource;

    move-result-object v0

    .line 983
    .local v0, logo:Lcom/samsung/swift/util/Resource;
    if-nez v0, :cond_8

    .line 985
    const/4 v1, 0x1

    .line 988
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 647
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static getSimEmailLength()I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 766
    sget-boolean v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    if-eqz v8, :cond_7

    move v2, v7

    .line 827
    .local v5, tm:Landroid/telephony/TelephonyManager;
    :goto_6
    return v2

    .line 771
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v8

    if-eqz v8, :cond_f

    move v2, v7

    .line 773
    goto :goto_6

    .line 777
    :cond_f
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isSimEmailSupported()Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 779
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 781
    .restart local v5       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_9e

    .line 783
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 785
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "abcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyz"

    .line 786
    .local v4, testEmail:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 787
    .local v2, currentEmailMax:I
    const/4 v1, 0x0

    .line 788
    .local v1, createdUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 791
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :goto_3c
    if-nez v1, :cond_55

    if-lez v2, :cond_55

    .line 793
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 795
    const-string v8, "emails"

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 791
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 800
    :cond_55
    if-eqz v1, :cond_9e

    .line 802
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 803
    .local v3, emailId:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 806
    if-eqz v1, :cond_71

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 808
    :cond_71
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "getSimEmailLength: Error - Therefore set default max email length to 14!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/16 v2, 0xe

    goto :goto_6

    .line 813
    :cond_7b
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 815
    add-int/lit8 v2, v2, 0x1

    .line 817
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSimEmailLength: Max email length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 825
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #createdUri:Landroid/net/Uri;
    .end local v2           #currentEmailMax:I
    .end local v3           #emailId:Ljava/lang/String;
    .end local v4           #testEmail:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_9e
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "getSimEmailLength: NO SIM CARD or EMAIL NOT supported!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 827
    goto/16 :goto_6
.end method

.method private static getSimNameLength()I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 699
    sget-boolean v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    if-eqz v8, :cond_7

    move v2, v7

    .line 755
    .local v5, tm:Landroid/telephony/TelephonyManager;
    :goto_6
    return v2

    .line 704
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v8

    if-eqz v8, :cond_f

    move v2, v7

    .line 706
    goto :goto_6

    .line 710
    :cond_f
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 712
    .restart local v5       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_98

    .line 714
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 716
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "abcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyz"

    .line 717
    .local v4, testName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 718
    .local v2, currentNameMax:I
    const/4 v1, 0x0

    .line 719
    .local v1, createdUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :goto_36
    if-nez v1, :cond_4f

    if-lez v2, :cond_4f

    .line 724
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 726
    const-string v8, "tag"

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 722
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 731
    :cond_4f
    if-eqz v1, :cond_98

    .line 733
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, nameId:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 737
    if-eqz v1, :cond_6b

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 739
    :cond_6b
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error: Therefore set default max name length to 14!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/16 v2, 0xe

    goto :goto_6

    .line 744
    :cond_75
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 746
    add-int/lit8 v2, v2, 0x1

    .line 748
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Max name length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #createdUri:Landroid/net/Uri;
    .end local v2           #currentNameMax:I
    .end local v3           #nameId:Ljava/lang/String;
    .end local v4           #testName:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_98
    move v2, v7

    .line 755
    goto/16 :goto_6
.end method

.method private static getSimNumberLength()I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 839
    sget-boolean v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    if-eqz v8, :cond_7

    move v2, v7

    .line 895
    .local v5, tm:Landroid/telephony/TelephonyManager;
    :goto_6
    return v2

    .line 844
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :cond_7
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v8

    if-eqz v8, :cond_f

    move v2, v7

    .line 846
    goto :goto_6

    .line 850
    :cond_f
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 852
    .restart local v5       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_98

    .line 854
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 856
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "1234567890123456789012345678901234567890123456789012"

    .line 857
    .local v4, testNumber:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 858
    .local v2, currentNumberMax:I
    const/4 v1, 0x0

    .line 859
    .local v1, createdUri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    :goto_36
    if-nez v1, :cond_4f

    if-lez v2, :cond_4f

    .line 864
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 866
    const-string v8, "number"

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 862
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 871
    :cond_4f
    if-eqz v1, :cond_98

    .line 873
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    .local v3, numberId:Ljava/lang/String;
    const/16 v7, 0x2f

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    if-eqz v1, :cond_6b

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_75

    .line 879
    :cond_6b
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Error: Therefore set default max number length to 14!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/16 v2, 0xe

    goto :goto_6

    .line 884
    :cond_75
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 886
    add-int/lit8 v2, v2, 0x1

    .line 888
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Max number length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #createdUri:Landroid/net/Uri;
    .end local v2           #currentNumberMax:I
    .end local v3           #numberId:Ljava/lang/String;
    .end local v4           #testNumber:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_98
    move v2, v7

    .line 895
    goto/16 :goto_6
.end method

.method public static insertGroupMembership()Landroid/content/ContentProviderOperation;
    .registers 3

    .prologue
    .line 326
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 328
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 330
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 337
    const-string v1, "data1"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method public static insertSimContact(Lcom/samsung/swift/service/phonebook/Contact;)J
    .registers 8
    .parameter "contact"

    .prologue
    .line 655
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 657
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "tag"

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v5, "number"

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/samsung/swift/service/phonebook/Contact;->getNumber(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/swift/service/phonebook/Contact;->getEmail(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 665
    const-string v5, "emails"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_2c
    sget-object v5, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 670
    .local v3, mUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, id:Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    return-wide v5
.end method

.method public static insertUpdateAddress(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 16
    .parameter "contact"
    .parameter "addressType"
    .parameter "contactId"
    .parameter "prevAddressId"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 198
    if-eqz p4, :cond_6b

    .line 200
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 201
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "_id = ?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object p4, v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 217
    :goto_13
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 218
    const-string v7, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 220
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getStreet(I)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, street:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getCity(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, city:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getState(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, state:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getPostCode(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, postcode:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getCountry(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, country:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-static {v4}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-static {v5}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 228
    if-eqz p4, :cond_87

    .line 232
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 233
    .local v3, deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    aput-object p4, v8, v9

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 235
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    .line 271
    .end local v3           #deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    :goto_6a
    return-object v7

    .line 205
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #city:Ljava/lang/String;
    .end local v2           #country:Ljava/lang/String;
    .end local v4           #postcode:Ljava/lang/String;
    .end local v5           #state:Ljava/lang/String;
    .end local v6           #street:Ljava/lang/String;
    :cond_6b
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 207
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v7, 0x0

    cmp-long v7, p2, v7

    if-nez v7, :cond_7d

    .line 209
    const-string v7, "raw_contact_id"

    invoke-virtual {v0, v7, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 213
    :cond_7d
    const-string v7, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 239
    .restart local v1       #city:Ljava/lang/String;
    .restart local v2       #country:Ljava/lang/String;
    .restart local v4       #postcode:Ljava/lang/String;
    .restart local v5       #state:Ljava/lang/String;
    .restart local v6       #street:Ljava/lang/String;
    :cond_87
    const/4 v7, 0x0

    goto :goto_6a

    .line 245
    :cond_89
    invoke-static {v6}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_91

    if-eqz p4, :cond_96

    .line 247
    :cond_91
    const-string v7, "data4"

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 250
    :cond_96
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9e

    if-eqz p4, :cond_a3

    .line 252
    :cond_9e
    const-string v7, "data7"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 255
    :cond_a3
    invoke-static {v5}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ab

    if-eqz p4, :cond_b0

    .line 257
    :cond_ab
    const-string v7, "data8"

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 260
    :cond_b0
    invoke-static {v4}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b8

    if-eqz p4, :cond_bd

    .line 262
    :cond_b8
    const-string v7, "data9"

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 265
    :cond_bd
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c5

    if-eqz p4, :cond_ca

    .line 267
    :cond_c5
    const-string v7, "data10"

    invoke-virtual {v0, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 271
    :cond_ca
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    goto :goto_6a
.end method

.method public static insertUpdateEmail(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 10
    .parameter "contact"
    .parameter "emailType"
    .parameter "contactId"
    .parameter "prevEmailId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 508
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getEmail(I)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 514
    if-eqz p4, :cond_37

    .line 516
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 517
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 533
    :goto_1d
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 534
    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 535
    const-string v2, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 537
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 548
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_36
    return-object v2

    .line 521
    :cond_37
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 523
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_49

    .line 525
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 529
    :cond_49
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 539
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_53
    if-eqz p4, :cond_69

    .line 541
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 542
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 544
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_36

    .line 548
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_69
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public static insertUpdateLogo(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 9
    .parameter "contact"
    .parameter "contactId"
    .parameter "prevLogoId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 555
    invoke-static {p0}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->loadInputLogo(Lcom/samsung/swift/service/phonebook/Contact;)[B

    move-result-object v1

    .line 559
    .local v1, bytes:[B
    if-eqz v1, :cond_46

    .line 561
    if-eqz p3, :cond_2a

    .line 563
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 564
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 580
    :goto_19
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 581
    const-string v2, "data15"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 583
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 596
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_29
    return-object v2

    .line 568
    :cond_2a
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 570
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_3c

    .line 572
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_19

    .line 576
    :cond_3c
    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_19

    .line 587
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_46
    if-eqz p3, :cond_62

    invoke-static {p0}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->checkLogoRemoval(Lcom/samsung/swift/service/phonebook/Contact;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 589
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 590
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_29

    .line 596
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_62
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public static insertUpdateName(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 14
    .parameter "contact"
    .parameter "contactId"
    .parameter "prevNameId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 125
    if-eqz p3, :cond_58

    .line 127
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 128
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "_id = ?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object p3, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 144
    :goto_13
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getFirstName()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, fname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getLastName()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, lname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getSuffix()Ljava/lang/String;

    move-result-object v4

    .line 151
    .local v4, suffix:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-static {v3}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    invoke-static {v4}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 153
    if-eqz p3, :cond_74

    .line 157
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 158
    .local v1, deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v6, "_id=?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object p3, v7, v8

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 160
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    .line 190
    .end local v1           #deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    :goto_57
    return-object v6

    .line 132
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #fname:Ljava/lang/String;
    .end local v3           #lname:Ljava/lang/String;
    .end local v4           #suffix:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_58
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 134
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-nez v6, :cond_6a

    .line 136
    const-string v6, "raw_contact_id"

    invoke-virtual {v0, v6, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 140
    :cond_6a
    const-string v6, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 164
    .restart local v2       #fname:Ljava/lang/String;
    .restart local v3       #lname:Ljava/lang/String;
    .restart local v4       #suffix:Ljava/lang/String;
    .restart local v5       #title:Ljava/lang/String;
    :cond_74
    const/4 v6, 0x0

    goto :goto_57

    .line 169
    :cond_76
    invoke-static {v5}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    if-eqz p3, :cond_83

    .line 171
    :cond_7e
    const-string v6, "data4"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 174
    :cond_83
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8b

    if-eqz p3, :cond_90

    .line 176
    :cond_8b
    const-string v6, "data2"

    invoke-virtual {v0, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    :cond_90
    invoke-static {v3}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_98

    if-eqz p3, :cond_9d

    .line 181
    :cond_98
    const-string v6, "data3"

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 184
    :cond_9d
    invoke-static {v4}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    if-eqz p3, :cond_aa

    .line 186
    :cond_a5
    const-string v6, "data6"

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 190
    :cond_aa
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    goto :goto_57
.end method

.method public static insertUpdateNickname(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 10
    .parameter "contact"
    .parameter "contactId"
    .parameter "prevNicknameId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getNickName()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 351
    if-eqz p3, :cond_37

    .line 353
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 354
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id = ?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 370
    :goto_1d
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 371
    const-string v2, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 372
    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 374
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 385
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_36
    return-object v2

    .line 358
    :cond_37
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 360
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_49

    .line 362
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 366
    :cond_49
    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 376
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_53
    if-eqz p3, :cond_69

    .line 378
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 379
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 381
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_36

    .line 385
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_69
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public static insertUpdateNotes(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 9
    .parameter "contact"
    .parameter "contactId"
    .parameter "prevNoteId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getNotes()Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 283
    if-eqz p3, :cond_2e

    .line 285
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 286
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 302
    :goto_1d
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 304
    const-string v2, "data1"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 317
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_2d
    return-object v2

    .line 290
    :cond_2e
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 292
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_40

    .line 294
    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 298
    :cond_40
    const-string v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1d

    .line 308
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4a
    if-eqz p3, :cond_60

    .line 310
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 311
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v2, "_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object p3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    goto :goto_2d

    .line 317
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_60
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public static insertUpdateOrganisation(Lcom/samsung/swift/service/phonebook/Contact;JLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 12
    .parameter "contact"
    .parameter "contactId"
    .parameter "prevOrgId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    if-eqz p3, :cond_4d

    .line 396
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 397
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "_id = ?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 413
    :goto_13
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 414
    const-string v4, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 416
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getOrganisation()Ljava/lang/String;

    move-result-object v3

    .line 417
    .local v3, organisation:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getJobTitle()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, jobTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 421
    if-eqz p3, :cond_69

    .line 425
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 426
    .local v1, deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p3, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 428
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 448
    .end local v1           #deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    :goto_4c
    return-object v4

    .line 401
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #jobTitle:Ljava/lang/String;
    .end local v3           #organisation:Ljava/lang/String;
    :cond_4d
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 403
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_5f

    .line 405
    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 409
    :cond_5f
    const-string v4, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_13

    .line 432
    .restart local v2       #jobTitle:Ljava/lang/String;
    .restart local v3       #organisation:Ljava/lang/String;
    :cond_69
    const/4 v4, 0x0

    goto :goto_4c

    .line 437
    :cond_6b
    invoke-static {v3}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_73

    if-eqz p3, :cond_78

    .line 439
    :cond_73
    const-string v4, "data1"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    :cond_78
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    if-eqz p3, :cond_85

    .line 444
    :cond_80
    const-string v4, "data4"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 448
    :cond_85
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    goto :goto_4c
.end method

.method public static insertUpdatePhoneNumber(Lcom/samsung/swift/service/phonebook/Contact;IJLjava/lang/String;)Landroid/content/ContentProviderOperation;
    .registers 12
    .parameter "contact"
    .parameter "numberType"
    .parameter "contactId"
    .parameter "prevPhoneId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 454
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getDefaultNumber()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, defaultNumber:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/swift/service/phonebook/Contact;->getNumber(I)Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, number:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 461
    if-eqz p4, :cond_3b

    .line 463
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 464
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "_id = ?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p4, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 486
    :cond_21
    :goto_21
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 487
    const-string v3, "data2"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 488
    const-string v3, "data1"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 490
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 501
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_3a
    return-object v3

    .line 468
    :cond_3b
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 470
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-nez v3, :cond_67

    .line 472
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 474
    if-eqz v1, :cond_21

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 476
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 477
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_21

    .line 482
    :cond_67
    const-string v3, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_21

    .line 492
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_71
    if-eqz p4, :cond_87

    .line 494
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 495
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "_id=?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object p4, v4, v6

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 497
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    goto :goto_3a

    .line 501
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_87
    const/4 v3, 0x0

    goto :goto_3a
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 997
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSimEmailSupported()Z
    .registers 11

    .prologue
    const/16 v10, 0x2f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 905
    sget-boolean v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->simDisabled:Z

    if-eqz v8, :cond_9

    .line 972
    .local v2, emailId:Ljava/lang/String;
    .local v4, tm:Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_8
    return v6

    .line 910
    .end local v2           #emailId:Ljava/lang/String;
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_9
    invoke-static {}, Lcom/samsung/swift/Swift;->isEmulator()Z

    move-result v8

    if-nez v8, :cond_8

    .line 916
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v8

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Lcom/samsung/swift/service/SwiftService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 917
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 919
    .restart local v2       #emailId:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    if-eq v8, v7, :cond_8

    .line 921
    invoke-static {}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 924
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "abcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyzabcdefghijklmnopqrstuvxyz"

    .line 926
    .local v3, testEmail:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v5, values:Landroid/content/ContentValues;
    const-string v8, "emails"

    invoke-virtual {v5, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 932
    .local v1, createdUri:Landroid/net/Uri;
    if-nez v1, :cond_7c

    .line 935
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 937
    const-string v8, "emails"

    const-string v9, "e@mail.com"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    sget-object v8, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 941
    if-eqz v1, :cond_8

    .line 943
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 947
    if-eqz v1, :cond_64

    const-string v8, "0"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 949
    :cond_64
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "isSimEmailSupported: Email Field Not Supported!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 953
    :cond_6c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 955
    sget-object v6, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "isSimEmailSupported: Email Field Supported!!!"

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 957
    goto :goto_8

    .line 963
    :cond_7c
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 968
    sget-object v7, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->LOG_TAG:Ljava/lang/String;

    const-string v8, "isSimEmailSupported: Email Field Not Supported!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method public static setDefaultPhoneNumberField(Lcom/samsung/swift/service/phonebook/Contact;)Landroid/content/ContentProviderOperation;
    .registers 11
    .parameter "contact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 610
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getDefaultNumber()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, defaultNumber:Ljava/lang/String;
    const/4 v2, 0x1

    .line 614
    .local v2, numberType:I
    invoke-static {v1}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 616
    invoke-virtual {p0, v7}, Lcom/samsung/swift/service/phonebook/Contact;->getNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 618
    const/4 v2, 0x1

    .line 630
    :cond_19
    :goto_19
    const-string v3, "mimetype = ? AND data1 = ? AND raw_contact_id = ? AND data2 = ?"

    .line 632
    .local v3, phoneWhere:Ljava/lang/String;
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vnd.android.cursor.item/phone_v2"

    aput-object v6, v4, v5

    aput-object v1, v4, v7

    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 634
    .local v4, phoneWhereParams:[Ljava/lang/String;
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 635
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "mimetype = ? AND data1 = ? AND raw_contact_id = ? AND data2 = ?"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 636
    const-string v5, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 637
    const-string v5, "is_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 639
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 642
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #phoneWhere:Ljava/lang/String;
    .end local v4           #phoneWhereParams:[Ljava/lang/String;
    :goto_56
    return-object v5

    .line 620
    :cond_57
    invoke-virtual {p0, v9}, Lcom/samsung/swift/service/phonebook/Contact;->getNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 622
    const/4 v2, 0x3

    goto :goto_19

    .line 624
    :cond_63
    invoke-virtual {p0, v8}, Lcom/samsung/swift/service/phonebook/Contact;->getNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 626
    const/4 v2, 0x2

    goto :goto_19

    .line 642
    :cond_6f
    const/4 v5, 0x0

    goto :goto_56
.end method

.method public static updateSimContact(Lcom/samsung/swift/service/phonebook/Contact;)Z
    .registers 3
    .parameter "contact"

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/Contact;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/swift/service/phonebook/PhonebookPlugin;->delete(J)V

    .line 687
    invoke-static {p0}, Lcom/samsung/swift/service/phonebook/PhonebookInterfaceManager;->insertSimContact(Lcom/samsung/swift/service/phonebook/Contact;)J

    .line 689
    const/4 v0, 0x1

    return v0
.end method
