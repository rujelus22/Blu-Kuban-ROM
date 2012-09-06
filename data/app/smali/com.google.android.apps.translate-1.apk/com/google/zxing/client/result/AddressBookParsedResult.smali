.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "AddressBookParsedResult.java"


# instance fields
.field private final addresses:[Ljava/lang/String;

.field private final birthday:Ljava/lang/String;

.field private final emails:[Ljava/lang/String;

.field private final names:[Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final org:Ljava/lang/String;

.field private final phoneNumbers:[Ljava/lang/String;

.field private final pronunciation:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "names"
    .parameter "pronunciation"
    .parameter "phoneNumbers"
    .parameter "emails"
    .parameter "note"
    .parameter "addresses"
    .parameter "org"
    .parameter "birthday"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 45
    sget-object v0, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v0}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 51
    iput-object p6, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 52
    iput-object p7, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    .line 53
    iput-object p8, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    .line 54
    iput-object p9, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    .line 55
    iput-object p10, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public getAddresses()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    .local v0, result:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 110
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 111
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 112
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 113
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 114
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 115
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 116
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 117
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 118
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEmails()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->url:Ljava/lang/String;

    return-object v0
.end method
