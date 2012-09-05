.class Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructuredNameLookupBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V
    .registers 3
    .parameter
    .parameter "splitter"

    .prologue
    .line 11253
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 11254
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 11255
    return-void
.end method


# virtual methods
.method public convertHangulJamo(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "name"

    .prologue
    .line 11271
    const/4 v3, 0x0

    .line 11272
    .local v3, position:I
    const/4 v1, 0x0

    .line 11273
    .local v1, consonantLength:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11276
    .local v2, filterBuilder:Ljava/lang/StringBuilder;
    :goto_7
    add-int/lit8 v4, v3, 0x1

    .end local v3           #position:I
    .local v4, position:I
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 11280
    .local v0, character:I
    const/16 v5, 0x3131

    if-lt v0, v5, :cond_1d

    const/16 v5, 0x314e

    if-gt v0, v5, :cond_1d

    .line 11281
    sget-object v5, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->KOREAN_JAUM_CONVERT_MAP:[I

    add-int/lit16 v6, v0, -0x3131

    aget v0, v5, v6

    .line 11282
    if-nez v0, :cond_1e

    .line 11294
    .end local p1
    :cond_1d
    :goto_1d
    return-object p1

    .line 11290
    .restart local p1
    :cond_1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 11291
    add-int/lit8 v1, v1, 0x1

    .line 11292
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_2e

    .line 11294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    :cond_2e
    move v3, v4

    .end local v4           #position:I
    .restart local v3       #position:I
    goto :goto_7
.end method

.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter "normalizedName"

    .prologue
    .line 11265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$1100(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .registers 14
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 11260
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    #getter for: Lcom/android/providers/contacts/ContactsProvider2;->mDbHelper:Ljava/lang/ThreadLocal;
    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->access$1000(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 11261
    return-void
.end method
