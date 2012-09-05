.class public Lcom/vlingo/client/help/wcis/WhatCanISayScreen;
.super Lcom/vlingo/client/ui/VLActivity;
.source "WhatCanISayScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;
    }
.end annotation


# static fields
.field public static final CAPTION:Ljava/lang/String; = "EXTRA_CAPTION"

.field public static final EXTRA_SHOW_DONE:Ljava/lang/String; = "wycs.show.done"

.field public static final EXTRA_VOICE_COMMAND:Ljava/lang/String; = "EXTRA_VOICE_COMMAND"

.field public static final INFO:Ljava/lang/String; = "EXTRA_INFO"

.field public static final INTENT:Ljava/lang/String; = "EXTRA_INTENT"

.field public static final LIST_EXAMPLE:Ljava/lang/String; = "EXTRA_LIST_EXAMPLE"

.field public static final LIST_ICON:Ljava/lang/String; = "EXTRA_LIST_ICON"

.field public static final LIST_TITLE:Ljava/lang/String; = "EXTRA_LIST_TITLE"

.field public static final SCREEN:Ljava/lang/String; = "EXTRA_SCREEN"

.field public static final SUBHEADING:Ljava/lang/String; = "EXTRA_SUBHEADING"

.field public static mVoiceCmdHelp:Z


# instance fields
.field protected items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->mVoiceCmdHelp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    .line 317
    return-void
.end method


# virtual methods
.method protected addInfoItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6
    .parameter "title"
    .parameter "caption"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, screen:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EXTRA_INFO"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v1, "EXTRA_CAPTION"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "EXTRA_SCREEN"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    return-void
.end method

.method protected addIntentItem(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 6
    .parameter "title"
    .parameter "caption"
    .parameter "i"

    .prologue
    .line 398
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EXTRA_INFO"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v1, "EXTRA_CAPTION"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v1, "EXTRA_INTENT"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    return-void
.end method

.method protected addItem(IIIIII)V
    .registers 15
    .parameter "title"
    .parameter "example"
    .parameter "image"
    .parameter "subtitle"
    .parameter "subtitleImage"
    .parameter "exList"

    .prologue
    .line 370
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIIII)V

    .line 371
    return-void
.end method

