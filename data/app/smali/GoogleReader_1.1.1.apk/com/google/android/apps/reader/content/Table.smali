.class public Lcom/google/android/apps/reader/content/Table;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field private final mColumns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/reader/content/Column;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstraints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-nez p1, :cond_b

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 35
    :cond_b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/Table;->mName:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mColumns:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mConstraints:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public addColumn(Lcom/google/android/apps/reader/content/Column;)V
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public addConstraint(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public getCreateTableStatement()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "CREATE TABLE "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 71
    const/4 v0, 0x0

    move v3, v0

    :goto_1a
    if-ge v3, v2, :cond_36

    .line 72
    if-eqz v3, :cond_23

    .line 73
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mColumns:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/reader/content/Column;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/apps/reader/content/Column;->getNameAndType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a

    .line 78
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mConstraints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 79
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 82
    :cond_51
    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDropTableStatement()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/Table;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/reader/content/Table;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public varargs setUnique([Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNIQUE ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_1a

    .line 51
    if-eqz v1, :cond_12

    .line 52
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_12
    aget-object v2, p1, v1

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 57
    :cond_1a
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/content/Table;->addConstraint(Ljava/lang/String;)V

    .line 60
    return-void
.end method
