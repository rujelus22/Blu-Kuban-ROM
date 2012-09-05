.class public Lcom/vlingo/client/core/contacts/DisplayItem;
.super Ljava/lang/Object;
.source "DisplayItem.java"


# instance fields
.field public contact:Lcom/vlingo/client/core/contacts/VlingoContact;

.field public detailIndex:I


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/contacts/VlingoContact;I)V
    .registers 3
    .parameter "contact"
    .parameter "detailIndex"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 19
    iput p2, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    .line 20
    return-void
.end method


# virtual methods
.method public getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    iget v1, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->detailIndex:I

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->getDetail(I)Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v0

    return-object v0
.end method

.method public getContactId()I
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v0

    return v0
.end method
