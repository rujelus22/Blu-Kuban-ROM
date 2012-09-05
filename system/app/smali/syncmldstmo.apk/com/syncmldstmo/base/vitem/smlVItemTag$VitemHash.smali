.class public Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;
.super Ljava/lang/Object;
.source "smlVItemTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlVItemTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VitemHash"
.end annotation


# instance fields
.field public _list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public no2str:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public str2no:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .parameter "bList"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->str2no:Ljava/util/Hashtable;

    .line 21
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->no2str:Ljava/util/Hashtable;

    .line 33
    if-eqz p1, :cond_1a

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    .line 35
    :cond_1a
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .registers 5
    .parameter "no"
    .parameter "str"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->no2str:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->str2no:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    if-eqz v0, :cond_1f

    .line 28
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->_list:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_1f
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .parameter "str"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->str2no:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public get(I)Ljava/lang/String;
    .registers 4
    .parameter "no"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/syncmldstmo/base/vitem/smlVItemTag$VitemHash;->no2str:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
