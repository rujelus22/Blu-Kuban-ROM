.class public Lcom/google/googlenav/ui/wizard/D;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# static fields
.field private static c:Ljava/util/List;

.field private static i:Ljava/util/List;

.field private static j:Ljava/util/List;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/Set;

.field private k:Lcom/google/googlenav/ui/wizard/E;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->D()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->E()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    .line 53
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->F()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/D;->j:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 96
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->A()V

    .line 97
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->B()V

    .line 98
    return-void
.end method

.method private A()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    .line 199
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->F:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 200
    const-string v0, "PLACES_CUSTOM_CATEGORIES"

    invoke-static {v0, v1}, LaT/d;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 202
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 203
    const/16 v0, 0x57

    const-string v3, "n"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_32

    .line 206
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 208
    :cond_32
    return-void
.end method

.method private B()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->b:Ljava/util/Set;

    .line 214
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 215
    const-string v0, "PLACES_HIDDEN_CATEGORIES"

    invoke-static {v0, v1}, LaT/d;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 216
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 217
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v2, :cond_2b

    .line 218
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/D;->b:Ljava/util/Set;

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 220
    :cond_2b
    return-void
.end method

.method private C()Ljava/util/List;
    .registers 5

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/D;->f()Ljava/util/List;

    move-result-object v0

    .line 279
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 281
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 284
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/google/googlenav/ui/wizard/D;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 286
    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->j:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    .line 287
    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    .line 290
    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    .line 291
    return-object v0
.end method

.method private static D()Ljava/util/List;
    .registers 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x397

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x391

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x38e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x38d

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v5}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    return-object v0
.end method

.method private static E()Ljava/util/List;
    .registers 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 336
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x392

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x38c

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x393

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4, v5}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x394

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x396

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x39a

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-object v0
.end method

.method private static F()Ljava/util/List;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 355
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x395

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x38f

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Lcom/google/googlenav/ui/wizard/F;

    const/16 v2, 0x398

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-direct {v1, v2, v4, v3}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/bb;)V
    .registers 3
    .parameter

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->hide()V

    .line 171
    :cond_11
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 172
    return-void
.end method

.method private static a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 298
    iget-object v2, v0, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 302
    :cond_1c
    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->k:Lcom/google/googlenav/ui/wizard/E;

    if-eqz v0, :cond_b

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->k:Lcom/google/googlenav/ui/wizard/E;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/E;->g()V

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_17

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 151
    :cond_17
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/D;->a()V

    .line 152
    return-void
.end method

.method public static i()V
    .registers 1

    .prologue
    .line 365
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->D()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    .line 366
    invoke-static {}, Lcom/google/googlenav/ui/wizard/D;->E()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    .line 367
    return-void
.end method

.method private y()V
    .registers 6

    .prologue
    .line 179
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->F:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 180
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 181
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_21

    .line 182
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    .line 184
    :cond_21
    const-string v0, "PLACES_CUSTOM_CATEGORIES"

    invoke-static {v0, v2}, LaT/d;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 185
    return-void
.end method

.method private z()V
    .registers 5

    .prologue
    .line 188
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 190
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_d

    .line 192
    :cond_22
    const-string v0, "PLACES_HIDDEN_CATEGORIES"

    invoke-static {v0, v1}, LaT/d;->b(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 193
    return-void
.end method


# virtual methods
.method public a(LZ/a;)I
    .registers 4
    .parameter

    .prologue
    .line 228
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 229
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/D;->h()V

    .line 231
    :cond_b
    const/4 v0, 0x3

    return v0
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 236
    const/4 v0, 0x3

    return v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/E;)V
    .registers 4
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/D;->k:Lcom/google/googlenav/ui/wizard/E;

    .line 164
    new-instance v0, Lcom/google/googlenav/ui/wizard/a;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->C()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/a;-><init>(Lcom/google/googlenav/ui/wizard/D;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Lcom/google/googlenav/ui/view/android/bb;)V

    .line 165
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/F;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x57

    const/4 v2, 0x1

    .line 114
    iget-boolean v0, p1, Lcom/google/googlenav/ui/wizard/F;->a:Z

    if-eqz v0, :cond_20

    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 116
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/D;->a(Z)V

    .line 117
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->y()V

    .line 118
    const-string v0, "rm"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_1f
    return-void

    .line 122
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->b:Ljava/util/Set;

    iget v1, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/wizard/D;->a(Z)V

    .line 124
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->z()V

    .line 125
    const-string v0, "hdn"

    iget v1, p1, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method a(Lcom/google/googlenav/ui/wizard/F;Lcom/google/googlenav/ui/wizard/E;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 158
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/D;->k:Lcom/google/googlenav/ui/wizard/E;

    .line 159
    new-instance v0, Lcom/google/googlenav/ui/wizard/hE;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/wizard/hE;-><init>(Lcom/google/googlenav/ui/wizard/D;Lcom/google/googlenav/ui/wizard/F;)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Lcom/google/googlenav/ui/view/android/bb;)V

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const/16 v0, 0x57

    const-string v1, "a"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Z)V

    .line 136
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/D;->y()V

    .line 137
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 105
    :cond_9
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/D;->k:Lcom/google/googlenav/ui/wizard/E;

    .line 110
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 111
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Z)V

    .line 141
    return-void
.end method

.method public f()Ljava/util/List;
    .registers 8

    .prologue
    .line 243
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    sget-object v0, Lcom/google/googlenav/ui/wizard/D;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 246
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/D;->b:Ljava/util/Set;

    iget v4, v0, Lcom/google/googlenav/ui/wizard/F;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 247
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 250
    :cond_36
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/D;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    new-instance v5, Lcom/google/googlenav/ui/wizard/F;

    const/4 v6, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {v5, v0, v6, v1}, Lcom/google/googlenav/ui/wizard/F;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_3e

    .line 254
    :cond_57
    return-object v3
.end method

.method public g()Ljava/util/List;
    .registers 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/D;->f()Ljava/util/List;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/F;

    .line 265
    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/F;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 268
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    sget-object v2, Lcom/google/googlenav/ui/wizard/D;->i:Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/wizard/D;->a(Ljava/util/Set;Ljava/util/List;Ljava/util/List;)V

    .line 270
    return-object v0
.end method
