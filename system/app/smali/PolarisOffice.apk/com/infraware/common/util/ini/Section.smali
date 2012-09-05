.class public Lcom/infraware/common/util/ini/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field private keyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "sectionName"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/util/ini/Section;->list:Ljava/util/HashMap;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/util/ini/Section;->sectionName:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/infraware/common/util/ini/Section;->sectionName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private isKey(Ljava/lang/String;)Z
    .registers 5
    .parameter "key"

    .prologue
    .line 37
    iget-object v2, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 38
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-lt v0, v1, :cond_b

    .line 43
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 40
    :cond_b
    iget-object v2, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    .line 41
    const/4 v2, 0x1

    goto :goto_a

    .line 38
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_a

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "key"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->list:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/Section;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    :goto_6
    return-void

    .line 59
    :cond_7
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->list:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/infraware/common/util/ini/Section;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 49
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->keyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/infraware/common/util/ini/Section;->list:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
