.class Lcom/google/common/flags/FlagDescription;
.super Ljava/lang/Object;
.source "FlagDescription.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/flags/FlagDescription$1;,
        Lcom/google/common/flags/FlagDescription$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/flags/FlagDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private final altName:Ljava/lang/String;

.field private final containerClassName:Ljava/lang/String;

.field private final doc:Ljava/lang/String;

.field private final docLevel:Lcom/google/common/flags/DocLevel;

.field private final shortFlagName:Ljava/lang/String;

.field private final simpleFieldName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;)V
    .registers 9
    .parameter "shortFlagName"
    .parameter "containerClassName"
    .parameter "simpleFieldName"
    .parameter "type"
    .parameter "doc"
    .parameter "docLevel"
    .parameter "altName"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 212
    :cond_b
    if-nez p4, :cond_13

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 213
    :cond_13
    if-nez p5, :cond_1b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 214
    :cond_1b
    if-nez p6, :cond_23

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 216
    :cond_23
    invoke-static {p1}, Lcom/google/common/flags/FlagDescription;->emptyStringToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flags/FlagDescription;->shortFlagName:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/google/common/flags/FlagDescription;->containerClassName:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/google/common/flags/FlagDescription;->simpleFieldName:Ljava/lang/String;

    .line 219
    iput-object p4, p0, Lcom/google/common/flags/FlagDescription;->type:Ljava/lang/String;

    .line 220
    iput-object p5, p0, Lcom/google/common/flags/FlagDescription;->doc:Ljava/lang/String;

    .line 221
    iput-object p6, p0, Lcom/google/common/flags/FlagDescription;->docLevel:Lcom/google/common/flags/DocLevel;

    .line 222
    invoke-static {p7}, Lcom/google/common/flags/FlagDescription;->emptyStringToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/flags/FlagDescription;->altName:Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isField()Z

    move-result v0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isShortFlagNameSpecified()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 225
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 228
    :cond_4b
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flags/FlagDescription;->checkNotReserved(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flags/FlagDescription;->checkNotReserved(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;Lcom/google/common/flags/FlagDescription$1;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p7}, Lcom/google/common/flags/FlagDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;)V

    return-void
.end method

.method private static checkNotReserved(Ljava/lang/String;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 234
    if-eqz p0, :cond_41

    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "helpxml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "flagfile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "flagresource"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 237
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag is built-in and may not be registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_41
    return-void
.end method

.method static createFlagFromField(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 5
    .parameter "fullyQualifiedFieldName"

    .prologue
    .line 253
    new-instance v0, Lcom/google/common/flags/FlagDescription$Builder;

    invoke-static {p0}, Lcom/google/common/flags/FlagDescription;->parseContainerClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/google/common/flags/FlagDescription;->parseSimpleFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/flags/FlagDescription$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/FlagDescription$1;)V

    return-object v0
.end method

.method static createManuallyRegisteredFlag(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;
    .registers 4
    .parameter "shortFlagName"
    .parameter "containerClassName"

    .prologue
    const/4 v1, 0x0

    .line 277
    new-instance v0, Lcom/google/common/flags/FlagDescription$Builder;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/common/flags/FlagDescription$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/FlagDescription$1;)V

    invoke-static {p0}, Lcom/google/common/flags/FlagDescription;->stripFlagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/flags/FlagDescription$Builder;->shortFlagName(Ljava/lang/String;)Lcom/google/common/flags/FlagDescription$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static emptyStringToNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "string"

    .prologue
    .line 492
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method private static findLastDotIndex(Ljava/lang/String;)I
    .registers 5
    .parameter "name"

    .prologue
    .line 479
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, idx:I
    if-gtz v0, :cond_21

    .line 481
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name required in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    :cond_21
    return v0
.end method

.method private static nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "left"
    .parameter "right"

    .prologue
    .line 488
    if-nez p0, :cond_8

    if-ne p0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private static parseContainerClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "fullyQualifiedName"

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/google/common/flags/FlagDescription;->findLastDotIndex(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseSimpleFieldName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "fullyQualifiedName"

    .prologue
    .line 464
    invoke-static {p0}, Lcom/google/common/flags/FlagDescription;->findLastDotIndex(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static stripFlagPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "flagName"

    .prologue
    .line 455
    const-string v0, "FLAG_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_d
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/google/common/flags/FlagDescription;)I
    .registers 4
    .parameter "o"

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, Lcom/google/common/flags/FlagDescription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/flags/FlagDescription;->compareTo(Lcom/google/common/flags/FlagDescription;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 425
    instance-of v2, p1, Lcom/google/common/flags/FlagDescription;

    if-nez v2, :cond_6

    .line 427
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 426
    check-cast v0, Lcom/google/common/flags/FlagDescription;

    .line 427
    .local v0, o:Lcom/google/common/flags/FlagDescription;
    if-eq v0, p0, :cond_55

    invoke-virtual {v0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->containerClassName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->containerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->simpleFieldName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->simpleFieldName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/flags/FlagDescription;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->doc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->doc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->docLevel:Lcom/google/common/flags/DocLevel;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->docLevel:Lcom/google/common/flags/DocLevel;

    invoke-virtual {v2, v3}, Lcom/google/common/flags/DocLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/common/flags/FlagDescription;->altName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/common/flags/FlagDescription;->altName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/flags/FlagDescription;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_55
    const/4 v1, 0x1

    goto :goto_5
.end method

.method getAltName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->altName:Ljava/lang/String;

    return-object v0
.end method

.method getContainerClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->containerClassName:Ljava/lang/String;

    return-object v0
.end method

.method getDoc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->doc:Ljava/lang/String;

    return-object v0
.end method

.method getDocLevel()Lcom/google/common/flags/DocLevel;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->docLevel:Lcom/google/common/flags/DocLevel;

    return-object v0
.end method

.method getFullyQualifiedFieldName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getSimpleFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLongFlagName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getContainerClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getShortFlagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isShortFlagNameSpecified()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->shortFlagName:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getSimpleFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/flags/FlagDescription;->stripFlagPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method getSimpleFieldName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isField()Z

    move-result v0

    if-nez v0, :cond_29

    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not associated with a field"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_29
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->simpleFieldName:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isField()Z
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->simpleFieldName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isPositiveFormOfName(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 409
    if-nez p1, :cond_4

    .line 412
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getShortFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getAltName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->isField()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getFullyQualifiedFieldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_32
    const/4 v0, 0x1

    goto :goto_3
.end method

.method isShortFlagNameSpecified()Z
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/common/flags/FlagDescription;->shortFlagName:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/google/common/flags/FlagDescription;->getLongFlagName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