.method protected addItem(IIIIIII)V
    .registers 11
    .parameter "title"
    .parameter "example"
    .parameter "image"
    .parameter "subtitle"
    .parameter "subtitleImage"
    .parameter "exList"
    .parameter "didYouKnow"

    .prologue
    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EXTRA_LIST_TITLE"

    invoke-virtual {p0, p1}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v1, "EXTRA_LIST_EXAMPLE"

    invoke-virtual {p0, p2}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v1, "EXTRA_LIST_ICON"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v1, "EXTRA_TITLE_BAR"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v1, "EXTRA_SUBTITLE"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "EXTRA_SUBTITLE_ICON"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v1, "EXTRA_EXAMPLE_LIST"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v1, "EXTRA_DID_YOU_KNOW"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method protected addItems()V
    .registers 13

    .prologue
    const v11, 0x7f0200de

    const v5, 0x7f0200dc

    const v10, 0x7f0200ba

    const v9, 0x7f0200b9

    const/16 v8, 0x10

    .line 115
    const v0, 0x7f090449

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addSubHeading(Ljava/lang/String;)V

    .line 118
    sget-boolean v0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->mVoiceCmdHelp:Z

    if-eqz v0, :cond_1f0

    .line 119
    const v0, 0x7f0902f9

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/iux/UsingVlingoScreen;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addInfoItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 124
    :goto_33
    const v0, 0x7f090446

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addSubHeading(Ljava/lang/String;)V

    .line 126
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 127
    const v1, 0x7f0902bc

    const v2, 0x7f09008f

    const v3, 0x7f0201c7

    const v4, 0x7f090463

    const v6, 0x7f070013

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 143
    :goto_58
    invoke-static {v8}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_21e

    .line 144
    const v1, 0x7f090156

    const v2, 0x7f0900a5

    const v3, 0x7f0201c0

    const v4, 0x7f09045a

    const v5, 0x7f0200e1

    const v6, 0x7f070015

    const v7, 0x7f09017f

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIIII)V

    .line 161
    :goto_77
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_236

    .line 162
    const v1, 0x7f0902c7

    const v2, 0x7f0900a3

    const v3, 0x7f0201c5

    const v4, 0x7f090459

    const v5, 0x7f0200e6

    const v6, 0x7f070017

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 178
    :goto_93
    invoke-static {v8}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 179
    const v1, 0x7f0902bd

    const v2, 0x7f090092

    const v3, 0x7f0201bc

    const v4, 0x7f090448

    const v6, 0x7f070018

    const v7, 0x7f09017f

    move-object v0, p0

    move v5, v11

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIIII)V

    .line 196
    :goto_b0
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 197
    const v1, 0x7f0902c8

    const v2, 0x7f090098

    const v3, 0x7f0201c6

    const v4, 0x7f09045b

    const v5, 0x7f0200e7

    const v6, 0x7f070019

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 205
    :cond_ce
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 206
    const v1, 0x7f0902c1

    const v2, 0x7f090097

    const v3, 0x7f0201be

    const v4, 0x7f090451

    const v5, 0x7f0200e3

    const v6, 0x7f07001b

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 214
    :cond_ec
    const v1, 0x7f09009b

    const v2, 0x7f09009c

    const v3, 0x7f0201c1

    const v4, 0x7f090183

    const v5, 0x7f0200e2

    const v6, 0x7f07001a

    const v7, 0x7f090185

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIIII)V

    .line 222
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isChineseBuild()Z

    move-result v0

    if-eqz v0, :cond_264

    .line 223
    const v1, 0x7f090093

    const v2, 0x7f090095

    const v3, 0x7f0201bd

    const v4, 0x7f090466

    const v5, 0x7f0200df

    const v6, 0x7f07001d

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 239
    :goto_121
    const v1, 0x7f0902c5

    const v2, 0x7f09009f

    const v3, 0x7f0201c2

    const v4, 0x7f090457

    const v5, 0x7f0200db

    const v6, 0x7f07001e

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 246
    const v1, 0x7f090090

    const v2, 0x7f090091

    const v3, 0x7f0201bb

    const v4, 0x7f09017c

    const v5, 0x7f0200dd

    const v6, 0x7f07001f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 253
    const v1, 0x7f0900a0

    const v2, 0x7f0900a1

    const v3, 0x7f0201c3

    const v4, 0x7f090188

    const v5, 0x7f0200e4

    const v6, 0x7f070020

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 260
    const v1, 0x7f09008c

    const v2, 0x7f09008d

    const v3, 0x7f0201b9

    const v4, 0x7f090179

    const v5, 0x7f0200da

    const v6, 0x7f070021

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 267
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_197

    .line 268
    const v1, 0x7f0902c0

    const v2, 0x7f090096

    const v3, 0x7f0201be

    const v4, 0x7f090452

    const v5, 0x7f0200e3

    const v6, 0x7f070022

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 276
    :cond_197
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1b4

    .line 277
    const v1, 0x7f0902be

    const v2, 0x7f0902bf

    const v4, 0x7f09044c

    const v5, 0x7f070023

    const v7, 0x7f09044b

    move-object v0, p0

    move v3, v9

    move v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIIII)V

    .line 286
    :cond_1b4
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/vlingo/client/ClientConfiguration;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 287
    const v1, 0x7f0902c2

    const v2, 0x7f0902c3

    const v4, 0x7f090455

    const v6, 0x7f070024

    move-object v0, p0

    move v3, v10

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 296
    :cond_1cd
    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isGaudiPhone()Z

    move-result v0

    if-nez v0, :cond_1ef

    invoke-static {}, Lcom/vlingo/client/ClientConfiguration;->isEpic2Phone()Z

    move-result v0

    if-nez v0, :cond_1ef

    .line 297
    const v1, 0x7f090099

    const v2, 0x7f09009a

    const v3, 0x7f0201bf

    const v4, 0x7f090453

    const v5, 0x7f0200e0

    const v6, 0x7f070025

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    .line 315
    :cond_1ef
    return-void

    .line 121
    :cond_1f0
    const v0, 0x7f09044d

    invoke-virtual {p0, v0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09044f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/vlingo/client/iux/UsingVlingoScreen;

    invoke-virtual {p0, v0, v1, v2}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addInfoItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    goto/16 :goto_33

    .line 135
    :cond_209
    const v1, 0x7f0902bc

    const v2, 0x7f09008f

    const v3, 0x7f0201c7

    const v4, 0x7f090463

    const v6, 0x7f070012

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    goto/16 :goto_58

    .line 153
    :cond_21e
    const v1, 0x7f090156

    const v2, 0x7f0900a5

    const v3, 0x7f0201c0

    const v4, 0x7f09045a

    const v5, 0x7f0200e1

    const v6, 0x7f070015

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    goto/16 :goto_77

    .line 170
    :cond_236
    const v1, 0x7f0902c7

    const v2, 0x7f0900a3

    const v3, 0x7f0201c5

    const v4, 0x7f090459

    const v5, 0x7f0200e6

    const v6, 0x7f070016

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    goto/16 :goto_93

    .line 188
    :cond_24e
    const v1, 0x7f0902bd

    const v2, 0x7f090092

    const v3, 0x7f0201bc

    const v4, 0x7f090448

    const v6, 0x7f070018

    move-object v0, p0

    move v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    goto/16 :goto_b0

    .line 231
    :cond_264
    const v1, 0x7f090093

    const v2, 0x7f090094

    const v3, 0x7f0201bd

    const v4, 0x7f090466

    const v5, 0x7f0200df

    const v6, 0x7f07001c

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItem(IIIIII)V

    goto/16 :goto_121
.end method

.method protected addSubHeading(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EXTRA_SUBHEADING"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v1, p0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method protected init()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 56
    const v5, 0x7f03006e

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->setContentView(I)V

    .line 57
    const v5, 0x7f0901c9

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_VOICE_COMMAND"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->mVoiceCmdHelp:Z

    .line 60
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "wycs.show.done"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 61
    .local v3, inIUXMode:Z
    if-eqz v3, :cond_44

    .line 62
    const v5, 0x7f0f0179

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 63
    .local v1, btnContainer:Landroid/view/ViewGroup;
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 64
    const v5, 0x7f0f010b

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, doneBtn:Landroid/view/View;
    new-instance v5, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;

    invoke-direct {v5, p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$1;-><init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .end local v1           #btnContainer:Landroid/view/ViewGroup;
    .end local v2           #doneBtn:Landroid/view/View;
    :cond_44
    const v5, 0x7f0f017b

    invoke-virtual {p0, v5}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 77
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->addItems()V

    .line 79
    new-instance v0, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;

    invoke-direct {v0, p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;-><init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V

    .line 80
    .local v0, adapter:Lcom/vlingo/client/help/wcis/WhatCanISayScreen$RowAdapter;
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v5, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;

    invoke-direct {v5, p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen$2;-><init>(Lcom/vlingo/client/help/wcis/WhatCanISayScreen;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/vlingo/client/help/wcis/WhatCanISayScreen;->init()V

    .line 53
    return-void
.end method
