.class public Lcom/google/googlenav/ui/wizard/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/ui/wizard/A;


# instance fields
.field private final b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 154
    new-instance v0, Lcom/google/googlenav/ui/wizard/A;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    sput-object v0, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    return-void
.end method

.method private b(I)Lcom/google/googlenav/ui/wizard/A;
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/A;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 178
    return-void
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 219
    const/4 v1, -0x1

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 221
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_1f

    .line 222
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/z;->b(I)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v3

    if-ne v3, p1, :cond_1c

    .line 228
    :goto_14
    if-ltz v0, :cond_1b

    .line 229
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    .line 231
    :cond_1b
    return-void

    .line 221
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1f
    move v0, v1

    goto :goto_14
.end method

.method public a(Lcom/google/googlenav/ui/wizard/A;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 240
    if-nez p1, :cond_5

    .line 294
    :cond_4
    :goto_4
    return-void

    .line 243
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    .line 244
    if-eqz v0, :cond_4

    .line 252
    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/16 v1, 0x8

    if-eq v0, v1, :cond_35

    const/4 v1, 0x7

    if-eq v0, v1, :cond_35

    const/16 v1, 0x22

    if-eq v0, v1, :cond_35

    const/16 v1, 0x21

    if-eq v0, v1, :cond_35

    const/16 v1, 0x23

    if-eq v0, v1, :cond_35

    const/16 v1, 0x25

    if-eq v0, v1, :cond_35

    const/16 v1, 0x26

    if-eq v0, v1, :cond_35

    const/4 v1, 0x6

    if-eq v0, v1, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    if-eq v0, v2, :cond_35

    const/16 v1, 0x11

    if-ne v0, v1, :cond_38

    .line 283
    :cond_35
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/z;->a(I)V

    .line 286
    :cond_38
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_58

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The back action stack growing too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_58
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Lcom/google/googlenav/ui/wizard/A;
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 193
    sget-object v0, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    .line 196
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/z;->b(I)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    goto :goto_8
.end method

.method public d()Lcom/google/googlenav/ui/wizard/A;
    .registers 4

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/z;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 207
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 209
    :cond_17
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/z;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 300
    if-lez v0, :cond_15

    .line 301
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_15
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/z;->b(I)Lcom/google/googlenav/ui/wizard/A;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 305
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
