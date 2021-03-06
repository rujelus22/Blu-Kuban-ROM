.class public Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdaySolaTypeData"
.end annotation


# instance fields
.field private final mBirthdaySolaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "solaType"

    .prologue
    .line 1298
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1299
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    .line 1300
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .registers 6
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1305
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1307
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1308
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1309
    const-string v1, "data15"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1310
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    .line 1320
    if-ne p0, p1, :cond_4

    .line 1321
    const/4 v1, 0x1

    .line 1327
    :goto_3
    return v1

    .line 1323
    :cond_4
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;

    if-nez v1, :cond_a

    .line 1324
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 1326
    check-cast v0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;

    .line 1327
    .local v0, birthdaySolaTypeData:Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_3
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .registers 2

    .prologue
    .line 1342
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY_SOLATYPE:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "birthdaySolaType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$BirthdaySolaTypeData;->mBirthdaySolaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
