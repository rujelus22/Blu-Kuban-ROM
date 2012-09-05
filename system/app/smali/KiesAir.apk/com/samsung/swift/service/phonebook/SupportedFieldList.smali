.class public Lcom/samsung/swift/service/phonebook/SupportedFieldList;
.super Ljava/lang/Object;
.source "SupportedFieldList.java"


# static fields
.field public static final FULLNAME:Ljava/lang/String; = "fullname"

.field public static final HOME_EMAIL:Ljava/lang/String; = "homeEmail"

.field public static final MOBILE_NUMBER:Ljava/lang/String; = "mobilePhoneNumber"


# instance fields
.field private fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    .line 109
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .parameter "field"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {p0}, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->incTotalSize()V

    .line 147
    return-void
.end method

.method public asArray()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 113
    iget-object v1, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 114
    .local v0, array:[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 115
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public incTotalSize()V
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    .line 141
    return-void
.end method

.method public setTotalSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 135
    iput p1, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    .line 136
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public totalSize()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/swift/service/phonebook/SupportedFieldList;->totalSize:I

    return v0
.end method
