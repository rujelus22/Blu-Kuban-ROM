.class public Lcom/google/protobuf/LazyStringArrayList;
.super Ljava/util/AbstractList;
.source "LazyStringArrayList.java"

# interfaces
.implements Lcom/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/protobuf/LazyStringList;


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/google/protobuf/UnmodifiableLazyStringList;

    new-instance v1, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    sput-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, from:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    .line 77
    return-void
.end method

.method private asString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "o"

    .prologue
    .line 149
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 152
    .end local p1
    :goto_6
    return-object p1

    .restart local p1
    :cond_7
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    goto :goto_6
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .registers 4
    .parameter "index"
    .parameter "element"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 108
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 109
    return-void
.end method

.method public add(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 134
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, c:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 114
    .local v0, ret:Z
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 115
    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    iget v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 128
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->get(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .registers 6
    .parameter "index"

    .prologue
    .line 81
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, o:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_d

    .line 83
    check-cast v1, Ljava/lang/String;

    .line 90
    .end local v1           #o:Ljava/lang/Object;
    :goto_c
    return-object v1

    .restart local v1       #o:Ljava/lang/Object;
    :cond_d
    move-object v0, v1

    .line 85
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 86
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 88
    iget-object v3, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    move-object v1, v2

    .line 90
    goto :goto_c
.end method

.method public getByteString(I)Lcom/google/protobuf/ByteString;
    .registers 5
    .parameter "index"

    .prologue
    .line 138
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_16

    .line 140
    check-cast v1, Ljava/lang/String;

    .end local v1           #o:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iget-object v2, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_15
    return-object v0

    .restart local v1       #o:Ljava/lang/Object;
    :cond_16
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #o:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_15
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/protobuf/LazyStringArrayList;->remove(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, o:Ljava/lang/Object;
    iget v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/protobuf/LazyStringArrayList;->modCount:I

    .line 122
    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/LazyStringArrayList;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "index"
    .parameter "s"

    .prologue
    .line 101
    iget-object v1, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, o:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/google/protobuf/LazyStringArrayList;->asString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/protobuf/LazyStringArrayList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
