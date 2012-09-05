.class public Lorg/columba/ristretto/imap/NamespaceCollection;
.super Ljava/lang/Object;
.source "NamespaceCollection.java"


# static fields
.field public static final OTHER_USER:I = 0x1

.field public static final PERSONAL:I = 0x0

.field public static final SHARED:I = 0x2


# instance fields
.field private otherUser:Ljava/util/List;

.field private personal:Ljava/util/List;

.field private shared:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    .line 76
    return-void
.end method


# virtual methods
.method public addNamespace(ILorg/columba/ristretto/imap/Namespace;)V
    .registers 3
    .parameter "type"
    .parameter "ns"

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_10

    .line 214
    :goto_3
    return-void

    .line 200
    :pswitch_4
    invoke-virtual {p0, p2}, Lorg/columba/ristretto/imap/NamespaceCollection;->addPersonalNamespace(Lorg/columba/ristretto/imap/Namespace;)V

    goto :goto_3

    .line 205
    :pswitch_8
    invoke-virtual {p0, p2}, Lorg/columba/ristretto/imap/NamespaceCollection;->addOtherUserNamespace(Lorg/columba/ristretto/imap/Namespace;)V

    goto :goto_3

    .line 210
    :pswitch_c
    invoke-virtual {p0, p2}, Lorg/columba/ristretto/imap/NamespaceCollection;->addSharedNamespace(Lorg/columba/ristretto/imap/Namespace;)V

    goto :goto_3

    .line 198
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method public addOtherUserNamespace(Lorg/columba/ristretto/imap/Namespace;)V
    .registers 3
    .parameter "ns"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public addOtherUserNamespace([Lorg/columba/ristretto/imap/Namespace;)V
    .registers 4
    .parameter "namespaces"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    return-void
.end method

.method public addPersonalNamespace(Lorg/columba/ristretto/imap/Namespace;)V
    .registers 3
    .parameter "ns"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public addPersonalNamespace([Lorg/columba/ristretto/imap/Namespace;)V
    .registers 4
    .parameter "namespaces"

    .prologue
    .line 220
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    return-void
.end method

.method public addSharedNamespace(Lorg/columba/ristretto/imap/Namespace;)V
    .registers 3
    .parameter "ns"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addSharedNamespace([Lorg/columba/ristretto/imap/Namespace;)V
    .registers 4
    .parameter "namespaces"

    .prologue
    .line 234
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    return-void
.end method

.method public getOtherUserIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getOtherUserNamespace()Lorg/columba/ristretto/imap/Namespace;
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getOtherUserNamespace(I)Lorg/columba/ristretto/imap/Namespace;
    .registers 3
    .parameter "i"

    .prologue
    .line 140
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getOtherUserNamespaceSize()I
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->otherUser:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonalIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalNamespace()Lorg/columba/ristretto/imap/Namespace;
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getPersonalNamespace(I)Lorg/columba/ristretto/imap/Namespace;
    .registers 3
    .parameter "i"

    .prologue
    .line 121
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getPersonalNamespaceSize()I
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->personal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSharedIterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSharedNamespace()Lorg/columba/ristretto/imap/Namespace;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getSharedNamespace(I)Lorg/columba/ristretto/imap/Namespace;
    .registers 3
    .parameter "i"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/imap/Namespace;

    return-object v0
.end method

.method public getSharedNamespaceSize()I
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lorg/columba/ristretto/imap/NamespaceCollection;->shared:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
