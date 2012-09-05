.class public Lcom/android/task/vcal/pim/PropertyNode;
.super Ljava/lang/Object;
.source "PropertyNode.java"


# instance fields
.field public paramMap:Landroid/content/ContentValues;

.field public paramMap_TYPE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propGroupSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public propName:Ljava/lang/String;

.field public propValue:Ljava/lang/String;

.field public propValue_bytes:[B

.field public propValue_vector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/task/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    instance-of v3, p1, Lcom/android/task/vcal/pim/PropertyNode;

    if-nez v3, :cond_7

    .line 129
    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/android/task/vcal/pim/PropertyNode;

    .line 95
    .local v0, node:Lcom/android/task/vcal/pim/PropertyNode;
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 99
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_46

    move v1, v2

    .line 106
    goto :goto_6

    .line 109
    :cond_46
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 119
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v3, :cond_68

    .line 122
    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    iget-object v4, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    iget-object v3, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_6

    :cond_66
    move v1, v2

    goto :goto_6

    .line 123
    :cond_68
    iget-object v3, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v3, :cond_78

    .line 127
    iget-object v3, v0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_76

    :goto_74
    move v1, v2

    goto :goto_6

    :cond_76
    move v2, v1

    goto :goto_74

    :cond_78
    move v1, v2

    .line 129
    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "propName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, ", paramMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", propmMap_TYPE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v1, ", propGroupSet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propGroupSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_54

    .line 146
    const-string v1, ", propValue_vector size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_vector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    :cond_54
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    if-eqz v1, :cond_63

    .line 150
    const-string v1, ", propValue_bytes size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue_bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    :cond_63
    const-string v1, ", propValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v1, p0, Lcom/android/task/vcal/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
