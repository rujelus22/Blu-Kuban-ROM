.class Lcom/google/googlenav/ui/wizard/gD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gB;

.field private b:Ljava/util/Map;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/gB;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gD;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/gB;Lcom/google/googlenav/ui/wizard/gC;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/gD;-><init>(Lcom/google/googlenav/ui/wizard/gB;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter

    .prologue
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->a:Lcom/google/googlenav/ui/wizard/gB;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gB;->a(Lcom/google/googlenav/ui/wizard/gB;)Lcom/google/googlenav/ui/wizard/gz;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    if-nez v2, :cond_23

    .line 150
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    .line 151
    const-string v2, ""

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Ljava/lang/String;

    .line 152
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_23
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_46

    .line 157
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    .line 158
    if-eqz v0, :cond_3c

    .line 160
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Ljava/lang/String;

    .line 193
    :goto_3b
    return-object v0

    .line 166
    :cond_3c
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    .line 170
    :cond_46
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->getCount()I

    move-result v2

    if-nez v2, :cond_54

    .line 172
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Ljava/lang/String;

    goto :goto_3b

    .line 179
    :cond_54
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 181
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->moveToFirst()Z

    .line 183
    :cond_5b
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/google/googlenav/ui/wizard/gD;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 184
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->c()Lcom/google/googlenav/friend/aF;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_70
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gz;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 188
    new-instance v0, Lcom/google/googlenav/ui/wizard/gz;

    invoke-direct {v0}, Lcom/google/googlenav/ui/wizard/gz;-><init>()V

    .line 189
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ui/wizard/gz;->a(Ljava/util/Collection;Lcom/google/googlenav/ui/wizard/gA;)V

    .line 191
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gD;->b:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/gD;->c:Ljava/lang/String;

    goto :goto_3b
.end method
