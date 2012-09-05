.class Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
.super Ljava/util/StringTokenizer;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NameSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameTokenizer"
.end annotation


# instance fields
.field private mCommaBitmask:I

.field private mDotBitmask:I

.field private mEndPointer:I

.field private mStartPointer:I

.field private final mTokens:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "fullName"

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 226
    const-string v2, " .,"

    invoke-direct {p0, p1, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 228
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    .line 232
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_66

    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-ge v2, v6, :cond_66

    .line 233
    invoke-virtual {p0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, token:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 235
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 236
    .local v0, c:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_d

    .line 241
    .end local v0           #c:C
    :cond_29
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v2, :cond_41

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_41

    .line 242
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v5, v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    goto :goto_d

    .line 243
    :cond_41
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    if-lez v2, :cond_59

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_59

    .line 244
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v5, v3

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    goto :goto_d

    .line 246
    :cond_59
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    iget v3, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    aput-object v1, v2, v3

    .line 247
    iget v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    goto :goto_d

    .line 250
    .end local v1           #token:Ljava/lang/String;
    :cond_66
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mStartPointer:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    iput p1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return p1
.end method

.method static synthetic access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 218
    iget v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mEndPointer:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mTokens:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public hasComma(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 263
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mCommaBitmask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasDot(I)Z
    .registers 5
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 256
    iget v1, p0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->mDotBitmask:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
