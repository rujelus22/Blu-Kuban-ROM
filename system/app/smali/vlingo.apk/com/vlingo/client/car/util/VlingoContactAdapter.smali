.class public abstract Lcom/vlingo/client/car/util/VlingoContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "VlingoContactAdapter.java"


# instance fields
.field protected contacts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private noMatchFoundMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "noMatchFoundMessage"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    .line 27
    iput-object p2, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->noMatchFoundMessage:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method protected abstract fetchContacts()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation
.end method

.method public getContact(I)Lcom/vlingo/client/core/contacts/VlingoContact;
    .registers 3
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/VlingoContact;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 38
    :cond_c
    const/4 v0, 0x1

    .line 40
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 78
    iget-object v1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    if-nez v1, :cond_18

    .line 79
    iget-object v1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09023c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->createTextOnly(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v0

    .line 85
    :goto_17
    return-object v0

    .line 81
    :cond_18
    iget-object v1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 82
    iget-object v1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->noMatchFoundMessage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;->createTextOnly(Landroid/content/Context;Ljava/lang/String;)Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;

    move-result-object v0

    .line 83
    .local v0, item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    goto :goto_17

    .line 85
    .end local v0           #item:Lcom/vlingo/client/superdialer/items/SDItemTextWithAccessoryView;
    :cond_29
    invoke-virtual {p0, p1, p2, p3}, Lcom/vlingo/client/car/util/VlingoContactAdapter;->getRowView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_17
.end method

.method public populateAsync()V
    .registers 4

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vlingo/client/car/util/VlingoContactAdapter$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/util/VlingoContactAdapter$1;-><init>(Lcom/vlingo/client/car/util/VlingoContactAdapter;)V

    const-string v2, "VlingoContactAdapter Fetch"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    return-void
.end method

.method public setContacts(Ljava/util/Vector;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, contacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    iput-object p1, p0, Lcom/vlingo/client/car/util/VlingoContactAdapter;->contacts:Ljava/util/Vector;

    .line 33
    invoke-virtual {p0}, Lcom/vlingo/client/car/util/VlingoContactAdapter;->notifyDataSetChanged()V

    .line 34
    return-void
.end method
