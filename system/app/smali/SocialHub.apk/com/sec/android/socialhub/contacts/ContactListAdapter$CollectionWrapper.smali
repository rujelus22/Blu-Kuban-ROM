.class public Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;
.super Ljava/lang/Object;
.source "ContactListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contacts/ContactListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionWrapper"
.end annotation


# instance fields
.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectionListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;>;"
    .local p2, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 431
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    .line 427
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    .line 428
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mSelectionListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 432
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    .line 433
    iput-object p2, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    .line 434
    return-void
.end method

.method private invoke()V
    .registers 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mSelectionListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    .line 488
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mSelectionListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    iget-object v1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;->chnageSelectedCount(I)V

    .line 490
    :cond_13
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 472
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 474
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 475
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    :goto_12
    invoke-direct {p0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->invoke()V

    .line 482
    return-void

    .line 479
    :cond_16
    const-string v0, "ContactListAdapter"

    const-string v1, "clear()"

    const-string v2, "error something null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public put(Ljava/lang/String;Lcom/sec/android/socialhub/contacts/ContactModel;)V
    .registers 6
    .parameter "id"
    .parameter "model"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 445
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    :goto_12
    invoke-direct {p0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->invoke()V

    .line 454
    return-void

    .line 450
    :cond_16
    const-string v0, "ContactListAdapter"

    const-string v1, "put()"

    const-string v2, "error something null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public remove(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 460
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 467
    :goto_12
    invoke-direct {p0}, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->invoke()V

    .line 468
    return-void

    .line 465
    :cond_16
    const-string v0, "ContactListAdapter"

    const-string v1, "remove()"

    const-string v2, "error something null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public setOnSelectionChangedListener(Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactListAdapter$CollectionWrapper;->mSelectionListener:Lcom/sec/android/socialhub/contacts/ContactListView$IContactCheckedChangedListener;

    .line 439
    return-void
.end method
