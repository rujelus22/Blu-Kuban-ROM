.class final Lcom/android/athome/picker/b/m;
.super Lcom/android/athome/picker/media/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/b/a;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/b/a;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-direct {p0}, Lcom/android/athome/picker/media/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 268
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteUnSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->j(Lcom/android/athome/picker/b/a;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_5a

    .line 270
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->g(Lcom/android/athome/picker/b/a;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->h(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 273
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->i(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->h(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/place/picker/MediaRouteProviderClient;->deleteRouteIdForApplication(Ljava/lang/String;)V

    .line 275
    :cond_41
    invoke-static {p2}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_5a

    .line 277
    invoke-static {v0}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 279
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    .line 283
    :cond_5a
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 199
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteAdded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public final a(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 222
    const-string v1, "AtHomeMediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnRouteSelected: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->d(Lcom/android/athome/picker/b/a;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 224
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Updating media router. Ignore updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_25
    return-void

    .line 227
    :cond_26
    invoke-static {p3}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/android/athome/picker/b/a;->d()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_80

    .line 228
    invoke-static {p3}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_6c

    .line 230
    invoke-static {v2}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    if-nez v1, :cond_72

    .line 232
    invoke-static {v2}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v3

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 235
    :goto_46
    if-ge v1, v3, :cond_67

    .line 236
    invoke-static {v2, v1}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 237
    iget-object v5, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v5}, Lcom/android/athome/picker/b/a;->e(Lcom/android/athome/picker/b/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_46

    .line 239
    :cond_67
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, v4, v2, v6}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/util/List;Ljava/lang/Object;Z)V

    .line 263
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p3}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 242
    :cond_72
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 243
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->f(Lcom/android/athome/picker/b/a;)Lcom/android/athome/picker/b/w;

    goto :goto_6c

    .line 247
    :cond_80
    invoke-static {p3}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {}, Lcom/android/athome/picker/b/a;->c()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_6c

    .line 250
    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-virtual {v1, p3}, Lcom/android/athome/picker/b/a;->a(Ljava/lang/Object;)Lcom/android/athome/picker/b/v;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->g(Lcom/android/athome/picker/b/a;)Z

    move-result v2

    if-eqz v2, :cond_6c

    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_6c

    iget-object v2, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->h(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    .line 254
    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    .line 255
    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 256
    new-instance v0, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;

    invoke-virtual {v1}, Lcom/android/athome/picker/b/v;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/place/picker/MediaRouteProviderClient$SerialNumberRouteId;-><init>(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->i(Lcom/android/athome/picker/b/a;)Landroid/support/place/picker/MediaRouteProviderClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v2}, Lcom/android/athome/picker/b/a;->h(Lcom/android/athome/picker/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/place/picker/MediaRouteProviderClient;->setRouteIdForApplication(Ljava/lang/String;Landroid/support/place/picker/MediaRouteProviderClient$RouteId;)V

    goto :goto_6c
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OnRouteGrouped: routeInfo="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " routeGroup="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->d(Lcom/android/athome/picker/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 289
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Updating media router. Ignore updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_2e
    :goto_2e
    return-void

    .line 292
    :cond_2f
    invoke-static {p2}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_3b

    .line 294
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, p1, p2, v2}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_2e

    .line 296
    :cond_3b
    invoke-static {p2}, Lcom/android/athome/picker/media/p;->a(Ljava/lang/Object;)I

    move-result v3

    .line 297
    const/4 v0, 0x1

    if-le v3, v0, :cond_2e

    .line 298
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "RouteCount: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " creating new group."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 301
    :goto_62
    if-ge v1, v3, :cond_83

    .line 302
    invoke-static {p2, v1}, Lcom/android/athome/picker/media/p;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 303
    iget-object v5, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v5}, Lcom/android/athome/picker/b/a;->e(Lcom/android/athome/picker/b/a;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    .line 305
    :cond_83
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0, v4, p2, v2}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/util/List;Ljava/lang/Object;Z)V

    goto :goto_2e
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 205
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteRemoved: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/android/athome/picker/b/a;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5c

    .line 208
    invoke-static {p1}, Lcom/android/athome/picker/media/q;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_5c

    .line 210
    invoke-static {v0}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_5c

    .line 213
    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->b(Lcom/android/athome/picker/b/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v1, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v1}, Lcom/android/athome/picker/b/a;->c(Lcom/android/athome/picker/b/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_5c
    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 312
    const-string v0, "AtHomeMediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnRouteUnGrouped: routeInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " routeGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    invoke-static {v0}, Lcom/android/athome/picker/b/a;->d(Lcom/android/athome/picker/b/a;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 314
    const-string v0, "AtHomeMediaRouter"

    const-string v1, "Updating media router. Ignore updates."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2d
    :goto_2d
    return-void

    .line 317
    :cond_2e
    invoke-static {p2}, Lcom/android/athome/picker/b/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_2d

    .line 319
    iget-object v0, p0, Lcom/android/athome/picker/b/m;->a:Lcom/android/athome/picker/b/a;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/athome/picker/b/a;->a(Lcom/android/athome/picker/b/a;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_2d
.end method
