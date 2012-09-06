.class public Lcom/google/googlenav/ui/wizard/gz;
.super Landroid/database/MatrixCursor;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/google/googlenav/ui/wizard/gE;

.field private final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_id_chip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_url"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/ui/wizard/gz;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lcom/google/googlenav/ui/wizard/gz;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->c:Ljava/util/Map;

    .line 73
    return-void
.end method

.method static a(ILcom/google/googlenav/friend/aF;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/friend/aI;->a:Lcom/google/googlenav/friend/aI;

    if-eq v0, v1, :cond_10

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/friend/aI;->b:Lcom/google/googlenav/friend/aI;

    if-ne v0, v1, :cond_22

    .line 229
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private static a(ILcom/google/googlenav/friend/aF;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 180
    const/16 v0, 0x9

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    .line 181
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 182
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 183
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    .line 184
    const/4 v1, 0x4

    sget-object v0, Lcom/google/googlenav/friend/aF;->b:Lcom/google/common/collect/Q;

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v1

    .line 185
    const/4 v0, 0x5

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 186
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    .line 187
    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/google/googlenav/friend/aF;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 191
    const/16 v0, 0x8

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/wizard/gz;->a(ILcom/google/googlenav/friend/aF;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 192
    return-object p2
.end method

.method private d()V
    .registers 2

    .prologue
    .line 149
    new-instance v0, Lcom/google/googlenav/ui/wizard/gE;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/gE;-><init>(Lcom/google/googlenav/ui/wizard/gz;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->b:Lcom/google/googlenav/ui/wizard/gE;

    .line 150
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/gz;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Collection;Lcom/google/googlenav/ui/wizard/gA;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 134
    const/16 v0, 0xa

    new-array v1, v0, [Ljava/lang/Object;

    .line 135
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    .line 136
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/gz;->getCount()I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/gz;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v3, v0, v1}, Lcom/google/googlenav/ui/wizard/gz;->a(ILcom/google/googlenav/friend/aF;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 140
    if-eqz p2, :cond_8

    .line 141
    invoke-interface {p2, v0, v3}, Lcom/google/googlenav/ui/wizard/gA;->a(Lcom/google/googlenav/friend/aF;I)V

    goto :goto_8

    .line 144
    :cond_2e
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/gz;->d()V

    .line 145
    return-void
.end method

.method public addRow(Ljava/lang/Iterable;)V
    .registers 4
    .parameter

    .prologue
    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must use PlusoneAudienceCursor.addRows"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRow([Ljava/lang/Object;)V
    .registers 4
    .parameter

    .prologue
    .line 154
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Must use PlusoneAudienceCursor.addRows"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/google/googlenav/friend/aI;
    .registers 3

    .prologue
    .line 123
    sget-object v0, Lcom/google/googlenav/friend/aF;->a:Lcom/google/common/collect/Q;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/gz;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aI;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/friend/aF;
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->c:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/wizard/gz;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->b:Lcom/google/googlenav/ui/wizard/gE;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gE;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->b:Lcom/google/googlenav/ui/wizard/gE;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/gE;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gz;->b:Lcom/google/googlenav/ui/wizard/gE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gE;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
