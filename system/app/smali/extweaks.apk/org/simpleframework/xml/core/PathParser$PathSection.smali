.class Lorg/simpleframework/xml/core/PathParser$PathSection;
.super Ljava/lang/Object;
.source "PathParser.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Expression;


# instance fields
.field private begin:I

.field private cache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private end:I

.field private path:Ljava/lang/String;

.field private section:Ljava/lang/String;

.field final synthetic this$0:Lorg/simpleframework/xml/core/PathParser;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/PathParser;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    .line 758
    iput p2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    .line 759
    iput p3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    .line 760
    return-void
.end method

.method private getCanonicalPath()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x2f

    const/4 v0, 0x0

    .line 961
    move v1, v0

    .line 962
    :goto_4
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    if-ge v0, v2, :cond_17

    .line 966
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$600(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_17
    move v2, v1

    .line 968
    :goto_18
    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v0, v3, :cond_38

    .line 969
    iget-object v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;
    invoke-static {v3}, Lorg/simpleframework/xml/core/PathParser;->access$600(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 970
    const/4 v3, -0x1

    if-ne v2, v3, :cond_35

    .line 971
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$600(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 968
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 974
    :cond_38
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->location:Ljava/lang/String;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$600(Lorg/simpleframework/xml/core/PathParser;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFragment()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 985
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->start:I
    invoke-static {v1}, Lorg/simpleframework/xml/core/PathParser;->access$700(Lorg/simpleframework/xml/core/PathParser;)I

    move-result v2

    move v1, v0

    move v3, v2

    .line 988
    :goto_9
    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v0, v2, :cond_17

    .line 989
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->count:I
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$800(Lorg/simpleframework/xml/core/PathParser;)I

    move-result v2

    if-lt v3, v2, :cond_26

    .line 990
    add-int/lit8 v3, v3, 0x1

    .line 999
    :cond_17
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->data:[C
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$900(Lorg/simpleframework/xml/core/PathParser;)[C

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 993
    :cond_26
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->data:[C
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$900(Lorg/simpleframework/xml/core/PathParser;)[C

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    aget-char v3, v4, v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3d

    .line 994
    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    if-ne v0, v3, :cond_3d

    move v1, v2

    move v3, v2

    .line 995
    goto :goto_9

    :cond_3d
    move v3, v2

    goto :goto_9
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 844
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_c

    .line 847
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #calls: Lorg/simpleframework/xml/core/PathParser;->getAttributePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->access$300(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 849
    :cond_c
    return-object p1
.end method

.method public getElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 825
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_c

    .line 828
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #calls: Lorg/simpleframework/xml/core/PathParser;->getElementPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0, p1}, Lorg/simpleframework/xml/core/PathParser;->access$200(Lorg/simpleframework/xml/core/PathParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 830
    :cond_c
    return-object p1
.end method

.method public getFirst()Ljava/lang/String;
    .registers 3

    .prologue
    .line 885
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$100(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 3

    .prologue
    .line 861
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->indexes:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$400(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLast()Ljava/lang/String;
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$100(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 809
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    .line 811
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->section:Ljava/lang/String;

    return-object v0
.end method

.method public getPath(I)Lorg/simpleframework/xml/core/Expression;
    .registers 3
    .parameter

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getPath(II)Lorg/simpleframework/xml/core/Expression;

    move-result-object v0

    return-object v0
.end method

.method public getPath(II)Lorg/simpleframework/xml/core/Expression;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 928
    new-instance v0, Lorg/simpleframework/xml/core/PathParser$PathSection;

    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    iget v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    add-int/2addr v2, p1

    iget v3, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    sub-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lorg/simpleframework/xml/core/PathParser$PathSection;-><init>(Lorg/simpleframework/xml/core/PathParser;II)V

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 873
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->prefixes:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$500(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isAttribute()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 793
    iget-object v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->attribute:Z
    invoke-static {v1}, Lorg/simpleframework/xml/core/PathParser;->access$000(Lorg/simpleframework/xml/core/PathParser;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 794
    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;
    invoke-static {v2}, Lorg/simpleframework/xml/core/PathParser;->access$100(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 796
    :cond_1a
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 770
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isPath()Z
    .registers 3

    .prologue
    .line 781
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    iget v1, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 940
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 941
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->begin:I

    move v1, v0

    :goto_b
    iget v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->end:I

    if-gt v1, v0, :cond_26

    .line 942
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->this$0:Lorg/simpleframework/xml/core/PathParser;

    #getter for: Lorg/simpleframework/xml/core/PathParser;->names:Ljava/util/LinkedList;
    invoke-static {v0}, Lorg/simpleframework/xml/core/PathParser;->access$100(Lorg/simpleframework/xml/core/PathParser;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    if-eqz v0, :cond_22

    .line 945
    iget-object v2, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 949
    :cond_26
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->cache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1011
    invoke-direct {p0}, Lorg/simpleframework/xml/core/PathParser$PathSection;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    .line 1013
    :cond_a
    iget-object v0, p0, Lorg/simpleframework/xml/core/PathParser$PathSection;->path:Ljava/lang/String;

    return-object v0
.end method
