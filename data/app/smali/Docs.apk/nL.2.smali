.class public LnL;
.super Ljava/lang/Object;
.source "SqlWhereClause.java"


# static fields
.field public static final a:LnL;

.field public static final b:LnL;


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 112
    new-instance v0, LnL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LMk;->w:LMk;

    invoke-virtual {v2}, LMk;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LnL;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    sput-object v0, LnL;->a:LnL;

    .line 119
    new-instance v0, LnL;

    const-string v1, "1=1"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LnL;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    sput-object v0, LnL;->b:LnL;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    if-nez p2, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_6
    invoke-direct {p0, p1, v0}, LnL;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    .line 133
    return-void

    .line 131
    :cond_a
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, LnL;->a:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, LnL;->a:Ljava/util/ArrayList;

    .line 147
    return-void
.end method

.method public static a(Landroid/os/Bundle;)LnL;
    .registers 4
    .parameter

    .prologue
    .line 206
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "expression"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "parameters"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 211
    new-instance v2, LnL;

    invoke-direct {v2, v0, v1}, LnL;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)LnL;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "LnL;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v0, LnL;

    invoke-direct {v0, p0, p1}, LnL;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, LnL;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, LnL;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(LnO;LnL;)LnL;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-virtual {p0}, LnL;->a()LnN;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LnN;->a(LnO;LnL;)LnN;

    move-result-object v0

    invoke-virtual {v0}, LnN;->a()LnL;

    move-result-object v0

    return-object v0
.end method

.method public a()LnN;
    .registers 5

    .prologue
    .line 165
    new-instance v0, LnN;

    iget-object v1, p0, LnL;->a:Ljava/lang/String;

    iget-object v2, p0, LnL;->a:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LnN;-><init>(Ljava/lang/String;Ljava/util/Collection;LnM;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 199
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v0, "expression"

    iget-object v1, p0, LnL;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "parameters"

    iget-object v0, p0, LnL;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    if-ne p1, p0, :cond_5

    .line 184
    :cond_4
    :goto_4
    return v0

    .line 180
    :cond_5
    instance-of v2, p1, LnL;

    if-nez v2, :cond_b

    move v0, v1

    .line 181
    goto :goto_4

    .line 183
    :cond_b
    check-cast p1, LnL;

    .line 184
    iget-object v2, p0, LnL;->a:Ljava/lang/String;

    iget-object v3, p1, LnL;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, LnL;->a:Ljava/util/ArrayList;

    iget-object v3, p1, LnL;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, LnL;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, LnL;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 195
    const-string v0, "SqlWhereClause[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LnL;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LnL;->a:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
