.class public Lcom/syncmldstmo/base/vitem/smlContactAdapter;
.super Ljava/lang/Object;
.source "smlContactAdapter.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# static fields
.field public static ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public FN:Ljava/lang/String;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public _id:I

.field public addrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public anniversary:Ljava/lang/String;

.field public birthday:Ljava/lang/String;

.field public emailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public group:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public imList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public nickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public noteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public orgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public photo:Ljava/lang/String;

.field public telList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field

.field public urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 3
    .parameter "smlvcard"

    .prologue
    .line 499
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    .line 500
    if-nez p1, :cond_4c

    .line 523
    :cond_4b
    :goto_4b
    return-void

    .line 503
    :cond_4c
    iget v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->luid:I

    iput v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 504
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->BDAY:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    .line 505
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ANNI:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    .line 507
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNameItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNickNameItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 509
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddTelItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 510
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddEmailItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 511
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddAddrItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddOrgItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 513
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddUrlItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 514
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddImItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 515
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNoteItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 516
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddPhotoItem(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 517
    invoke-direct {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddGroupItem(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 519
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 521
    const-string v0, "NO NAME"

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    goto :goto_4b
.end method

.method private AddAddrItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 8
    .parameter "vCard"

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 230
    .local v3, vCardAddrItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_93

    .line 232
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #vCardAddrItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    check-cast v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;

    .line 234
    .restart local v3       #vCardAddrItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    if-eqz v3, :cond_8d

    .line 236
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget v5, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->type:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, szType:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 238
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_29
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 241
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 243
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 245
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 247
    :cond_3c
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 249
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 251
    :cond_48
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 253
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 255
    :cond_54
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 257
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    .line 259
    :cond_60
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 261
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    .line 263
    :cond_6c
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 265
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    .line 267
    :cond_78
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_84

    .line 269
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    .line 271
    :cond_84
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2           #szType:Ljava/lang/String;
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 275
    :cond_8d
    const-string v4, "vCardAddrItem is null!!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_89

    .line 278
    :cond_93
    return-void
.end method

.method private AddAddrItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 8
    .parameter "vCard"

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 684
    .local v3, vCardAddr:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e4

    .line 686
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_e4

    .line 688
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 690
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_dd

    .line 692
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 686
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 695
    :cond_28
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget-object v5, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 696
    .local v2, nType:Ljava/lang/Integer;
    if-nez v2, :cond_3c

    .line 697
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_ADR_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerOtherType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 699
    :cond_3c
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;

    .end local v3           #vCardAddr:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;-><init>()V

    .line 701
    .restart local v3       #vCardAddr:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->type:I

    .line 703
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 704
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    .line 706
    :cond_53
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 707
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    .line 709
    :cond_5f
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 710
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    .line 712
    :cond_6b
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_77

    .line 713
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    .line 715
    :cond_77
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 716
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    .line 718
    :cond_83
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 719
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    .line 721
    :cond_8f
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9b

    .line 722
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    .line 724
    :cond_9b
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->street:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postofficebox:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->extended:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->city:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->state:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->postalcode:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d3

    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->country:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d6

    .line 732
    :cond_d3
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardAddress_t;->isValid:Z

    .line 735
    :cond_d6
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ADRList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 739
    .end local v2           #nType:Ljava/lang/Integer;
    :cond_dd
    const-string v4, "[AddAddrItemToVCard] contactData is null !!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto/16 :goto_25

    .line 743
    .end local v1           #i:I
    :cond_e4
    return-object p1
.end method

.method private AddEmailItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 8
    .parameter "vCard"

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 195
    .local v3, vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_57

    .line 197
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 199
    .restart local v3       #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 201
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 204
    :cond_1f
    if-eqz v3, :cond_51

    .line 206
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 195
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 209
    :cond_2c
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget v5, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, szType:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 211
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v2

    .line 213
    :cond_40
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 214
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 215
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 216
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 220
    .end local v2           #szType:Ljava/lang/String;
    :cond_51
    const-string v4, "vCardEnumItem is null!!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_29

    .line 223
    :cond_57
    return-void
.end method

.method private AddEmailItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 8
    .parameter "vCard"

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 652
    .local v3, vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4e

    .line 656
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 658
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_48

    .line 660
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget-object v5, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 661
    .local v2, nType:Ljava/lang/Integer;
    if-nez v2, :cond_31

    .line 662
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_EMAIL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerOtherType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 664
    :cond_31
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .end local v3           #vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 665
    .restart local v3       #vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    .line 666
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 668
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v2           #nType:Ljava/lang/Integer;
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 672
    :cond_48
    const-string v4, "contactData is null !!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_45

    .line 676
    .end local v1           #i:I
    :cond_4e
    return-object p1
.end method

.method private AddGroupItem(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 16
    .parameter "vCard"

    .prologue
    .line 415
    const/4 v8, 0x0

    .line 416
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 417
    .local v9, cursor1:Landroid/database/Cursor;
    invoke-static {}, Lcom/syncmldstmo/DSService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    .local v0, cResolver:Landroid/content/ContentResolver;
    const/4 v12, 0x0

    .line 420
    .local v12, groupid:I
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    if-eqz v1, :cond_9b

    .line 422
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_10e

    .line 426
    const/4 v13, 0x0

    .local v13, idx:I
    :goto_1a
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_9b

    .line 431
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    .line 432
    .local v2, from:[Ljava/lang/String;
    const-string v3, "account_name=\"vnd.sec.contact.phone\""

    .line 433
    .local v3, where:Ljava/lang/String;
    const-string v1, " AND notes is null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND title=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    :try_start_5b
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 440
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_9c

    .line 442
    const/high16 v1, 0x8

    const-string v4, "group not exist. so create group!!"

    invoke-static {v1, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 443
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v10, cv:Landroid/content/ContentValues;
    const-string v4, "title"

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v1, "group_visible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_93
    .catchall {:try_start_5b .. :try_end_93} :catchall_f2
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_93} :catch_e4

    move-result-object v1

    if-nez v1, :cond_9c

    .line 458
    if-eqz v8, :cond_9b

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 495
    .end local v2           #from:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #idx:I
    :cond_9b
    :goto_9b
    return-void

    .line 458
    .restart local v2       #from:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v13       #idx:I
    :cond_9c
    if-eqz v8, :cond_a1

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 464
    :cond_a1
    :goto_a1
    :try_start_a1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 465
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 467
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 470
    .local v6, colId:I
    :cond_b5
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 471
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bc
    .catchall {:try_start_a1 .. :try_end_bc} :catchall_107
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_bc} :catch_f9

    move-result v1

    if-nez v1, :cond_b5

    .line 480
    .end local v6           #colId:I
    :cond_bf
    if-eqz v9, :cond_c4

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_c4
    :goto_c4
    new-instance v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    invoke-direct {v7}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 485
    .local v7, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 486
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1a

    .line 452
    .end local v7           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    :catch_e4
    move-exception v11

    .line 454
    .local v11, e:Ljava/lang/Exception;
    :try_start_e5
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_f2

    .line 458
    if-eqz v8, :cond_a1

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    .line 458
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_f2
    move-exception v1

    if-eqz v8, :cond_f8

    .line 459
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_f8
    throw v1

    .line 474
    :catch_f9
    move-exception v11

    .line 476
    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_fa
    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_101
    .catchall {:try_start_fa .. :try_end_101} :catchall_107

    .line 480
    if-eqz v9, :cond_c4

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_c4

    .line 480
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_107
    move-exception v1

    if-eqz v9, :cond_10d

    .line 481
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_10d
    throw v1

    .line 492
    .end local v2           #from:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v13           #idx:I
    :cond_10e
    const-string v1, "vCard.GROUP.name is null!!"

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_9b
.end method

.method private AddGroupItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 7
    .parameter "vCard"

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 893
    .local v2, vCardGroup:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 895
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    .end local v2           #vCardGroup:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;
    invoke-direct {v2}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;-><init>()V

    .line 896
    .restart local v2       #vCardGroup:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_32

    .line 898
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 899
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_48

    .line 901
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 925
    :cond_32
    iput-object v2, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->GROUP:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;

    .line 927
    .end local v1           #i:I
    :cond_34
    return-object p1

    .line 904
    .restart local v1       #i:I
    :cond_35
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 896
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 907
    :cond_40
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardGroup_t;->name:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    .line 920
    :cond_48
    const-string v3, "contactData is null !!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private AddImItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 8
    .parameter "vCard"

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 352
    .local v3, vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4f

    .line 354
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 356
    .restart local v3       #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v3, :cond_49

    .line 358
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 352
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 361
    :cond_20
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget v5, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, szType:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 363
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v2

    .line 365
    :cond_34
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 366
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 367
    const-string v4, "3"

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 368
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 370
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 374
    .end local v2           #szType:Ljava/lang/String;
    :cond_49
    const-string v4, "vCardEnumItem is null!!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1d

    .line 377
    :cond_4f
    return-void
.end method

.method private AddImItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 8
    .parameter "vCard"

    .prologue
    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 823
    .local v3, vCardIm:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 825
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4e

    .line 827
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 828
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_48

    .line 830
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget-object v5, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 831
    .local v2, nType:Ljava/lang/Integer;
    if-nez v2, :cond_31

    .line 832
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_IM_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerOtherType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 834
    :cond_31
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .end local v3           #vCardIm:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 835
    .restart local v3       #vCardIm:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    .line 836
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 838
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->IMList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    .end local v2           #nType:Ljava/lang/Integer;
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 842
    :cond_48
    const-string v4, "contactData is null !!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_45

    .line 846
    .end local v1           #i:I
    :cond_4e
    return-object p1
.end method

.method private AddNameItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 5
    .parameter "vCard"

    .prologue
    .line 89
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 91
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 93
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_72

    .line 95
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 110
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 112
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    if-eqz v1, :cond_6c

    .line 114
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 115
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 117
    :cond_2c
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 118
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    .line 120
    :cond_3c
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 121
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 123
    :cond_4c
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 124
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    .line 126
    :cond_5c
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 127
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    .line 129
    :cond_6c
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void

    .line 99
    :cond_72
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    if-eqz v1, :cond_14

    .line 101
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ad

    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v2, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    goto/16 :goto_14

    .line 103
    :cond_ad
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 104
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    goto/16 :goto_14

    .line 105
    :cond_bf
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 106
    iget-object v1, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    iput-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    goto/16 :goto_14
.end method

.method private AddNameItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 9
    .parameter "vCard"

    .prologue
    const/4 v6, 0x0

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 539
    .local v2, vCardName:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    iput-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    .line 540
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;-><init>()V

    iput-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    .line 542
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 544
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 546
    .local v1, nIndex:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_96

    .line 548
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 549
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    const-string v4, ""

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 558
    .end local v1           #nIndex:I
    :cond_2d
    :goto_2d
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_95

    .line 560
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 561
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_93

    .line 563
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    .end local v2           #vCardName:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
    invoke-direct {v2}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;-><init>()V

    .line 565
    .restart local v2       #vCardName:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_50

    .line 566
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    .line 568
    :cond_50
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 569
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 571
    :cond_5c
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 572
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->prefix:Ljava/lang/String;

    .line 574
    :cond_68
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 575
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->addition:Ljava/lang/String;

    .line 577
    :cond_74
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 578
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->suffix:Ljava/lang/String;

    .line 580
    :cond_80
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_93

    .line 582
    :cond_90
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->isValid:Z

    .line 585
    :cond_93
    iput-object v2, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    .line 587
    :cond_95
    return-object p1

    .line 553
    .restart local v1       #nIndex:I
    :cond_96
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    .line 554
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->N:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;

    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    goto :goto_2d
.end method

.method private AddNickNameItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 6
    .parameter "vCard"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 137
    .local v2, nickname:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 139
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #nickname:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 141
    .restart local v2       #nickname:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 143
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 144
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 150
    :cond_28
    const-string v3, "vCardItem is null!!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25

    .line 153
    :cond_2e
    return-void
.end method

.method private AddNicknameItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 6
    .parameter "vCard"

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 595
    .local v2, vCardNickName:Ljava/lang/String;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2d

    .line 597
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 599
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 600
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_27

    .line 602
    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 604
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NICKList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 608
    :cond_27
    const-string v3, "contactData is null !!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_24

    .line 612
    .end local v1           #i:I
    :cond_2d
    return-object p1
.end method

.method private AddNoteItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 6
    .parameter "vCard"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 384
    .local v2, note:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 386
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #note:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 388
    .restart local v2       #note:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 390
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 391
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 393
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 397
    :cond_28
    const-string v3, "vCardItem is null!!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25

    .line 400
    :cond_2e
    return-void
.end method

.method private AddNoteItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 6
    .parameter "vCard"

    .prologue
    .line 851
    const/4 v0, 0x0

    .line 852
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 854
    .local v2, vCardNote:Ljava/lang/String;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2d

    .line 856
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 858
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 859
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_27

    .line 861
    iget-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 863
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->NOTEList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 867
    :cond_27
    const-string v3, "contactData is null !!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_24

    .line 871
    .end local v1           #i:I
    :cond_2d
    return-object p1
.end method

.method private AddOrgItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 6
    .parameter "vCard"

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 285
    .local v2, vCardOrgItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 287
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 288
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 291
    :cond_1b
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 293
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #vCardOrgItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    check-cast v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;

    .line 295
    .restart local v2       #vCardOrgItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    if-eqz v2, :cond_60

    .line 297
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 299
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 300
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 302
    :cond_3f
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 303
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    .line 311
    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 306
    :cond_53
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 308
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    goto :goto_4b

    .line 315
    :cond_60
    const-string v3, "vCardOrgItem is null!!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_50

    .line 318
    :cond_66
    return-void
.end method

.method private AddOrgItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 6
    .parameter "vCard"

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 751
    .local v2, vCardOrg:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6b

    .line 753
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6b

    .line 755
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 757
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_65

    .line 759
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 753
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 762
    :cond_28
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;

    .end local v2           #vCardOrg:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    invoke-direct {v2}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;-><init>()V

    .line 764
    .restart local v2       #vCardOrg:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;
    const/4 v3, 0x0

    iput v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->type:I

    .line 766
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 767
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    .line 769
    :cond_3c
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 771
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    iput-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TITLE:Ljava/lang/String;

    .line 772
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    .line 775
    :cond_4c
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->unit2:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 777
    :cond_5c
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardOrganization_t;->isValid:Z

    .line 780
    :cond_5f
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ORGList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 784
    :cond_65
    const-string v3, "contactData is null !!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_25

    .line 788
    .end local v1           #i:I
    :cond_6b
    return-object p1
.end method

.method private AddPhotoItem(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 3
    .parameter "vCard"

    .prologue
    .line 404
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    if-eqz v0, :cond_e

    .line 406
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 411
    :cond_e
    :goto_e
    return-void

    .line 409
    :cond_f
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    goto :goto_e
.end method

.method private AddPhotoItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 4
    .parameter "vCard"

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, vCardPhoto:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 880
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    .end local v0           #vCardPhoto:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;-><init>()V

    .line 882
    .restart local v0       #vCardPhoto:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;->Binary:Ljava/lang/String;

    .line 883
    iput-object v0, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->PHOTO:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardBinary_t;

    .line 885
    :cond_14
    return-object p1
.end method

.method private AddTelItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 8
    .parameter "vCard"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 160
    .local v3, vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_57

    .line 162
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 164
    .restart local v3       #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 166
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->FN:Ljava/lang/String;

    .line 169
    :cond_1f
    if-eqz v3, :cond_51

    .line 171
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 160
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 174
    :cond_2c
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget v5, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneType(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, szType:Ljava/lang/String;
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 176
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getPhoneOtherType()Ljava/lang/String;

    move-result-object v2

    .line 178
    :cond_40
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 179
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 180
    iput-object v2, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 181
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 185
    .end local v2           #szType:Ljava/lang/String;
    :cond_51
    const-string v4, "vCardEnumItem is null!!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_29

    .line 188
    :cond_57
    return-void
.end method

.method private AddTelItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 8
    .parameter "vCard"

    .prologue
    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v3, 0x0

    .line 620
    .local v3, vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4e

    .line 622
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4e

    .line 624
    iget-object v4, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 626
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_48

    .line 628
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    iget-object v5, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 629
    .local v2, nType:Ljava/lang/Integer;
    if-nez v2, :cond_31

    .line 630
    sget-object v4, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->TYPE_TEL_SERVER:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;

    invoke-virtual {v4}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlTypeHash;->getServerOtherType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 632
    :cond_31
    new-instance v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .end local v3           #vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-direct {v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 633
    .restart local v3       #vCardItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->type:I

    .line 634
    iget-object v4, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    iput-object v4, v3, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 636
    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    .end local v2           #nType:Ljava/lang/Integer;
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 640
    :cond_48
    const-string v4, "contactData is null !!"

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_45

    .line 644
    .end local v1           #i:I
    :cond_4e
    return-object p1
.end method

.method private AddUrlItemToList(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V
    .registers 6
    .parameter "vCard"

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 325
    .local v2, vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_39

    .line 327
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    check-cast v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .line 329
    .restart local v2       #vCardEnumItem:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    if-eqz v2, :cond_33

    .line 331
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 325
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 334
    :cond_20
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;-><init>()V

    .line 335
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    iget-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    .line 336
    const-string v3, "1"

    iput-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    .line 338
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 342
    :cond_33
    const-string v3, "vCardEnumItem is null!!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1d

    .line 345
    :cond_39
    return-void
.end method

.method private AddUrlItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 6
    .parameter "vCard"

    .prologue
    .line 793
    const/4 v0, 0x0

    .line 794
    .local v0, contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    const/4 v2, 0x0

    .line 796
    .local v2, vCardUrl:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_34

    .line 798
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_34

    .line 800
    iget-object v3, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    .line 801
    .restart local v0       #contactData:Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;
    if-eqz v0, :cond_2e

    .line 803
    new-instance v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;

    .end local v2           #vCardUrl:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    invoke-direct {v2}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;-><init>()V

    .line 805
    .restart local v2       #vCardUrl:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;
    iget-object v3, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    iput-object v3, v2, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    .line 807
    iget-object v3, p1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->URLList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 811
    :cond_2e
    const-string v3, "contactData is null !!"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_2b

    .line 815
    .end local v1           #i:I
    :cond_34
    return-object p1
.end method

.method public static DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    .registers 3
    .parameter "DecodeStr"

    .prologue
    .line 527
    invoke-static {p0}, Lcom/syncmldstmo/base/vitem/smlvCard;->DecodeVCard(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v1

    .line 528
    .local v1, v:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;

    invoke-direct {v0, v1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;-><init>(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)V

    .line 530
    .local v0, contact:Lcom/syncmldstmo/base/vitem/smlContactAdapter;
    return-object v0
.end method

.method public static addContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;I)I
    .registers 16
    .parameter "cResolver"
    .parameter "contactdb"
    .parameter "dbid"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    .line 975
    const/4 v3, 0x0

    .line 977
    .local v3, i:I
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    if-nez v7, :cond_e

    .line 978
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    .line 980
    :cond_e
    const-string v6, ""

    .line 981
    .local v6, sid:Ljava/lang/String;
    const/4 v5, 0x0

    .line 983
    .local v5, rawContactInsertIndex:I
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 985
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v9, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "account_type"

    const-string v11, "vnd.sec.contact.phone"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "account_name"

    const-string v11, "vnd.sec.contact.phone"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    if-eqz v7, :cond_f3

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f3

    .line 993
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data2"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data3"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data4"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data5"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data6"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data7"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data9"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data8"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_f3
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    if-eqz v7, :cond_134

    .line 1012
    const/4 v3, 0x0

    :goto_f8
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_134

    .line 1014
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/nickname"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    add-int/lit8 v3, v3, 0x1

    goto :goto_f8

    .line 1024
    :cond_134
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    if-eqz v7, :cond_185

    .line 1026
    const/4 v3, 0x0

    :goto_139
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_185

    .line 1028
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data2"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    add-int/lit8 v3, v3, 0x1

    goto :goto_139

    .line 1039
    :cond_185
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    if-eqz v7, :cond_1d6

    .line 1041
    const/4 v3, 0x0

    :goto_18a
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1d6

    .line 1043
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data2"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    add-int/lit8 v3, v3, 0x1

    goto :goto_18a

    .line 1054
    :cond_1d6
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    if-eqz v7, :cond_298

    .line 1056
    const/4 v3, 0x0

    :goto_1db
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_298

    .line 1058
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data2"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data3"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data4"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data5"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data6"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data7"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data8"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data9"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data10"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1db

    .line 1077
    :cond_298
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2f1

    .line 1079
    const/4 v3, 0x0

    :goto_29d
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2f1

    .line 1081
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/organization"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "data2"

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data4"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    add-int/lit8 v3, v3, 0x1

    goto :goto_29d

    .line 1093
    :cond_2f1
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    if-eqz v7, :cond_332

    .line 1095
    const/4 v3, 0x0

    :goto_2f6
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_332

    .line 1097
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/website"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f6

    .line 1107
    :cond_332
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    if-eqz v7, :cond_393

    .line 1109
    const/4 v3, 0x0

    :goto_337
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_393

    .line 1111
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/im"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data2"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data5"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v3, v3, 0x1

    goto :goto_337

    .line 1123
    :cond_393
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    if-eqz v7, :cond_3d4

    .line 1125
    const/4 v3, 0x0

    :goto_398
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3d4

    .line 1127
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/note"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    add-int/lit8 v3, v3, 0x1

    goto :goto_398

    .line 1137
    :cond_3d4
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_40d

    .line 1139
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/syncmldstmo/base/smlBase64;->decode([B)[B

    move-result-object v4

    .line 1141
    .local v4, photoRawData:[B
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "data15"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local v4           #photoRawData:[B
    :cond_40d
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_449

    .line 1152
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "data1"

    iget-object v11, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "data2"

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    :cond_449
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_484

    .line 1164
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "raw_contact_id"

    invoke-virtual {v9, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "data1"

    iget-object v11, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    const-string v10, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_484
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    if-eqz v7, :cond_4dd

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4dd

    .line 1176
    const/4 v3, 0x0

    :goto_491
    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4dd

    .line 1178
    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "raw_contact_id"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v10, "mimetype"

    const-string v11, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data1"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    const-string v11, "data3"

    iget-object v7, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v7, v7, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v10, v11, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v3, v3, 0x1

    goto :goto_491

    .line 1190
    :cond_4dd
    :try_start_4dd
    const-string v7, "com.android.contacts"

    sget-object v9, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 1193
    .local v1, cpResult:[Landroid/content/ContentProviderResult;
    aget-object v7, v1, v5

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_4f6
    .catch Ljava/lang/Exception; {:try_start_4dd .. :try_end_4f6} :catch_503

    .line 1200
    .end local v1           #cpResult:[Landroid/content/ContentProviderResult;
    :goto_4f6
    sget-object v7, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1202
    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_51f

    move v7, v8

    .line 1205
    :goto_502
    return v7

    .line 1195
    :catch_503
    move-exception v2

    .line 1197
    .local v2, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyBatch fail : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_4f6

    .line 1205
    .end local v2           #e:Ljava/lang/Exception;
    :cond_51f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_502
.end method

.method public static deleteAllContacts(Landroid/content/ContentResolver;)Z
    .registers 5
    .parameter "cResolver"

    .prologue
    .line 1232
    const-string v1, "account_name=\"vnd.sec.contact.phone\""

    .line 1236
    .local v1, where:Ljava/lang/String;
    :try_start_2
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_d

    move-result v2

    if-lez v2, :cond_28

    .line 1237
    const/4 v2, 0x1

    .line 1244
    :goto_c
    return v2

    .line 1239
    :catch_d
    move-exception v0

    .line 1241
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RawContacts db delete fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    .line 1244
    .end local v0           #e:Ljava/lang/Exception;
    :cond_28
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static deleteContact(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 8
    .parameter "cResolver"
    .parameter "luid"

    .prologue
    const/4 v2, 0x0

    .line 1210
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1211
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1215
    :try_start_a
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_38

    .line 1217
    const-string v3, "RawContacts db delete fail"

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    .line 1227
    :goto_1b
    return v2

    .line 1221
    :catch_1c
    move-exception v1

    .line 1223
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawContacts db delete fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1b

    .line 1227
    .end local v1           #e:Ljava/lang/Exception;
    :cond_38
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public static replaceContact(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;II)Z
    .registers 8
    .parameter "cResolver"
    .parameter "contactdb"
    .parameter "luid"
    .parameter "nServerType"

    .prologue
    .line 1249
    iput p2, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1250
    const/4 v1, 0x1

    .line 1253
    .local v1, ret:Z
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    if-nez v2, :cond_e

    .line 1254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    .line 1258
    :cond_e
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactName(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1263
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactNicknameList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1269
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactNoteList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1273
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactTelList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1277
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactEmailList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1281
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactImList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1285
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactAddrList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1289
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactOrgList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1293
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactUrlList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1298
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactGroupList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1302
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactPhoto(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1306
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactBirthday(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1312
    const/4 v2, 0x1

    if-eq p3, v2, :cond_38

    .line 1314
    invoke-static {p0, p1}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->updateContactAnniversary(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V

    .line 1320
    :cond_38
    :try_start_38
    const-string v2, "com.android.contacts"

    sget-object v3, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3f} :catch_45

    .line 1327
    :goto_3f
    sget-object v2, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1329
    return v1

    .line 1322
    :catch_45
    move-exception v0

    .line 1324
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBatch fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method private static updateContactAddrList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1630
    const/4 v6, 0x0

    .line 1631
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1632
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1633
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1634
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1636
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1640
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1642
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1643
    if-lez v10, :cond_83

    .line 1645
    const/4 v11, 0x0

    .line 1646
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1650
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1651
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1654
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_146

    move-result v0

    if-nez v0, :cond_54

    .line 1664
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1665
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1668
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_15c

    .line 1670
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data3"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data4"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data5"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data6"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data7"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data8"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data9"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data10"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->addrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data10:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_89

    .line 1658
    :catch_146
    move-exception v7

    .line 1660
    .local v7, e:Ljava/lang/Exception;
    :try_start_147
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_14e
    .catchall {:try_start_147 .. :try_end_14e} :catchall_155

    .line 1664
    if-eqz v6, :cond_88

    .line 1665
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_88

    .line 1664
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_155
    move-exception v0

    if-eqz v6, :cond_15b

    .line 1665
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_15b
    throw v0

    .line 1678
    :cond_15c
    return-void
.end method

.method private static updateContactAnniversary(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 14
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    const/4 v11, 0x1

    .line 1919
    const/4 v6, 0x0

    .line 1920
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1921
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1922
    .local v9, nCount:I
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1924
    .local v8, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1929
    :try_start_5d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1931
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1932
    if-lez v9, :cond_9c

    .line 1934
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1936
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_5d .. :try_end_9c} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9c} :catch_dd

    .line 1947
    :cond_9c
    if-eqz v6, :cond_a1

    .line 1948
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1951
    :cond_a1
    :goto_a1
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1953
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1957
    :cond_dc
    return-void

    .line 1941
    :catch_dd
    move-exception v7

    .line 1943
    .local v7, e:Ljava/lang/Exception;
    :try_start_de
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_eb

    .line 1947
    if-eqz v6, :cond_a1

    .line 1948
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    .line 1947
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_eb
    move-exception v0

    if-eqz v6, :cond_f1

    .line 1948
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f1
    throw v0
.end method

.method private static updateContactBirthday(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 14
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    const/4 v11, 0x3

    .line 1877
    const/4 v6, 0x0

    .line 1878
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1879
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1880
    .local v9, nCount:I
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1882
    .local v8, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1887
    :try_start_5d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1889
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1890
    if-lez v9, :cond_9c

    .line 1892
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 1894
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_5d .. :try_end_9c} :catchall_eb
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_9c} :catch_dd

    .line 1905
    :cond_9c
    if-eqz v6, :cond_a1

    .line 1906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1909
    :cond_a1
    :goto_a1
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1911
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data1"

    iget-object v4, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    :cond_dc
    return-void

    .line 1899
    :catch_dd
    move-exception v7

    .line 1901
    .local v7, e:Ljava/lang/Exception;
    :try_start_de
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_eb

    .line 1905
    if-eqz v6, :cond_a1

    .line 1906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    .line 1905
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_eb
    move-exception v0

    if-eqz v6, :cond_f1

    .line 1906
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f1
    throw v0
.end method

.method private static updateContactEmailList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1527
    const/4 v6, 0x0

    .line 1528
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1529
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1530
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1531
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1533
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1537
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1539
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1540
    if-lez v10, :cond_83

    .line 1542
    const/4 v11, 0x0

    .line 1543
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1547
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1548
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_e5

    move-result v0

    if-nez v0, :cond_54

    .line 1561
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1565
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_fa

    .line 1567
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data3"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1555
    :catch_e5
    move-exception v7

    .line 1557
    .local v7, e:Ljava/lang/Exception;
    :try_start_e6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_f3

    .line 1561
    if-eqz v6, :cond_88

    .line 1562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1561
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_f3
    move-exception v0

    if-eqz v6, :cond_f9

    .line 1562
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f9
    throw v0

    .line 1573
    :cond_fa
    return-void
.end method

.method private static updateContactGroupList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1780
    const/4 v6, 0x0

    .line 1781
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1782
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1783
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1784
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1786
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1790
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1792
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1793
    if-lez v10, :cond_83

    .line 1795
    const/4 v11, 0x0

    .line 1796
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1800
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1801
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_d5

    move-result v0

    if-nez v0, :cond_54

    .line 1814
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1818
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_ea

    .line 1820
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data3"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->group:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1818
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1808
    :catch_d5
    move-exception v7

    .line 1810
    .local v7, e:Ljava/lang/Exception;
    :try_start_d6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_e3

    .line 1814
    if-eqz v6, :cond_88

    .line 1815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1814
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_e3
    move-exception v0

    if-eqz v6, :cond_e9

    .line 1815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_e9
    throw v0

    .line 1827
    :cond_ea
    return-void
.end method

.method private static updateContactImList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1577
    const/4 v6, 0x0

    .line 1578
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1579
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1580
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1581
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1583
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1587
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1589
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1590
    if-lez v10, :cond_83

    .line 1592
    const/4 v11, 0x0

    .line 1593
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1597
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1598
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_103
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_f5

    move-result v0

    if-nez v0, :cond_54

    .line 1611
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1612
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1615
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_10a

    .line 1617
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data5"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data6"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->imList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1605
    :catch_f5
    move-exception v7

    .line 1607
    .local v7, e:Ljava/lang/Exception;
    :try_start_f6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_103

    .line 1611
    if-eqz v6, :cond_88

    .line 1612
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1611
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_103
    move-exception v0

    if-eqz v6, :cond_109

    .line 1612
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_109
    throw v0

    .line 1626
    :cond_10a
    return-void
.end method

.method private static updateContactName(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 14
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    const/4 v11, 0x0

    .line 1334
    const/4 v6, 0x0

    .line 1335
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1336
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1337
    .local v9, nCount:I
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1339
    .local v8, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1343
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1345
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1346
    if-lez v9, :cond_7c

    .line 1348
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1350
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "_id"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catchall {:try_start_3d .. :try_end_7c} :catchall_13a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7c} :catch_12b

    .line 1361
    :cond_7c
    if-eqz v6, :cond_81

    .line 1362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1365
    :cond_81
    :goto_81
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_12a

    .line 1367
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data3"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data5"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data5:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data4"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data6"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data6:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data9"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data9:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data7"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data7:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data8"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data8:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    :cond_12a
    return-void

    .line 1355
    :catch_12b
    move-exception v7

    .line 1357
    .local v7, e:Ljava/lang/Exception;
    :try_start_12c
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_12c .. :try_end_133} :catchall_13a

    .line 1361
    if-eqz v6, :cond_81

    .line 1362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_81

    .line 1361
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_13a
    move-exception v0

    if-eqz v6, :cond_140

    .line 1362
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_140
    throw v0
.end method

.method private static updateContactNicknameList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1379
    const/4 v6, 0x0

    .line 1380
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1381
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1382
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1383
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1385
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1389
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1391
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1392
    if-lez v10, :cond_83

    .line 1394
    const/4 v11, 0x0

    .line 1395
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1399
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1401
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_d3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_c5

    move-result v0

    if-nez v0, :cond_54

    .line 1414
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1418
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_da

    .line 1420
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->nickList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1418
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1408
    :catch_c5
    move-exception v7

    .line 1410
    .local v7, e:Ljava/lang/Exception;
    :try_start_c6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d3

    .line 1414
    if-eqz v6, :cond_88

    .line 1415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1414
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_d3
    move-exception v0

    if-eqz v6, :cond_d9

    .line 1415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d9
    throw v0

    .line 1424
    :cond_da
    return-void
.end method

.method private static updateContactNoteList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1428
    const/4 v6, 0x0

    .line 1429
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1430
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1431
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1432
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1434
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1438
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1440
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1441
    if-lez v10, :cond_83

    .line 1443
    const/4 v11, 0x0

    .line 1444
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1448
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1449
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_d3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_c5

    move-result v0

    if-nez v0, :cond_54

    .line 1462
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1466
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_da

    .line 1468
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->noteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1466
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1456
    :catch_c5
    move-exception v7

    .line 1458
    .local v7, e:Ljava/lang/Exception;
    :try_start_c6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d3

    .line 1462
    if-eqz v6, :cond_88

    .line 1463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1462
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_d3
    move-exception v0

    if-eqz v6, :cond_d9

    .line 1463
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d9
    throw v0

    .line 1473
    :cond_da
    return-void
.end method

.method private static updateContactOrgList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1682
    const/4 v6, 0x0

    .line 1683
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1684
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1685
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1686
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1688
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1692
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1694
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1695
    if-lez v10, :cond_83

    .line 1697
    const/4 v11, 0x0

    .line 1698
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1702
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1703
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_f3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_e5

    move-result v0

    if-nez v0, :cond_54

    .line 1716
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1717
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1721
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_fa

    .line 1723
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data4"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->orgList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data4:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1710
    :catch_e5
    move-exception v7

    .line 1712
    .local v7, e:Ljava/lang/Exception;
    :try_start_e6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_e6 .. :try_end_ed} :catchall_f3

    .line 1716
    if-eqz v6, :cond_88

    .line 1717
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1716
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_f3
    move-exception v0

    if-eqz v6, :cond_f9

    .line 1717
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f9
    throw v0

    .line 1728
    :cond_fa
    return-void
.end method

.method private static updateContactPhoto(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 14
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1831
    const/4 v6, 0x0

    .line 1832
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1833
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1834
    .local v9, nCount:I
    iget v8, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1836
    .local v8, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1840
    :try_start_3c
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1842
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1843
    if-lez v9, :cond_82

    .line 1845
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1847
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "_id"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data15"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_82
    .catchall {:try_start_3c .. :try_end_82} :catchall_cf
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_82} :catch_c1

    .line 1858
    :cond_82
    if-eqz v6, :cond_87

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1862
    :cond_87
    :goto_87
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1865
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->photo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlBase64;->decode([B)[B

    move-result-object v10

    .line 1867
    .local v10, photoRawData:[B
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "raw_contact_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data15"

    invoke-virtual {v1, v2, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    .end local v10           #photoRawData:[B
    :cond_c0
    return-void

    .line 1852
    :catch_c1
    move-exception v7

    .line 1854
    .local v7, e:Ljava/lang/Exception;
    :try_start_c2
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_cf

    .line 1858
    if-eqz v6, :cond_87

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_87

    .line 1858
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_cf
    move-exception v0

    if-eqz v6, :cond_d5

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d5
    throw v0
.end method

.method private static updateContactTelList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1477
    const/4 v6, 0x0

    .line 1478
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1479
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1480
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1481
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1483
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1487
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1489
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1490
    if-lez v10, :cond_83

    .line 1492
    const/4 v11, 0x0

    .line 1493
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1497
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1498
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_103
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_f5

    move-result v0

    if-nez v0, :cond_54

    .line 1511
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1512
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1515
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_10a

    .line 1517
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data2"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data2:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data15"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data15:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data3"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->telList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data3:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1505
    :catch_f5
    move-exception v7

    .line 1507
    .local v7, e:Ljava/lang/Exception;
    :try_start_f6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_103

    .line 1511
    if-eqz v6, :cond_88

    .line 1512
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1511
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_103
    move-exception v0

    if-eqz v6, :cond_109

    .line 1512
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_109
    throw v0

    .line 1523
    :cond_10a
    return-void
.end method

.method private static updateContactUrlList(Landroid/content/ContentResolver;Lcom/syncmldstmo/base/vitem/smlContactAdapter;)V
    .registers 15
    .parameter "cResolver"
    .parameter "contactdb"

    .prologue
    .line 1732
    const/4 v6, 0x0

    .line 1733
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1734
    .local v3, where:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1735
    .local v10, nCount:I
    const/4 v8, 0x0

    .line 1736
    .local v8, i:I
    iget v9, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    .line 1738
    .local v9, luid:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1742
    :try_start_3d
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1744
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 1745
    if-lez v10, :cond_83

    .line 1747
    const/4 v11, 0x0

    .line 1748
    .local v11, nId:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1752
    :cond_54
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1753
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1756
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_80
    .catchall {:try_start_3d .. :try_end_80} :catchall_d3
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_80} :catch_c5

    move-result v0

    if-nez v0, :cond_54

    .line 1766
    .end local v11           #nId:I
    :cond_83
    if-eqz v6, :cond_88

    .line 1767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1770
    :cond_88
    :goto_88
    const/4 v8, 0x0

    :goto_89
    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_da

    .line 1772
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ops:Ljava/util/ArrayList;

    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "raw_contact_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v2, "mimetype"

    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v4, "data1"

    iget-object v0, p1, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->urlList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;

    iget-object v0, v0, Lcom/syncmldstmo/base/vitem/smlContactInterface$smlContactData;->Data1:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1770
    add-int/lit8 v8, v8, 0x1

    goto :goto_89

    .line 1760
    :catch_c5
    move-exception v7

    .line 1762
    .local v7, e:Ljava/lang/Exception;
    :try_start_c6
    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_d3

    .line 1766
    if-eqz v6, :cond_88

    .line 1767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 1766
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_d3
    move-exception v0

    if-eqz v6, :cond_d9

    .line 1767
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d9
    throw v0

    .line 1776
    :cond_da
    return-void
.end method


# virtual methods
.method public EncodeVCard()Ljava/lang/String;
    .registers 3

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->ToSmlvCard_t()Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v1

    .line 968
    .local v1, vCard:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    invoke-static {v1}, Lcom/syncmldstmo/base/vitem/smlvCard;->EncodeVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, szEncoded:Ljava/lang/String;
    return-object v0
.end method

.method public ToSmlvCard_t()Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    .registers 3

    .prologue
    .line 934
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    invoke-direct {v0}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;-><init>()V

    .line 936
    .local v0, vCard:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;
    iget v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->_id:I

    iput v1, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->luid:I

    .line 937
    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->VERSION:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    .line 938
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->birthday:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->BDAY:Ljava/lang/String;

    .line 939
    iget-object v1, p0, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->anniversary:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;->ANNI:Ljava/lang/String;

    .line 950
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNameItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 951
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNicknameItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 952
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddTelItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 953
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddEmailItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 954
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddAddrItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 955
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddOrgItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 956
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddUrlItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 957
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddImItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 958
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddNoteItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 959
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddPhotoItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 960
    invoke-direct {p0, v0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->AddGroupItemToVCard(Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCard_t;

    move-result-object v0

    .line 962
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/syncmldstmo/base/vitem/smlContactAdapter;->EncodeVCard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
