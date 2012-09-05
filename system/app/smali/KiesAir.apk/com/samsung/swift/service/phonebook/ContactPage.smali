.class public Lcom/samsung/swift/service/phonebook/ContactPage;
.super Ljava/lang/Object;
.source "ContactPage.java"


# instance fields
.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/swift/service/phonebook/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private totalSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    .line 105
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/swift/service/phonebook/Contact;)V
    .registers 3
    .parameter "contact"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public asArray()[Lcom/samsung/swift/service/phonebook/Contact;
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/samsung/swift/service/phonebook/Contact;

    .line 110
    .local v0, array:[Lcom/samsung/swift/service/phonebook/Contact;
    iget-object v1, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 111
    return-object v0
.end method

.method public get(I)Lcom/samsung/swift/service/phonebook/Contact;
    .registers 3
    .parameter "index"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/phonebook/Contact;

    return-object v0
.end method

.method public incTotalSize()V
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    .line 132
    return-void
.end method

.method public set(ILcom/samsung/swift/service/phonebook/Contact;)V
    .registers 4
    .parameter "index"
    .parameter "contact"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public setTotalSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 126
    iput p1, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    .line 127
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public totalSize()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/samsung/swift/service/phonebook/ContactPage;->totalSize:I

    return v0
.end method
