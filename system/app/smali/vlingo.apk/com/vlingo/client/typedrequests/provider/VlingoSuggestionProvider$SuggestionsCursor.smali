.class Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;
.super Landroid/database/AbstractCursor;
.source "VlingoSuggestionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuggestionsCursor"
.end annotation


# instance fields
.field final displaySuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final iconMap:Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;

.field final requestId:I

.field final suggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->displaySuggestions:Ljava/util/ArrayList;

    .line 220
    iput p1, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->requestId:I

    .line 221
    new-instance v0, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;

    invoke-direct {v0}, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->iconMap:Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;

    .line 222
    return-void
.end method

.method private declared-synchronized generateDisplaySuggestions()V
    .registers 18

    .prologue
    .line 291
    monitor-enter p0

    :try_start_1
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 292
    .local v13, table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->displaySuggestions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 294
    .local v14, total:I
    const/4 v9, 0x0

    .line 295
    .local v9, numApps:I
    const/4 v10, 0x0

    .line 296
    .local v10, numContacts:I
    const/4 v11, 0x0

    .line 297
    .local v11, numExpansions:I
    const/4 v3, 0x2

    .line 298
    .local v3, maxApps:I
    const/4 v4, 0x2

    .line 299
    .local v4, maxContacts:I
    const/4 v5, 0x2

    .line 300
    .local v5, maxExpansions:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 301
    .local v12, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    iget-object v1, v12, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    .line 302
    .local v1, cp:Ljava/lang/String;
    const-string v15, "ApplicationSuggestionProvider"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3c

    .line 303
    add-int/lit8 v9, v9, 0x1

    goto :goto_23

    .line 305
    :cond_3c
    const-string v15, "ContactSuggestionProvider"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_47

    .line 306
    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    .line 308
    :cond_47
    const-string v15, "NetworkSuggestionProvider-Expansion"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23

    .line 309
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 313
    .end local v1           #cp:Ljava/lang/String;
    .end local v12           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_52
    sub-int v15, v14, v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b4

    .line 314
    const/4 v5, 0x5

    .line 322
    :cond_5b
    :goto_5b
    sub-int v15, v14, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_64

    .line 323
    const/4 v3, 0x4

    .line 325
    :cond_64
    sub-int v15, v14, v10

    const/16 v16, 0x2

    move/from16 v0, v16

    if-gt v15, v0, :cond_6d

    .line 326
    const/4 v4, 0x4

    .line 329
    :cond_6d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_de

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 330
    .restart local v12       #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    iget-object v1, v12, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    .line 331
    .restart local v1       #cp:Ljava/lang/String;
    invoke-virtual {v13, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 332
    .local v7, na:Ljava/lang/Integer;
    if-eqz v7, :cond_c8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 333
    .local v8, numAlready:I
    :goto_8f
    const/16 v6, 0x8

    .line 334
    .local v6, maxItems:I
    const-string v15, "ApplicationSuggestionProvider"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ca

    .line 335
    move v6, v3

    .line 344
    :cond_9a
    :goto_9a
    if-ge v8, v6, :cond_75

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->displaySuggestions:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    add-int/lit8 v8, v8, 0x1

    .line 347
    iget-object v15, v12, Lcom/vlingo/client/typedrequests/provider/Suggestion;->sourceContentProvider:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_1 .. :try_end_b0} :catchall_b1

    goto :goto_75

    .line 291
    .end local v1           #cp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #maxApps:I
    .end local v4           #maxContacts:I
    .end local v5           #maxExpansions:I
    .end local v6           #maxItems:I
    .end local v7           #na:Ljava/lang/Integer;
    .end local v8           #numAlready:I
    .end local v9           #numApps:I
    .end local v10           #numContacts:I
    .end local v11           #numExpansions:I
    .end local v12           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    .end local v13           #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14           #total:I
    :catchall_b1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 316
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #maxApps:I
    .restart local v4       #maxContacts:I
    .restart local v5       #maxExpansions:I
    .restart local v9       #numApps:I
    .restart local v10       #numContacts:I
    .restart local v11       #numExpansions:I
    .restart local v13       #table:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14       #total:I
    :cond_b4
    sub-int v15, v14, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_be

    .line 317
    const/4 v5, 0x4

    goto :goto_5b

    .line 319
    :cond_be
    sub-int v15, v14, v11

    const/16 v16, 0x4

    move/from16 v0, v16

    if-gt v15, v0, :cond_5b

    .line 320
    const/4 v5, 0x3

    goto :goto_5b

    .line 332
    .restart local v1       #cp:Ljava/lang/String;
    .restart local v7       #na:Ljava/lang/Integer;
    .restart local v12       #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_c8
    const/4 v8, 0x0

    goto :goto_8f

    .line 337
    .restart local v6       #maxItems:I
    .restart local v8       #numAlready:I
    :cond_ca
    :try_start_ca
    const-string v15, "ContactSuggestionProvider"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d4

    .line 338
    move v6, v4

    goto :goto_9a

    .line 340
    :cond_d4
    const-string v15, "NetworkSuggestionProvider-Expansion"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_d9
    .catchall {:try_start_ca .. :try_end_d9} :catchall_b1

    move-result v15

    if-eqz v15, :cond_9a

    .line 341
    move v6, v5

    goto :goto_9a

    .line 350
    .end local v1           #cp:Ljava/lang/String;
    .end local v6           #maxItems:I
    .end local v7           #na:Ljava/lang/Integer;
    .end local v8           #numAlready:I
    .end local v12           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_de
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized hasSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z
    .registers 3
    .parameter "sugg"

    .prologue
    .line 353
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/vlingo/client/typedrequests/provider/SuggestionManager;->hasSuggestion(Ljava/util/ArrayList;Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addSuggestions(Ljava/util/ArrayList;IZ)V
    .registers 8
    .parameter
    .parameter "requestId"
    .parameter "notify"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/typedrequests/provider/Suggestion;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, newSuggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/typedrequests/provider/Suggestion;>;"
    monitor-enter p0

    if-eqz p1, :cond_3b

    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3b

    iget v3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->requestId:I

    if-ne p2, v3, :cond_3b

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, isDirty:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 264
    .local v2, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    invoke-direct {p0, v2}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->hasSuggestion(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 265
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    const/4 v1, 0x1

    goto :goto_12

    .line 269
    .end local v2           #s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    :cond_2b
    if-eqz v1, :cond_3d

    .line 272
    iget-object v3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->suggestions:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 273
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->generateDisplaySuggestions()V

    .line 282
    :goto_35
    if-eqz p3, :cond_3b

    .line 285
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->onChange(Z)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3f

    .line 288
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isDirty:Z
    :cond_3b
    monitor-exit p0

    return-void

    .line 278
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #isDirty:Z
    :cond_3d
    const/4 p3, 0x0

    goto :goto_35

    .line 257
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #isDirty:Z
    :catchall_3f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 226
    invoke-static {}, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider;->access$100()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCount()I
    .registers 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->displaySuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDouble(I)D
    .registers 3
    .parameter "column"

    .prologue
    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "column"

    .prologue
    .line 398
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "column"

    .prologue
    .line 408
    if-nez p1, :cond_6

    .line 409
    iget v0, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 411
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "column"

    .prologue
    .line 416
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 6
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 357
    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->mPos:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    .line 388
    :goto_6
    return-object v1

    .line 359
    :cond_7
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->displaySuggestions:Ljava/util/ArrayList;

    iget v3, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->mPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/typedrequests/provider/Suggestion;

    .line 361
    .local v0, s:Lcom/vlingo/client/typedrequests/provider/Suggestion;
    packed-switch p1, :pswitch_data_44

    goto :goto_6

    .line 363
    :pswitch_15
    :try_start_15
    iget v2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->mPos:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 365
    :pswitch_1c
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 367
    :pswitch_21
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getEditText()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 369
    :pswitch_26
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getSecondaryText()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 371
    :pswitch_2b
    iget-object v2, p0, Lcom/vlingo/client/typedrequests/provider/VlingoSuggestionProvider$SuggestionsCursor;->iconMap:Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;

    invoke-virtual {v2, v0}, Lcom/vlingo/client/typedrequests/TypedRequestsIconMap;->getIcon(Lcom/vlingo/client/typedrequests/provider/Suggestion;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 374
    :pswitch_32
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getSecondaryIcon()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 376
    :pswitch_37
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getActionString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 378
    :pswitch_3c
    invoke-virtual {v0}, Lcom/vlingo/client/typedrequests/provider/Suggestion;->getEditText()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3f} :catch_41

    move-result-object v1

    goto :goto_6

    .line 382
    :catch_41
    move-exception v2

    goto :goto_6

    .line 361
    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1c
        :pswitch_26
        :pswitch_2b
        :pswitch_32
        :pswitch_21
        :pswitch_37
        :pswitch_3c
    .end packed-switch
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "column"

    .prologue
    .line 421
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized removeCachedSuggestions()V
    .registers 1

    .prologue
    .line 236
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
