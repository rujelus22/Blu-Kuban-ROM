.class public Lcom/vlingo/client/core/recognizer/results/TaggedResults;
.super Ljava/lang/Object;
.source "TaggedResults.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/core/recognizer/results/TaggedResults$1;,
        Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;,
        Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    }
.end annotation


# static fields
.field private static final SHOW_DEBUG:Z = true


# instance fields
.field private curParseGroup:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

.field private curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

.field private groups:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;",
            ">;"
        }
    .end annotation
.end field

.field private guttid:Ljava/lang/String;

.field private uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "guttId"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 64
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    .line 74
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curParseGroup:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    .line 75
    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 81
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->guttid:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private static final clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "alternates"

    .prologue
    .line 208
    if-nez p0, :cond_3

    .line 215
    .end local p0
    :goto_2
    return-object p0

    .line 211
    .restart local p0
    :cond_3
    const-string v1, ">"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, iArrow:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 213
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 215
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_2
.end method

.method private static final collapseWords(Ljava/lang/StringBuffer;[Ljava/lang/String;)V
    .registers 4
    .parameter "sb"
    .parameter "words"

    .prologue
    .line 218
    array-length v1, p1

    if-lez v1, :cond_22

    .line 219
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const/4 v0, 0x1

    .local v0, i:I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 221
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 225
    .end local v0           #i:I
    :cond_22
    return-void
.end method

.method private static final serializeParseGroups(Ljava/lang/StringBuffer;Ljava/util/Vector;)V
    .registers 15
    .parameter "sb"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Vector",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, groups:Ljava/util/Vector;,"Ljava/util/Vector<*>;"
    if-eqz p1, :cond_19f

    invoke-virtual {p1}, Ljava/util/Vector;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_19f

    .line 305
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v7

    .line 306
    .local v7, size:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<T n=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    if-ge v1, v7, :cond_19a

    .line 308
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    .line 309
    .local v6, pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<pg t=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->parseType:Ljava/lang/String;
    invoke-static {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$400(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" c=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->confidence:F
    invoke-static {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$500(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" n=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;
    invoke-static {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$300(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/util/Vector;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;
    invoke-static {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$300(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v8

    .line 312
    .local v8, tSize:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_7a
    if-ge v3, v8, :cond_191

    .line 313
    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;
    invoke-static {v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$300(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 314
    .local v9, tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;
    invoke-static {v9}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->access$000(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v11

    iget-object v10, v11, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 315
    .local v10, ul:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;
    invoke-static {v9}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->access$000(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v11

    iget-object v0, v11, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListCannonical:[Ljava/lang/String;

    .line 316
    .local v0, cannonical:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<tag n=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nm=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->name:Ljava/lang/String;
    invoke-static {v9}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->access$600(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const/4 v4, 0x0

    .local v4, k:I
    :goto_d0
    array-length v11, v10

    if-ge v4, v11, :cond_188

    .line 320
    const-string v11, "<tl "

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    if-eqz v0, :cond_ff

    array-length v11, v0

    if-le v11, v4, :cond_ff

    aget-object v11, v0, v4

    if-eqz v11, :cond_ff

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cf=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v0, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\" "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :cond_ff
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "n=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v4

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const/4 v5, 0x0

    .local v5, l:I
    :goto_11f
    aget-object v11, v10, v4

    array-length v11, v11

    if-ge v5, v11, :cond_17f

    .line 325
    aget-object v11, v10, v4

    aget-object v11, v11, v5

    iget v2, v11, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 326
    .local v2, id:I
    const/4 v11, -0x1

    if-eq v2, v11, :cond_179

    .line 327
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<w id=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    :goto_149
    aget-object v11, v10, v4

    aget-object v11, v11, v5

    iget-boolean v11, v11, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    if-eqz v11, :cond_156

    .line 331
    const-string v11, " ns=\"t\""

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_156
    aget-object v11, v10, v4

    aget-object v11, v11, v5

    iget-boolean v11, v11, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    if-eqz v11, :cond_163

    .line 333
    const-string v11, " nsd=\"t\""

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_163
    const-string v11, ">"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    aget-object v11, v10, v4

    aget-object v11, v11, v5

    iget-object v11, v11, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v11, "</w>"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    add-int/lit8 v5, v5, 0x1

    goto :goto_11f

    .line 329
    :cond_179
    const-string v11, "<w"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_149

    .line 338
    .end local v2           #id:I
    :cond_17f
    const-string v11, "</tl>"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d0

    .line 340
    .end local v5           #l:I
    :cond_188
    const-string v11, "</tag>"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7a

    .line 342
    .end local v0           #cannonical:[Ljava/lang/String;
    .end local v4           #k:I
    .end local v9           #tag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;
    .end local v10           #ul:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    :cond_191
    const-string v11, "</pg>"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 344
    .end local v3           #j:I
    .end local v6           #pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    .end local v8           #tSize:I
    :cond_19a
    const-string v11, "</T>"

    invoke-virtual {p0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    .end local v1           #i:I
    .end local v7           #size:I
    :cond_19f
    return-void
.end method

.method private static serializeUttList(Ljava/lang/StringBuffer;Lcom/vlingo/client/core/recognizer/results/RecResults;)V
    .registers 9
    .parameter "sb"
    .parameter "results"

    .prologue
    .line 252
    iget-object v4, p1, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttList:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 253
    .local v4, ul:[[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v0, p1, Lcom/vlingo/client/core/recognizer/results/RecResults;->uttListConf:[F

    .line 254
    .local v0, conf:[F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<UL n=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    array-length v5, v4

    if-ge v1, v5, :cond_d6

    .line 257
    const-string v5, "<c "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    if-eqz v0, :cond_4d

    array-length v5, v0

    if-ge v1, v5, :cond_4d

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    const/4 v3, 0x0

    .local v3, j:I
    :goto_6d
    aget-object v5, v4, v1

    array-length v5, v5

    if-ge v3, v5, :cond_cd

    .line 263
    aget-object v5, v4, v1

    aget-object v5, v5, v3

    iget v2, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->id:I

    .line 264
    .local v2, id:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_c7

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<w id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    :goto_97
    aget-object v5, v4, v1

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpace:Z

    if-eqz v5, :cond_a4

    .line 269
    const-string v5, " ns=\"t\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :cond_a4
    aget-object v5, v4, v1

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->noSpaceNumber:Z

    if-eqz v5, :cond_b1

    .line 271
    const-string v5, " nsd=\"t\""

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    :cond_b1
    const-string v5, ">"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    aget-object v5, v4, v1

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iSelectedWord:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    const-string v5, "</w>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 267
    :cond_c7
    const-string v5, "<w"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_97

    .line 276
    .end local v2           #id:I
    :cond_cd
    const-string v5, "</c>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22

    .line 278
    .end local v3           #j:I
    :cond_d6
    const-string v5, "</UL>"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 279
    return-void
.end method

.method private static serializeWordList(Ljava/lang/StringBuffer;Lcom/vlingo/client/core/recognizer/results/RecResults;)V
    .registers 10
    .parameter "sb"
    .parameter "results"

    .prologue
    .line 281
    iget-object v5, p1, Lcom/vlingo/client/core/recognizer/results/RecResults;->wordList:[Lcom/vlingo/client/core/recognizer/results/RecNBest;

    .line 282
    .local v5, wl:[Lcom/vlingo/client/core/recognizer/results/RecNBest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<WL n=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    array-length v6, v5

    if-ge v0, v6, :cond_9e

    .line 285
    aget-object v2, v5, v0

    .line 286
    .local v2, w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    iget-object v4, v2, Lcom/vlingo/client/core/recognizer/results/RecNBest;->iChoices:[Lcom/vlingo/client/core/recognizer/results/RecChoice;

    .line 287
    .local v4, wcl:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<w id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" n=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const/4 v1, 0x0

    .local v1, j:I
    :goto_4f
    array-length v6, v4

    if-ge v1, v6, :cond_96

    .line 289
    aget-object v3, v4, v1

    .line 290
    .local v3, wc:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<c r=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/vlingo/client/core/recognizer/results/RecChoice;->numAlign:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    iget-boolean v6, v3, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpace:Z

    if-eqz v6, :cond_7b

    .line 292
    const-string v6, " ns=\"t\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_7b
    iget-boolean v6, v3, Lcom/vlingo/client/core/recognizer/results/RecChoice;->noSpaceNumber:Z

    if-eqz v6, :cond_84

    .line 294
    const-string v6, " nsd=\"t\""

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 295
    :cond_84
    const-string v6, ">"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    iget-object v6, v3, Lcom/vlingo/client/core/recognizer/results/RecChoice;->words:[Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->collapseWords(Ljava/lang/StringBuffer;[Ljava/lang/String;)V

    .line 297
    const-string v6, "</c>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 299
    .end local v3           #wc:Lcom/vlingo/client/core/recognizer/results/RecChoice;
    :cond_96
    const-string v6, "</w>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 301
    .end local v1           #j:I
    .end local v2           #w:Lcom/vlingo/client/core/recognizer/results/RecNBest;
    .end local v4           #wcl:[Lcom/vlingo/client/core/recognizer/results/RecChoice;
    :cond_9e
    const-string v6, "</WL>"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 302
    return-void
.end method


# virtual methods
.method public getGUttID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->guttid:Ljava/lang/String;

    return-object v0
.end method

.method public getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;
    .registers 3
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getNBestForWord(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getNBestForWordIfBetterMatch(Ljava/util/Vector;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;II)I
    .registers 16
    .parameter
    .parameter "word"
    .parameter "previousWords"
    .parameter "numPreviousWords"
    .parameter "nextWords"
    .parameter "numNextWords"
    .parameter "bestNumMatchingWordsSoFar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, result:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getNBestForWordIfBetterMatch(Ljava/util/Vector;Ljava/lang/String;[Ljava/lang/String;I[Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getNumParseGroups()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public declared-synchronized getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    .registers 3

    .prologue
    .line 41
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_1a

    move-result v0

    if-eqz v0, :cond_10

    .line 42
    :cond_d
    const/4 v0, 0x0

    .line 43
    :goto_e
    monitor-exit p0

    return-object v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 41
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParseGroups()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    return-object v0
.end method

.method public declared-synchronized getParseType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 48
    invoke-virtual {p0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->getParseGroup()Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->getParseType()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_14

    move-result-object v0

    .line 51
    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    const-string v0, ""
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_14

    goto :goto_f

    .line 47
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTagResults()Lcom/vlingo/client/core/recognizer/results/RecResults;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->access$000(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;)Lcom/vlingo/client/core/recognizer/results/RecResults;

    move-result-object v0

    return-object v0
.end method

.method public getUttResults()Lcom/vlingo/client/core/recognizer/results/RecResults;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/results/RecResults;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isParseGroupsEmpty()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method onParseGroup(FLjava/lang/String;I)V
    .registers 6
    .parameter "conf"
    .parameter "parseType"
    .parameter "num"

    .prologue
    .line 156
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;-><init>(FLjava/lang/String;ILcom/vlingo/client/core/recognizer/results/TaggedResults$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curParseGroup:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    .line 157
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curParseGroup:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method onTag(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 166
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/recognizer/results/TaggedResults$1;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    .line 167
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curParseGroup:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    #getter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->tags:Ljava/util/Vector;
    invoke-static {v0}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->access$300(Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method onTagList(I)V
    .registers 3
    .parameter "num"

    .prologue
    .line 146
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    .line 147
    return-void
.end method

.method onTagResults(Lcom/vlingo/client/core/recognizer/results/RecResults;)V
    .registers 3
    .parameter "tagResults"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->curTag:Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;

    #setter for: Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->tagResults:Lcom/vlingo/client/core/recognizer/results/RecResults;
    invoke-static {v0, p1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;->access$002(Lcom/vlingo/client/core/recognizer/results/TaggedResults$Tag;Lcom/vlingo/client/core/recognizer/results/RecResults;)Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 176
    return-void
.end method

.method onUttResults(Lcom/vlingo/client/core/recognizer/results/RecResults;)V
    .registers 2
    .parameter "uttResults"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    .line 139
    return-void
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .prologue
    .line 233
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    if-nez v1, :cond_7

    .line 234
    const-string v1, ""

    .line 249
    :goto_6
    return-object v1

    .line 235
    :cond_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<Alternates guttid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    iget-object v2, v2, Lcom/vlingo/client/core/recognizer/results/RecResults;->guttid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->serializeWordList(Ljava/lang/StringBuffer;Lcom/vlingo/client/core/recognizer/results/RecResults;)V

    .line 242
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->serializeUttList(Ljava/lang/StringBuffer;Lcom/vlingo/client/core/recognizer/results/RecResults;)V

    .line 245
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-static {v0, v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->serializeParseGroups(Ljava/lang/StringBuffer;Ljava/util/Vector;)V

    .line 248
    const-string v1, "</Alternates>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   TaggedResults: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->guttid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, rs:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n      UttResults: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n         UttPhrase:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    if-eqz v5, :cond_6d

    .line 355
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->uttResults:Lcom/vlingo/client/core/recognizer/results/RecResults;

    invoke-virtual {v5}, Lcom/vlingo/client/core/recognizer/results/RecResults;->getPhraseLevel()[Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, uttPhrase:[Ljava/lang/String;
    if-eqz v4, :cond_80

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4e
    array-length v5, v4

    if-ge v0, v5, :cond_80

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n            "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 362
    .end local v0           #i:I
    .end local v4           #uttPhrase:[Ljava/lang/String;
    :cond_6d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    :cond_80
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    if-eqz v5, :cond_ca

    .line 366
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n      ParseGroups "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 368
    .local v3, size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a8
    if-ge v0, v3, :cond_dd

    .line 369
    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/results/TaggedResults;->groups:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;

    .line 370
    .local v1, pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 373
    .end local v0           #i:I
    .end local v1           #pg:Lcom/vlingo/client/core/recognizer/results/TaggedResults$ParseGroup;
    .end local v3           #size:I
    :cond_ca
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_dd
    return-object v2
.end method
