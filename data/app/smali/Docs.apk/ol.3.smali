.class public Lol;
.super Ljava/lang/Object;
.source "DialogRegistryImpl.java"

# interfaces
.implements Loi;


# instance fields
.field private final a:I

.field private final a:Landroid/app/Activity;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lom;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lof;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1, p2, v0}, Lol;-><init>(Landroid/app/Activity;II)V

    .line 96
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lol;->a:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lol;->a:Ljava/util/Set;

    .line 106
    if-ltz p2, :cond_39

    const/4 v0, 0x1

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialogId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 107
    const-string v0, "null activity"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lol;->a:Landroid/app/Activity;

    .line 108
    iput p2, p0, Lol;->b:I

    .line 109
    iput p3, p0, Lol;->a:I

    .line 110
    return-void

    .line 106
    :cond_39
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private final a(ILom;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "args:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lom;->a()Lof;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 159
    iget v0, p0, Lol;->b:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, LafQ;->b(Z)V

    .line 160
    iget v0, p0, Lol;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lol;->b:I

    return v0

    .line 159
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public a(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lol;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom;

    .line 131
    if-eqz v0, :cond_4c

    const/4 v1, 0x1

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t managed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 133
    invoke-virtual {v0}, Lom;->a()Lof;

    move-result-object v1

    iget-object v2, p0, Lol;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lom;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lof;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 138
    if-nez v0, :cond_4b

    iget v1, p0, Lol;->a:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_4b

    .line 139
    new-instance v0, Lon;

    iget-object v1, p0, Lol;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lon;-><init>(Landroid/content/Context;)V

    .line 141
    :cond_4b
    return-object v0

    .line 131
    :cond_4c
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public bridge synthetic a(Lof;)LpB;
    .registers 3
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lol;->a(Lof;)LpC;

    move-result-object v0

    return-object v0
.end method

.method public a(Lof;)LpC;
    .registers 6
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lol;->a:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already registered instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 121
    invoke-virtual {p0}, Lol;->a()I

    move-result v0

    .line 122
    new-instance v1, Lom;

    invoke-direct {v1, p1}, Lom;-><init>(Lof;)V

    .line 123
    iget-object v2, p0, Lol;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v2, LpC;

    iget-object v3, p0, Lol;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v0, v1}, LpC;-><init>(Landroid/app/Activity;ILpD;)V

    .line 125
    return-object v2
.end method

.method public a(ILandroid/app/Dialog;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lol;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom;

    .line 148
    if-eqz v0, :cond_37

    const/4 v1, 0x1

    :goto_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t managed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 150
    instance-of v1, p2, Lon;

    if-eqz v1, :cond_39

    .line 151
    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    .line 155
    :goto_36
    return-void

    .line 148
    :cond_37
    const/4 v1, 0x0

    goto :goto_f

    .line 153
    :cond_39
    invoke-virtual {v0}, Lom;->a()Lof;

    move-result-object v1

    iget-object v2, p0, Lol;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Lom;->a()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v1, v2, p2, v0}, Lof;->a(Landroid/content/Context;Landroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_36
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 174
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    iget-object v0, p0, Lol;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lom;

    invoke-direct {p0, v4, v1}, Lol;->a(ILom;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom;

    invoke-virtual {v0}, Lom;->a()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_f

    .line 179
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_f

    .line 182
    :cond_3f
    const-string v0, "docs:dialogs"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 183
    return-void
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lol;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 189
    const-string v0, "docs:dialogs"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 190
    iget-object v0, p0, Lol;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lom;

    invoke-direct {p0, v4, v1}, Lol;->a(ILom;)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-nez v2, :cond_3d

    const/4 v1, 0x0

    .line 193
    :goto_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lom;

    invoke-virtual {v0, v1}, Lom;->a(Landroid/os/Bundle;)V

    goto :goto_10

    .line 192
    :cond_3d
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_33

    .line 195
    :cond_42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 199
    const-string v0, "DialogRegistry[%d managed dialogs]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lol;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
